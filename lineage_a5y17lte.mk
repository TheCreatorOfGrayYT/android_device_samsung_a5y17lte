# Inherit van de officiële LineageOS GSM core definities
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit van de specifieke Exynos 7880 device configuratie
$(call inherit-product, device/samsung/a5y17lte/device.mk)

# Systeem ID & Product Brandingsinstellingen voor DutchOS!
PRODUCT_NAME := lineage_a5y17lte
PRODUCT_DEVICE := a5y17lte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A5 (2017)
PRODUCT_MANUFACTURER := Samsung

# Overschrijf de OS-naam in de instellingen naar DutchOS
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=DutchOS \
    TARGET_PRODUCT=DutchOS

# Integreer NikGApps Basic rechtstreeks in de systeembouw
TARGET_GAPPS_ARCH := arm64
TARGET_GAPPS_VARIANT := basic
$(call inherit-product, vendor/nikgapps/config.mk)
