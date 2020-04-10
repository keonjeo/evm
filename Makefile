.PHONY: install clean source

# How to use this Makefile?
# It's only for local development to remove the old EVM_ROOT, and install the new EVM_ROOT, and then make source it.
# make clean && make install && make source

install:
	@make clean
	@echo ">>>>>>  Install evm tool into ~/.evm directory  <<<<<<<"
	@./evm-install dev

clean:
	@if [ -d ~/.evm/archive ]; then \
		echo ">>>>>>  Backup ~/.evm/archive directory  <<<<<<<"; \
		if [ ! -d ~/.evm_archive.back ]; then \
			mv ~/.evm/archive ~/.evm_archive.back; \
		fi; \
	fi;
	@if [ -d ~/.evm ]; then \
		echo ">>>>>>  Remove ~/.evm directory  <<<<<<<"; \
		rm -rf ~/.evm; fi

# How to fix `/bin/sh: 1: source: not found` issue?
# ls -l `which sh`
# sudo dpkg-reconfigure dash #选择No
source:
	@source ~/.evm/scripts/evm