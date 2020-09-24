.class public Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;
.super Lcom/android/settings/widget/RadioButtonPreference;
.source "ColorRadioButtonPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404a8

    const v1, 0x101008e

    .line 31
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d00b5

    .line 27
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method
