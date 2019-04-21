from pkg_resources import get_distribution

from .. import __version__


def test_always_pass():
    pass


def test_version():
    assert get_distribution("tkfplaygroundpy").version == __version__
