OCTAVE=octave-cli
MATLAB=`which matlab`

all: check-octave check-matlab

check-octave:
	TEST_DIR="$(PWD)/test" \
		$(OCTAVE) --no-init-file --silent --no-history --path "$(PWD)/src" runtest.m

check-matlab:
	@$(MATLAB) -nosplash -nodisplay -r "cd test; runtest; quit"
