.class public Lcom/android/settings/deviceinfo/IpAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;
.source "IpAddressPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
