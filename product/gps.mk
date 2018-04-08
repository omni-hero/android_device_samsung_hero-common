DEVICE_PATH := device/samsung/hero-common

# Configs
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
	$(DEVICE_PATH)/configs/gps/gps.xml:system/etc/gps.xml \
	$(DEVICE_PATH)/configs/gps/lhd.conf:system/etc/lhd.conf

# Init Resources
PRODUCT_PACKAGES += \
	init.gps.rc

PRODUCT_PACKAGES += \
	libsensoreventq

PRODUCT_PACKAGES += \
	libsensor_shim

# HIDL
PRODUCT_PACKAGES += \
	android.hardware.gnss@1.0-impl \
	android.hardware.gnss@1.0-service

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
