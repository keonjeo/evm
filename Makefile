.PHONY: install clean source

# How to use this Makefile?
# It's only for local development to remove the old EVM_ROOT, and install the new EVM_ROOT, and then make source it.
# make clean && make install && make source

install:
	@make clean
	@echo ">>>>>>  Install evm tool into ~/.evm directory  <<<<<<<"
	@./evm-installer dev

clean:
	@if [ -d ~/.evm ]; then result1=`ls -A  ~/.evm/erlang_tars`; fi;
	@if [  -n ${result1} ]; then echo ">>>>>>  Backup ~/.evm/erlang_tars directory  <<<<<<<"; fi;
	@if [ -n ${result1} ]; then \
		if [ ! -d ~/.evm_erlang_tars.back ]; then \
			cp -rp ~/.evm/erlang_tars ~/.evm_erlang_tars.back; \
		fi; \
	fi;

	@if [ -d ~/.evm ]; then result2=`ls -A  ~/.evm/erlang_versions`; fi
	@if [ -n ${result2} ]; then echo ">>>>>>  Backup ~/.evm/erlang_versions directory  <<<<<<<"; fi
	@if [ -n ${result2} ]; then \
		if [ ! -d ~/.evm_erlang_versions.back ]; then \
			cp -rp ~/.evm/erlang_versions ~/.evm_erlang_versions.back; \
		fi; \
	fi;

	@if [ -d ~/.evm ]; then echo ">>>>>>  Remove ~/.evm directory  <<<<<<<"; fi
	@if [ -d ~/.evm ]; then rm -rf ~/.evm; fi

# How to fix `/bin/sh: 1: source: not found` issue?
# ls -l `which sh`
# sudo dpkg-reconfigure dash #选择No
source:
	@source ~/.evm/scripts/evm