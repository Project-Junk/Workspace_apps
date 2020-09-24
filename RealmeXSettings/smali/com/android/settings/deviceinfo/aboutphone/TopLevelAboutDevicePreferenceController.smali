.class public Lcom/android/settings/deviceinfo/aboutphone/TopLevelAboutDevicePreferenceController;
.super Lcom/android/settings/core/a;
.source "TopLevelAboutDevicePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 37
    new-instance v0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/TopLevelAboutDevicePreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "dummy_key"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
