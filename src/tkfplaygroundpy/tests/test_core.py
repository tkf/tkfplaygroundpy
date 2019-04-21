from pkg_resources import get_distribution
from packaging.version import Version

from .. import __version__


def test_always_pass():
    pass


def test_version():
    assert Version(get_distribution("tkfplaygroundpy").version) == Version(__version__)
