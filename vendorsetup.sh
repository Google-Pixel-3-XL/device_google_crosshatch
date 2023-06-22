echo 'Starting to clone stuffs needed for your device. Please Wait...'
echo '1..'
echo '2..'
echo '3..'

# Remove Source
rm -rf device/google/crosshatch
rm -rf vendor/google/blueline
rm -rf vendor/google/crosshatch
rm -rf hardware/qcom/sdm845/display
rm -rf hardware/qcom/sdm845/media

# Tree Dependencies
git clone --depth=1 https://github.com/Google-Pixel-3-XL/device_google_crosshatch.git -b xdroid device/google/crosshatch
git clone --depth=1 https://github.com/Google-Pixel-3-XL/vendor_google_crosshatch.git -b thirteen vendor/google/crosshatch
git clone --depth=1 https://github.com/Google-Pixel-3-XL/vendor_google_blueline.git -b thirteen vendor/google/blueline

#Hals
git clone --depth=1 https://github.com/Google-Pixel-3-XL/hardware_qcom_sdm845_media.git -b thirteen hardware/qcom/sdm845/media
git clone --depth=1 https://github.com/Google-Pixel-3-XL/hardware_qcom_sdm845_display.git -b thirteen hardware/qcom/sdm845/display

echo 'Verification...'
echo 'OK'
echo 'Completed cloning your trees, thankyou. proceed with lunch Command'