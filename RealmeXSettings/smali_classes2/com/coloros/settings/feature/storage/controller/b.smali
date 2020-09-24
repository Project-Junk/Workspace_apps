.class public abstract Lcom/coloros/settings/feature/storage/controller/b;
.super Lcom/android/settingslib/core/a;
.source "ColorVolumeBaseController.java"


# instance fields
.field protected a:Lcom/android/settings/SettingsPreferenceFragment;

.field protected b:Landroid/os/storage/VolumeInfo;

.field protected c:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 38
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/controller/b;->b:Landroid/os/storage/VolumeInfo;

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/b;->a:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/b;->c:Landroidx/preference/PreferenceScreen;

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
