ifeq ($(TARGET_QCOM_IOT_LOW_RAM), true)
$(call soong_config_set,qcomfeatureconfig,iotlowram,$(TARGET_QCOM_IOT_LOW_RAM))

PRODUCT_COPY_FILES += \
      device/qcom/iot-feature-config/iotlowram/preloaded-classes-iotlowram:system/etc/preloaded-classes

PRODUCT_LOCALES := en_US
WIDEVINE_ENABLE := false
ENABLE_WIDEVINE_DRM := false
TARGET_NOT_SUPPORT_VULKAN :=true

#Disable statsd for qti optimization
PRODUCT_PROPERTY_OVERRIDES += \
    ro.statsd.enable=false

DEVICE_PACKAGE_OVERLAYS += device/qcom/iot-feature-config/iotlowram/overlay

endif
