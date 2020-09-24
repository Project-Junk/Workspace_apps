.class public Lcom/android/settings/deviceinfo/hardwareinfo/DeviceModelPreferenceController;
.super Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;
.source "DeviceModelPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 45
    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useDynamicSliceSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
