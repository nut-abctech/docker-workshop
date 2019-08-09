# colour vars
NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m

VENV_CMD=. venv/bin/activate

all: venv install tests run

venv:
	@if [ ! -e "venv/bin/activate_this.py" ] ; then virtualenv --clear venv ; fi

install: venv
	$(VENV_CMD) && pip install -U -r requirements.txt --no-cache

tests: venv
	$(VENV_CMD) && nose2 -v

run: venv
	$(VENV_CMD) && python3 -m run
	
.PHONY: venv install tests all
