.class public Lcom/coloros/settings/widget/preference/ColorRestrictedListPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "ColorRestrictedListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public performClick()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedListPreference;->performClick()V

    return-void
.end method
