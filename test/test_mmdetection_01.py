import unittest
from ultralytics import YOLO
from yolo.predict import Predict
import cv2
import pandas as pd
from mmdet.apis import init_detector, inference_detector
class TestMMDetection(unittest.TestCase):

    #
    def test_predict_01(self):
        """Try https://mmdetection.readthedocs.io/en/v3.0.0/user_guides/inference.html.
        """
        config_file = 'rtmdet_tiny_8xb32-300e_coco.py'
        checkpoint_file = 'rtmdet_tiny_8xb32-300e_coco_20220902_112414-78e30dcc.pth'
        model = init_detector(config_file, checkpoint_file, device='cuda:0')  # device='cpu' or device='cuda:0'
        inference_detector(model, '../data/AC_(36)_R97.jpg')
        print('Done')

if __name__ == '__main__':
    unittest.main()