import re
import sys
from preprocessor import Preprocessor


OP_SPECIAL = '000000'
def zeros(num_zeros):
    return ''.join(['0' for _ in range(num_zeros)])


class Inst:
    def __init__(self, in_specs, out_specs):
        self.in_specs = in_specs
        self.out_specs = out_specs


# op(6) | rs(5) | rt(5) | rd(5) | shamt(5) | funct(6)
R = {
    'ADDU': Inst(in_specs=['rt', 'rs', 'imm'], out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '100001']),
    'MULT': Inst(in_specs=['rt', 'rs'],        out_specs=[OP_SPECIAL, 'rs',     'rt',  zeros(10),     '011000']),
    'SLT':  Inst(in_specs=['rd', 'rs', 'rt'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '101010']),
    'SLTU': Inst(in_specs=['rd', 'rs', 'rt'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '101011']),
    'SUBU': Inst(in_specs=['rd', 'rs', 'rt'],  out_specs=[OP_SPECIAL, 'rd',     'rt', 'rd', zeros(5), '100011']),

    'AND':  Inst(in_specs=['rd', 'rs', 'rt'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '100100']),
    'NOR':  Inst(in_specs=['rd', 'rs', 'rt'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '100111']),
    'OR' :  Inst(in_specs=['rd', 'rs', 'rt'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '100101']),
    'XOR':  Inst(in_specs=['rd', 'rs', 'rt'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '100110']),
    'SLL':  Inst(in_specs=['rd', 'rt', 'sa'],  out_specs=[OP_SPECIAL, zeros(5), 'rt', 'rd', 'sa',     '000000']),
    'SLLV': Inst(in_specs=['rd', 'rt', 'rs'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '000100']),
    'SRA':  Inst(in_specs=['rd', 'rt', 'sa'],  out_specs=[OP_SPECIAL, zeros(5), 'rt', 'rd', 'sa',     '000011']),
    'SRAV': Inst(in_specs=['rd', 'rt', 'rs'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '000111']),
    'SRL':  Inst(in_specs=['rd', 'rt', 'sa'],  out_specs=[OP_SPECIAL, zeros(5), 'rt', 'rd', 'sa',     '000010']),
    'SRLV': Inst(in_specs=['rd', 'rt', 'rs'],  out_specs=[OP_SPECIAL, 'rs',     'rt', 'rd', zeros(5), '000110']),
}

# op(6) | rs(5) | rt(5) | imm(16)
I = {
    'ADDIU':Inst(in_specs=['rt', 'rs', 'imm'], out_specs=['001001', 'rs',     'rt', 'imm']),
    'SLTI': Inst(in_specs=['rt', 'rs', 'imm'], out_specs=['001010', 'rs',     'rt', 'imm']),
    'SLTIU':Inst(in_specs=['rt', 'rs', 'imm'], out_specs=['001011', 'rs',     'rt', 'imm']),    

    'ANDI': Inst(in_specs=['rt', 'rs', 'imm'], out_specs=['001100', 'rs',     'rt', 'imm']),
    'LUI':  Inst(in_specs=['rt', 'imm'],       out_specs=['001111', zeros(5), 'rt', 'imm']),
    'ORI':  Inst(in_specs=['rt', 'rs', 'imm'], out_specs=['001101', 'rs',     'rt', 'imm']),
    'XORI': Inst(in_specs=['rt', 'rs', 'imm'], out_specs=['001110', 'rs',     'rt', 'imm'])
}

# op(6) | rs(5) | rt(5) | offset(16)
B = {
    'BEQ':  Inst(in_specs=['rs', 'rt', 'addr_b'], out_specs=['000100', 'rs', 'rt',     'addr_b']),
    'BGEZ': Inst(in_specs=['rs', 'addr_b'],       out_specs=['000001', 'rs', '00001',  'addr_b']),
    'BGTZ': Inst(in_specs=['rs', 'addr_b'],       out_specs=['000111', 'rs', zeros(5), 'addr_b']),
    'BLEZ': Inst(in_specs=['rs', 'addr_b'],       out_specs=['000110', 'rs', zeros(5), 'addr_b']),
    'BLTZ': Inst(in_specs=['rs', 'addr_b'],       out_specs=['000001', 'rs', zeros(5), 'addr_b']),
    'BNE':  Inst(in_specs=['rs', 'rt', 'addr_b'], out_specs=['000101', 'rs', 'rt',     'addr_b'])
}

