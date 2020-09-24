.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;
.super Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;
.source "ColorDeviceNamePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_PHONE_NAME:Ljava/lang/String; = "phone_name"


# instance fields
.field private mJumpPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone_name"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public confirmDeviceName()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->setDeviceName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public displayDevicePreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "phone_name"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->mJumpPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->mJumpPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "phone_name"

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setDeviceName(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorDeviceNamePreferenceController;->mJumpPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method
