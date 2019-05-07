from packaging.version import Version  # type: ignore
from pkg_resources import get_distribution

from .. import __version__


def f(x: int) -> int:
    return x


# def g(x: int) -> str:
#     return x


def test_always_pass():
    pass


def test_version():
    assert Version(get_distribution("tkfplaygroundpy").version) == Version(__version__)