# op(6) | instr_index(26)
J = {
    'J':    Inst(in_specs=['addr_j'],      out_specs=['000010',   'addr_j']),
    'JAL':  Inst(in_specs=['addr_j'],      out_specs=['000011',   'addr_j']),
    'JALR': Inst(in_specs=['rd', 'rs'], out_specs=[OP_SPECIAL, 'rs', zeros(5), 'rd',     zeros(5), '001001']), #  rd=31?
    'JR':   Inst(in_specs=['rs'],       out_specs=[OP_SPECIAL, 'rs', zeros(5), zeros(5), zeros(5), '001000'])
}

# op(6) | base(5) | rt(5) | offset(16)
LS = {
    'LB':   Inst(in_specs=['rt', 'imm', 'rs'], out_specs=['100000', 'rs', 'rt', 'imm']),
    'LBU':  Inst(in_specs=['rt', 'imm', 'rs'], out_specs=['100100', 'rs', 'rt', 'imm']),
    'LW':   Inst(in_specs=['rt', 'imm', 'rs'], out_specs=['100011', 'rs', 'rt', 'imm']),
    'SB':   Inst(in_specs=['rt', 'imm', 'rs'], out_specs=['101000', 'rs', 'rt', 'imm']),
    'SW':   Inst(in_specs=['rt', 'imm', 'rs'], out_specs=['101011', 'rs', 'rt', 'imm'])
}

# op(6) | rs(5) | 00000 | rd(5) | 00000 | func(5)
M = {
    'MFHI': Inst(in_specs=['rd'], out_specs=[OP_SPECIAL, zeros(5), zeros(5),    'rd',  zeros(5), '010000']),
    'MFLO': Inst(in_specs=['rd'], out_specs=[OP_SPECIAL, zeros(5), zeros(5),    'rd',  zeros(5), '010010']),
    'MTHI': Inst(in_specs=['rs'], out_specs=[OP_SPECIAL, 'rs',     zeros(5), zeros(5), zeros(5), '010001']),
    'MTLO': Inst(in_specs=['rs'], out_specs=[OP_SPECIAL, 'rs',     zeros(5), zeros(5), zeros(5), '010011'])
}

NOP = {
    'NOP': Inst(in_specs=[], out_specs=[zeros(32)])
}

def find_inst(op):
    for dic in (R, I, B, J, LS, M, NOP):
        if op in dic.keys(): return dic[op]   


def reg2bin(reg):
    # reg = '$1'
    return '{:05b}'.format(int(reg[1:]))


def imm2bin(imm, num_bits, arith_right_shift=0):
    # imm = '0x1100'
    return ('{:0' + str(num_bits) + 'b}').format(int(imm, 16) >> arith_right_shift)


def arg2bin(arg, spec):
    if spec == 'rs' or spec == 'rt' or spec == 'rd':
        return reg2bin(arg)
    elif spec == 'sa':
        return imm2bin(arg, 5)
    elif spec == 'imm':
        return imm2bin(arg, 16)
    elif spec == 'addr_b':
        return imm2bin(arg, 16, arith_right_shift=2)
    elif spec == 'addr_j':
        return imm2bin(arg, 26, arith_right_shift=2)
    else:
        return spec    


def inst2hex(inst_in):
    args = [arg for arg in re.split(r'[,\s\(\)]', inst_in) if len(arg) > 0]

    op = args[0].upper()
    inst = find_inst(op)

    assert len(inst.in_specs) == len(args) - 1, inst_in
    spec2arg = dict(zip(inst.in_specs, args[1:]))

    inst_out = [arg2bin(spec2arg.get(spec, None), spec) for spec in inst.out_specs]
    return str('{:08x}'.format(int(''.join(inst_out), 2)))


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('Usage: python3 assembler.py [mips32.S]')
        sys.exit(1)
    
    in_filename = sys.argv[1]
    out_filename = in_filename[:-2] + '.data'

    with open(in_filename, 'r') as fin, open(out_filename, 'w') as fout:
        in_lines = Preprocessor().process(fin.readlines())
        for inst_in in in_lines:
            inst_out = inst2hex(inst_in)
            assert len(inst_out) == 8, inst_in + ' => ' + inst_out
            print(inst_out, file=fout)

        