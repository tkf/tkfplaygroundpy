.PHONY:clean clean-pycache

clean: clean-pycache
	rm -rf src/*.egg-info *.egg-info .tox MANIFEST

clean-pycache:
	test -d src && \
		find src -name __pycache__ -o -name '*.pyc' -print0 \
		| xargs --null rm -rf
	rm -rf *.pyc __pycache__
