Development
===========

Special branches
----------------

``release/test``
    Push to this branch triggers the deploy to `test.pypi.org` if all
    the tests are passed.  Uploaded package is tested in the next
    stage.

``upload/test``
    Push to this branch triggers the test that would be run for the
    final stage for ``release/test``.  Handy for just testing this
    stage.

See `.travis.yml`.
