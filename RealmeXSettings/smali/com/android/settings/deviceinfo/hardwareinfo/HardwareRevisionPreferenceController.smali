.class public Lcom/android/settings/deviceinfo/hardwareinfo/HardwareRevisionPreferenceController;
.super Lcom/android/settings/core/a;
.source "HardwareRevisionPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareRevisionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareRevisionPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareRevisionPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120a6d

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 56
    invoke-static {v0, v1, v2}, Lcom/android/settings/slices/g;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareRevisionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareRevisionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareRevisionPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "ext_hardware_version"

    invoke-static {v0, v1}, Lcom/android/settings/m;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ro.boot.hardware.revision"

    .line 68
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCopyableSlice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
