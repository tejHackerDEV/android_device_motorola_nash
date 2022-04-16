$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common Elixir stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Vendor blobs
$(call inherit-product, vendor/motorola/nash/nash-vendor.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Disable APEX compression
# Keep this after including updatable_apex.mk
PRODUCT_COMPRESSED_APEX := false

# Device
$(call inherit-product, device/motorola/nash/device.mk)

# Elixir Stuff
# Maintainer
PRODUCT_PRODUCT_PROPERTIES += \
  	ro.elixir.maintainer=tejHackerDEV \
	org.elixir.device=nash

# Boot Animtion
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOTANIMATION_HALF_RES := true


# Device identifiers
BUILD_FINGERPRINT := motorola/nash_retail/nash:9/PPX29.159-24/e78f1:user/release-keys
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := nash
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := Moto Z (2)
PRODUCT_NAME := aosp_nash

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=nash \
        PRIVATE_BUILD_DESC="nash-user 9 PPX29.159-24 e78f1 release-keys"
