import re

class Preprocessor:
    """
    Preprocessor for assembler.

    Members:
    - `labels`: dict, maps each label to its ADDRESS.

    NOTE: 
    When an inst is converted to binary by assembler, every ADDRESS would be divided by 4 to obtain INDEX.
    When the binary inst is executed by CPU, the INDEX would be multiplied by 4 to obtain ADDRESS.
    This ensures that every ADDRESS fetched by pc_reg would be a multiple of 4, and thus valid.

    To clarify some confusing concepts w.r.t instruction indexing, here are some quick examples:

    .org 0x40   # The following inst's ADDRESS is 0x40 (byte), which equals PC.
                # The following inst's INDEX is 0x10, for each inst consumes 4 bytes.

    LABEL:      # Stands for the following inst's ADDRESS.

    j 0x40      # The next-next inst executed would be at ADDRESS 0x40.
    b 0x40      # The next-next inst executed would be at ADDRESS (current_PC + 4 + signext(0x40))

    j LABEL     # The next-next inst executed would be at LABEL.
    b LABEL     # The next-next inst executed would be at LABEL.

    NOTE that b only supports 16-bit immediate (INDEX) while j supports 26-bit. When a LABEL is provided instead 
    of an immediate, the assembler has to translate it into an immediate. Thus, if the branched LABEL is 
    too far away from the current position, a jump has to be added to proceed that far. This is currently 
    NOT supported by the assembler, for the author is too vegetable and this may introduce bugs...
    """
    def __init__(self):
        self.labels = {}


    def _2s_complement(self, x):
        if x >= 0: return '0x{:04x}'.format(x)
        return str(hex(((abs(x) ^ 0xffff) + 1) & 0xffff)).upper()


    def _process_format(self, in_lines):
        out_lines = []

        for line in in_lines:
            line_formatted = line.strip().upper()
            if line_formatted != '':
                out_lines.append(line_formatted)
        return out_lines


    def _process_org(self, in_lines):
        out_lines = []

        pc = 0
        for line in in_lines:
            if line.startswith('.ORG'):
                org_addr = int(line.split()[-1], 16)
                num_nop_inserted = int((org_addr - pc) / 4)
                for _ in range(num_nop_inserted):
                    out_lines.append('NOP')
                    pc += 4
            else:
                out_lines.append(line)
                if not line.endswith(':'):
                    pc += 4
        return out_lines


    def _process_labels(self, in_lines):
        out_lines = []

        pc = 0
        for line in in_lines:
            if line.endswith(':'):
                label = line[:-1].strip()
                self.labels[label] = pc
            else:
                out_lines.append(line)
                pc += 4
        return out_lines


    def _process_labeled_j_and_b(self, in_lines):
        out_lines = []

        pc = 0
        for line in in_lines:
            if (line.startswith('J') and not line.startswith('JALR') and not line.startswith('JR')) or line.startswith('B'):
                target = re.split(r'[,\s+]', line)[-1]
                try:
                    int(target, 16)
                except:
                    addr = self.labels[target]
                    if line.startswith('J'):
                        line = line.replace(target, self._2s_complement(addr))
                    else:
                        line = line.replace(target, self._2s_complement(addr - pc - 4))
            out_lines.append(line)
            pc += 4
        return out_lines

    
    def process(self, in_lines):
        out_lines = self._process_format(in_lines)
        out_lines = self._process_org(out_lines)
        out_lines = self._process_labels(out_lines)
        out_lines = self._process_labeled_j_and_b(out_lines)
        return out_lines

