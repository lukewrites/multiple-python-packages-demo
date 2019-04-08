import unittest

from main import main


class TestMain(unittest.TestCase):
    def test_main_returns_hello(self):
        self.assertEqual(main(), 'Hello')

    def test_main_doesnt_say_bye(self):
        self.assertNotEqual(main(), 'Bye')


if __name__ == "__main__":
    unittest.main()
