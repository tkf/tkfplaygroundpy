PROJECT = tkfplaygroundpy
TOPMODULE = src/$(PROJECT)/__init__.py

include opt/clean.mk
include opt/inject-readme.mk
include opt/pypi.mk
include opt/tox.mk

pre-dist: check-readme
