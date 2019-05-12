.PHONY: test* coverage*

TOXENVS ?= py

## Testing
test: inject-readme
	tox

# Run tox with coverage report
test-cov: $(patsubst %, test-cov-%, $(TOXENVS))

test-cov-%: inject-readme
	tox -e $* -- --cov $(PROJECT)
	$(MAKE) coverage-report-$*

coverage-report: $(patsubst %, coverage-report-%, $(TOXENVS))

coverage-report-%:
	.tox/$*/bin/coverage combine .coverage
	.tox/$*/bin/coverage report
	.tox/$*/bin/coverage html --directory $(PWD)/.tox/$*/tmp/cov_html

# TODO: Fix/improve or remove tox-related targets
