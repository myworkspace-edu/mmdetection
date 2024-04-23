import unittest
import torch

class TestImageDetection(unittest.TestCase):

    def test_cuda(self):
        # setup device
        self.assertTrue(torch.cuda.is_available())
        self.assertGreater(torch.cuda.device_count(), 0)

if __name__ == '__main__':
    unittest.main()