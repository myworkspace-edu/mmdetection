import os
import argparse
import torch

def parse_argument():
    parser = argparse.ArgumentParser()
    parser.add_argument("--imgdir", type=str, default="testdata", help="Directory of images")
    parser.add_argument("--config", type=str, default="configs/app.json", help="Path to configuration file")
    parser.add_argument('--device', type=str, default="0", help='Index of GPU device')
    parser.add_argument('--debug', action='store_true', default=False, help='Enable debug mode')
    parser.add_argument('--logdir', type=str, default='logs', help='Log dir')
    parser.add_argument('--save', type=str, default='', help='Predictive file')

    args = parser.parse_args()

    return args

def main():
    # Parse arguments
    args = parse_argument()

    # setup device
    os.environ['CUDA_VISIBLE_DEVICES'] = args.device
    use_cuda = False if args.device == '-1' else True

    print(f'use_cuda={use_cuda}')
    print('torch.cuda.is_available()=', torch.cuda.is_available())
    print('torch.cuda.device_count()=', torch.cuda.device_count())
    for i in range(torch.cuda.device_count()):
        print(f'torch.cuda.get_device_name({i}):', torch.cuda.get_device_name(i))

if __name__ == "__main__":
    with torch.no_grad():
        main()