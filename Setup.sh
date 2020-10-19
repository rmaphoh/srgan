#SET UP FOR SRGAN
conda create -n srgan python=3.5
source activate srgan

#CLONE SRGAN REPO
git clone https://github.com/rmaphoh/srgan.git
cd srgan

#INSTALL PACKAGES
pip install -r requirements.txt

#DOWNLOAD DATA SETS
wget -nc -P DIV2K/ https://data.vision.ee.ethz.ch/cvl/DIV2K/validation_release/DIV2K_test_LR_bicubic_X4.zip
wget -nc -P DIV2K/ https://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_HR.zip
wget -nc -P DIV2K/ https://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X4.zip
wget -nc -P DIV2K/ https://data.vision.ee.ethz.ch/cvl/DIV2K/validation_release/DIV2K_valid_HR.zip
wget -nc -P DIV2K/ https://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X4.zip

unzip -q DIV2K/DIV2K_test_LR_bicubic_X4.zip -d DIV2K/
unzip -q DIV2K/DIV2K_train_HR.zip -d DIV2K/
unzip -q DIV2K/DIV2K_train_LR_bicubic_X4.zip -d DIV2K/
unzip -q DIV2K/DIV2K_valid_HR.zip -d DIV2K/
unzip -q DIV2K/DIV2K_valid_LR_bicubic_X4.zip -d DIV2K/

#DOWNLOAD PRETRAINED MODEL
gdown https://drive.google.com/uc?id=1lEq3m6IFj-zb12YlLtz_L7nIL4p-6jVQ

mv ./vgg19.npy ./models/


