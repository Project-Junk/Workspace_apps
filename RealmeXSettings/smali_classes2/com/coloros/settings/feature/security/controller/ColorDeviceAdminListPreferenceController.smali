.class public Lcom/coloros/settings/feature/security/controller/ColorDeviceAdminListPreferenceController;
.super Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;
.source "ColorDeviceAdminListPreferenceController.java"


# static fields
.field private static final KEY_ADMIN_LIST_GROUP:Ljava/lang/String; = "device_admin_settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "device_admin_settings"

    .line 34
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/ColorDeviceAdminListPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method
