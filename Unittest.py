import unittest
from test import payment_model_one
from test import payment_model_two


class Test_payment_model_one(unittest.TestCase):

    def test_calculate_amount(self):
        self.assertAlmostEqual(payment_model_one(1), 0.5)


class Test_payment_model_two(unittest.TestCase):

    def test_calculate_amount(self):
        self.assertAlmostEqual(payment_model_two(1), 1.5)
