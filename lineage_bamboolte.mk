$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/lenovo/bamboo/bamboo.mk)

$(call inherit-product, device/qcom/msm8909-common/ril.mk)
$(call inherit-product, vendor/qcom/msm8909-common/msm8909-ril-vendor.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_PACKAGES += \
    Msm8909OverlayLteData \
    Msm8909OverlayLteVoice \
    Msm8909OverlayLteSystemUI

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
PRODUCT_NAME := lineage_bamboolte
PRODUCT_DEVICE := bamboolte
PRODUCT_BRAND := lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo Yoga Tab 3 8 LTE

PRODUCT_PROPERTY_OVERRIDES += \
    ro.lenovo.sim=single \
    ro.lenovo.signalbars=four
