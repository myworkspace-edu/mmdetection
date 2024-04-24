@ECHO OFF
rem Create virtual environment "openmmlab" by conda
call conda create --name python311 python=3.11 -y
rem Remote the virtual environment
rem conda deactivate
rem conda remove -n python311 --all
rem conda remove -n openmmlab --all


rem Active the created virtual environment
conda activate python311

pip install -r requirements.txt

REM Install MMCV v1.7.2, PyTorch 2.1.0 with CUDA 12.1
pip install torch==2.1.0+cu121 torchaudio==2.1.0+cu121 torch==2.1.0+cu121 torchvision -f https://download.pytorch.org/whl/torch_stable.html

REM The latest version of MMCV: v1.7.2. Link: https://github.com/open-mmlab/mmcv/releases/tag/v1.7.2
pip install -U openmim
REM mim install mmcv==1.7.2
mim install mmcv-full==1.7.2
mim install mmengine
mim install mmdet
pip install -U sahi

REM pip install -U openmim
REM mim install mmengine
REM mim install "mmcv>=2.0.0"
REM mim install mmdet
