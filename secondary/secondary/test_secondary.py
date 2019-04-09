import unittest

from secondary import secondary


class TestMain(unittest.TestCase):
    def test_secondary_returns_hello(self):
        self.assertEqual(secondary(), 'Second')

    def test_secondary_doesnt_say_first(self):
        self.assertNotEqual(secondary(), 'First!')


if __name__ == "__main__":
    unittest.main()
