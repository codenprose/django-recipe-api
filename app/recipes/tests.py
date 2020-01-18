from django.test import TestCase

from .calc import add, subtract


class CalcTests(TestCase):

    def test_add_numbers(self):
        """Test that values are added and retured"""
        self.assertEqual(add(2, 8), 10)

    def test_subtract_numbers(self):
        """Test that values are subtracted and returned"""
        self.assertEqual((subtract(5, 10)), 5)