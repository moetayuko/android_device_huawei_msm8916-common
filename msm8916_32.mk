LOCAL_PATH := device/huawei/msm8916-common

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# media_profiles and media_codecs xmls for 8916
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles_8916.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_8916.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_8939.xml:system/etc/media_codecs_8939.xml \
    $(LOCAL_PATH)/media/media_codecs_8929.xml:system/etc/media_codecs_8929.xml

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

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

#wlan driver
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/WCNSS_wlan_dictionary.dat:persist/WCNSS_wlan_dictionary.dat \
    $(LOCAL_PATH)/WCNSS_qcom_wlan_nv.bin:persist/WCNSS_qcom_wlan_nv.bin

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

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapminfree=6m \
    dalvik.vm.heapstartsize=14m

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

PRODUCT_BOOT_JARS += \
    qcmediaplayer \
    WfdCommon \
    oem-services \
    qcom.fmradio \
    org.codeaurora.Performance \
    tcmiface
