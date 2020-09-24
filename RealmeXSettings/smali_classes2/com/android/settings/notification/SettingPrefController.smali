.class public abstract Lcom/android/settings/notification/SettingPrefController;
.super Lcom/android/settingslib/core/a;
.source "SettingPrefController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SettingPrefController$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/android/settings/notification/SettingPrefController$a;

.field protected b:Lcom/android/settings/notification/r;

.field private c:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/notification/SettingPrefController;->c:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->b:Lcom/android/settings/notification/r;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->c:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/r;->a(Lcom/android/settings/SettingsPreferenceFragment;)Landroidx/preference/Preference;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/SettingPrefController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    new-instance p1, Lcom/android/settings/notification/SettingPrefController$a;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/SettingPrefController$a;-><init>(Lcom/android/settings/notification/SettingPrefController;)V

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->a:Lcom/android/settings/notification/SettingPrefController$a;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->b:Lcom/android/settings/notification/r;

    .line 1132
    iget-object v0, v0, Lcom/android/settings/notification/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->b:Lcom/android/settings/notification/r;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/r;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->a:Lcom/android/settings/notification/SettingPrefController$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPrefController$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->a:Lcom/android/settings/notification/SettingPrefController$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPrefController$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->b:Lcom/android/settings/notification/r;

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/r;->b(Landroid/content/Context;)V

    return-void
.end method
