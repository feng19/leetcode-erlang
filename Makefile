all: compile test

###===================================================================
### build
###===================================================================
.PHONY: co compile

co:compile
compile:
	rebar3 compile

### clean
.PHONY: clean distclean
clean:
	rebar3 clean

distclean:
	rebar3 clean -a

###===================================================================
### test
###===================================================================
.PHONY: test eunit ct testclean

test: epmd
	rebar3 do eunit, cover
	#rebar3 do eunit, ct, cover

eunit: epmd
	rebar3 do eunit -v, cover

ct: epmd
	rebar3 do ct -v, cover

testclean:
	@rm -fr _build/test

###===================================================================
### other
###===================================================================
.PHONY: epmd

epmd:
	@pgrep epmd 2> /dev/null > /dev/null || epmd -daemon || true
