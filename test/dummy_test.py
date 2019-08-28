import pytest
from src.dummy import my_method

def test_the_method():
    assert my_method() == 1
