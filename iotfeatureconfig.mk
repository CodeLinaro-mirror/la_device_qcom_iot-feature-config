ifeq ($(TARGET_QCOM_IOT_LOW_RAM), true)
$(call soong_config_set,qcomfeatureconfig,iotlowram,$(TARGET_QCOM_IOT_LOW_RAM))

PRODUCT_COPY_FILES += \
      device/qcom/iot-feature-config/iotlowram/preloaded-classes-iotlowram:system/etc/preloaded-classes

PRODUCT_PROPERTY_OVERRIDES  += \
        dalvik.vm.heapstartsize=8m \
        dalvik.vm.heapsize=256m \
        dalvik.vm.heaptargetutilization=0.85 \
        dalvik.vm.heapminfree=512k \
        dalvik.vm.heapmaxfree=6m

TARGET_USES_NQ_NFC := false

TARGET_SYSTEM_PROP += device/qcom/iot-feature-config/iotlowram/system.prop

PRODUCT_LOCALES := en_US
WIDEVINE_ENABLE := false
ENABLE_WIDEVINE_DRM := false
TARGET_NOT_SUPPORT_VULKAN :=true

#Disable statsd for qti optimization
PRODUCT_PROPERTY_OVERRIDES += \
    ro.statsd.enable=false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qfp=false

DEVICE_PACKAGE_OVERLAYS += device/qcom/iot-feature-config/iotlowram/overlay

endif
