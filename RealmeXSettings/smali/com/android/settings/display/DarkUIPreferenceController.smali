.class public Lcom/android/settings/display/DarkUIPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "DarkUIPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field public static final DARK_MODE_PREFS:Ljava/lang/String; = "dark_mode_prefs"

.field public static final DIALOG_SEEN:I = 0x1

.field public static final PREF_DARK_MODE_DIALOG_SEEN:Ljava/lang/String; = "dark_mode_dialog_seen"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mPowerManager:Landroid/os/PowerManager;

.field mPreference:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    new-instance p2, Lcom/android/settings/display/DarkUIPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/DarkUIPreferenceController$1;-><init>(Lcom/android/settings/display/DarkUIPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    .line 68
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 69
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private showDarkModeDialog()V
    .locals 3

    .line 105
    new-instance v0, Lcom/android/settings/display/DarkUIInfoDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/display/DarkUIInfoDialogFragment;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/DarkUIInfoDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPowerSaveMode()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "dark_mode_dialog_seen"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->showDarkModeDialog()V

    return v1

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return v2
.end method

.method public setParentFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method setUiModeManager(Landroid/app/UiModeManager;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method protected updateEnabledStateIfNeeded()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->isPowerSaveMode()Z

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f12069d

    goto :goto_0

    :cond_1
    const v0, 0x7f12069c

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->updateEnabledStateIfNeeded()V

    return-void
.end method
