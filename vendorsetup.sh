echo 'Starting to clone stuffs needed for your device. Please Wait...'
echo '1..'
echo '2..'
echo '3..'

rm -rf device/google/crosshatch
rm -rf kernel/google/bluecross
rm -rf vendor/google/blueline
rm -rf vendor/google/crosshatch
rm -rf hardware/qcom/sdm845/display
rm -rf hardware/qcom/sdm845/media
rm -rf hardware/qcom/wlan
rm -rf hardware/lineage/compat
rm -rf prebuilts/clang/kernel/linux-x86/clang-r416183b

# Tree Dependencies
git clone --depth=1 https://github.com/Google-Pixel-3-XL/device_google_crosshatch.git -b elixir device/google/crosshatch
git clone --depth=1 https://github.com/Google-Pixel-3-XL/kernel_google_bluecross.git -b elixir kernel/google/bluecross
git clone --depth=1 https://github.com/Google-Pixel-3-XL/vendor_google_crosshatch.git -b fourteen vendor/google/crosshatch
git clone --depth=1 https://github.com/Google-Pixel-3-XL/vendor_google_blueline.git -b fourteen vendor/google/blueline

#Hals
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_sdm845_media.git -b lineage-21.0 hardware/qcom/sdm845/media
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_sdm845_display.git -b lineage-21.0 hardware/qcom/sdm845/display
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git -b lineage-21.0 hardware/lineage/compat
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_wlan.git -b lineage-21.0 hardware/qcom/wlan
git clone --depth=1 https://github.com/LineageOS/android_prebuilts_clang_kernel_linux-x86_clang-r416183b.git -b lineage-20.0 prebuilts/clang/kernel/linux-x86/clang-r416183b

echo 'Verification...'
echo 'OK'
echo 'Completed cloning your trees, thankyou. proceed with lunch Command'