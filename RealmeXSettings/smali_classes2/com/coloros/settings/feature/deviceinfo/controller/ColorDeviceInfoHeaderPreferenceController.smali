.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceInfoHeaderPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorDeviceInfoHeaderPreferenceController.java"


# static fields
.field private static final KEY_DEVICE_INFO:Ljava/lang/String; = "device_info_header"

.field private static final TAG:Ljava/lang/String; = "DeviceInfoPreferenceController"


# instance fields
.field private mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "device_info_header"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "device_info_header"

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceInfoHeaderPreferenceController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceInfoHeaderPreferenceController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "device_info_header"

    return-object v0
.end method
