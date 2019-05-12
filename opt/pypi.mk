.PHONY: dist pre-dist test-upload upload

## Upload to PyPI
dist: pre-dist
	rm -rf dist/
	python setup.py sdist
	python setup.py bdist_wheel

test-upload:
	$(MAKE) TWINE_OPTS="--repository-url https://test.pypi.org/legacy/" upload

upload: dist
	twine upload $(TWINE_OPTS) dist/*
