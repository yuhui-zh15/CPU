# *uCore* Build Guide

> Status: Draft
>
> Last Modified: 2017/11/05

## Prerequisites 

1. ###### Recommended OS:

   ```sh
   Ubuntu 16.04 x64
   ```
   NOTE that a 32-bit system could give rise to some weird building failures. 

2. ###### Install GCC for MIPS:

   Download `./mips-2012.03-64-mips-sde-elf.bin` from https://sourcery.mentor.com/GNUToolchain/release2189, or from the `tools` branch:

   ```sh
   $ ./mips-2012.03-64-mips-sde-elf.bin
   ```
   Then follow the popup GUI step-by-step (Just click "Next" all the time).

   If the installation finished with success, you should be able to see the expected output (NOTE that it's strongly recommended to use version`4.6.3`):

   ```sh
   $ mips-sde-elf-gcc --version
   mips-sde-elf-gcc (Sourcery CodeBench Lite 2012.03-64) 4.6.3
   Copyright (C) 2011 Free Software Foundation, Inc.
   This is free software; see the source for copying conditions.  There is NO
   warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
   ```

   (If any weird installation failure occurs, see Appendix B for details)

3. ###### Select a workspace:

   Let's assume your workspace directory for building and simulation is `AAA`.

4. ###### Download source of `ucore-thumips` and `qemu-thumips`:

   ```sh
   $ cd AAA
   $ git clone https://github.com/chyh1990/ucore-thumips	 # In *ucore-fix* branch
   $ git clone https://github.com/chyh1990/QEMU-thumips
   ```


## Building uCore

1. ###### Go to the directory:

   ```sh
   $ cd ucore-thumips
   ```

2. ###### Modify `Makefile`:

   ```sh
   $ vim Makefile
   ```

   Uncomment line 9, then comment line 10. 

   It should be like this:

   ```makefile
   GCCPREFIX:=mips-sde-elf-
   #GCCPREFIX ?= /home/guest/cpu/build-gcc/mips_gcc/bin/mips-sde-elf-
   ```

3. ###### Make.

   ```sh
   $ make
   ```

   (If any weird building failure occurs, see Appendix B for details)

## Building QEMU

1. ###### Go to the directory:

   ```sh
   $ cd qemu-thumips
   ```

2. ###### Configure qemu:

   ```sh
   $ ./configure --target-list=mipsel-softmmu
   ```

3. ###### Make.

   ```sh
   $ make
   ```
   (If any weird building failure occurs, see Appendix B for details)

## Appendix A

- The installer for `mips-sde-elf-gcc`: https://sourcery.mentor.com/GNUToolchain/release2189
- Git repository for `ucore-thumips`: https://github.com/chyh1990/ucore-thumips
- Git repository for `qemu-thumips`: https://github.com/chyh1990/QEMU-thumips

## Appendix B

### FAQ

1. ###### `mips-sde-elf-gcc` command not found after installing MIPS GCC:

   Try manually adding it to your `PATH`: Assume your installation directory for MIPS GCC is `BBB`, add the following line to `~/.bashrc`:

   ```sh
   export PATH="BBB/bin:$PATH"
   ```
   Then restart the terminal, or enter

   ```sh
   $ source ~/.bashrc
   ```

2. ######uCore building failure:

   For the author, the build used to fail because of an assertion in `tools/mksfs.c`, which requires `sizeof(off_t)` to be `8`. This problem was resolved by switching to a 64-bit Ubuntu virtual machine.

3. ######qemu building failure:

   First, make sure that the `configure` step is not skipped.

   Second, for the author, the build used to fail because of an linking error in`qemu-timer.o`, caused by undefined reference to `timer_gettime`, `timer_settime`, `timer_create`, `timer_delete`, etc. 

   This was resolved by modifying 2 files:  `Makefile` and `Makefile.target`:

   - **In `Makefile`, modify line 37:**

     ```makefile
     # LIBS+=-lz $(LIBS_TOOLS)
     LIBS+=-lz -lrt -lm $(LIBS_TOOLS)
     ```

   - **In `Makefile.target`, modify line 37:**

     ```makefile
     # LIBS+=-lz
     LIBS+=-lz -lrt -lm
     ```

     ​

   ​