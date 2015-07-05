LOCAL_PATH := device/huawei/msm8916-common

$(call inherit-product, vendor/huawei/msm8916-common/msm8916-common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# media_profiles and media_codecs xmls for 8916
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles_8916.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_8916.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_8939.xml:system/etc/media_codecs_8939.xml \
    $(LOCAL_PATH)/media/media_codecs_8929.xml:system/etc/media_codecs_8929.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/mixer_paths_sbc.xml:system/etc/mixer_paths_sbc.xml \
    $(LOCAL_PATH)/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/mixer_paths_skul.xml:system/etc/mixer_paths_skul.xml \
    $(LOCAL_PATH)/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml

# Feature definition files for msm8916
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \

# gps/location secuity configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sec_config:system/etc/sec_config

# GPS config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

#wlan driver
PRODUCT_COPY_FILES += \
    kernel/huawei/msm8916/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/WCNSS_wlan_dictionary.dat:system/etc/wifi/WCNSS_wlan_dictionary.dat \
    $(LOCAL_PATH)/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin

# NFC packages
ifeq ($(TARGET_USES_QCA_NFC),true)
NFC_D := true

PRODUCT_PACKAGES += \
    libnfcD-nci \
    libnfcD_nci_jni \
    nfc_nci.msm8916 \
    NfcDNci \
    Tag \
    com.android.nfc_extras \
    com.android.nfc.helper

# file that declares the MIFARE NFC constant
# Commands to migrate prefs from com.android.nfc3 to com.android.nfc
# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml
endif # TARGET_USES_QCA_NFC

# Screen density
PRODUCT_AAPT_CONFIG := normal

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app \
    com.dsi.ant.antradio_library

# APPOPS_POLICY
PRODUCT_PACKAGES += \
    appops_policy.xml

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8916 \
    audio_policy.msm8916 \
    tinymix \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# CRDA
PRODUCT_PACKAGES += \
    crda \
    regdbdump \
    regulatory.bin \
    linville.key.pub.pem \
    init.crda.sh

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    e2fsck

# FM
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    memtrack.msm8916 \
    hwcomposer.msm8916 \
    libtinyxml

# INIT
PRODUCT_PACKAGES += \
    init.qcom.modem_links.sh \
    init.target.rc \
    init.qti.ims.sh \
    init.qcom.bt.sh \
    hsic.control.bt.sh \
    init.qcom.coex.sh \
    init.qcom.fm.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.rc \
    init.qcom.factory.rc \
    init.qcom.sdio.sh \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.class_main.sh \
    init.qcom.wifi.sh \
    vold.fstab \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qcom.efs.sync.sh \
    ueventd.qcom.rc \
    init.ath3k.bt.sh \
    qca6234-service.sh \
    init.qcom.audio.sh \
    init.mdm.sh \
    init.qcom.uicc.sh \
    fstab.qcom \
    init.qcom.debug.sh \
    init.qcom.zram.sh \
    init.qcom.bms.sh \
    hcidump.sh

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# KEYPAD
PRODUCT_PACKAGES += \
    synaptics_rmi4_i2c.kl \
    synaptics_dsx.kl \
    ft5x06_ts.kl \
    gpio-keys.kl

# OMX
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libmm-omxcore \
    libOmxCore \
    libdivxdrmdecrypt \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVdpp \
    libOmxVenc \
    libOmxVidEnc \
    libstagefrighthw \
    libdashplayer \
    qcmediaplayer

# Power
PRODUCT_PACKAGES += \
    power.msm8916

# Prebuilt library
PRODUCT_PACKAGES += \
    rmt_oeminfo \
    test_diag

# Ril
PRODUCT_PACKAGES += \
    libxml2

# Stk
PRODUCT_PACKAGES += \
    Stk

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# WiFi
PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    wpa_supplicant \
    libwpa_client \
    wcnss_service \
    libwcnss_qmi \
    libQWiFiSoftApCfg \
    libqsap_sdk \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf \
    hostapd \
    hostapd_cli \
    hostapd.conf \
    hostapd.deny \
    hostapd.accept

PRODUCT_BOOT_JARS += \
    qcmediaplayer \
    qcom.fmradio

# System Properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapminfree=6m \
    dalvik.vm.heapstartsize=14m \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.sib16_support=1 \
    ro.frp.pst=/dev/block/bootdevice/by-name/config \
    ro.sf.lcd_density=320

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    camera2.portability.force_api=1
