.class public Lcom/android/settings/accounts/WorkModePreferenceController;
.super Lcom/android/settings/core/a;
.source "WorkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkModeController"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mManagedUser:Landroid/os/UserHandle;

.field private mPreference:Landroidx/preference/Preference;

.field final mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    new-instance p2, Lcom/android/settings/accounts/WorkModePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accounts/WorkModePreferenceController$1;-><init>(Lcom/android/settings/accounts/WorkModePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo p2, "user"

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 50
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 51
    iget-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/WorkModePreferenceController;)Landroid/os/UserHandle;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mManagedUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/WorkModePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private isChecked()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setChecked(Z)Z
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    xor-int/2addr p1, v1

    .line 98
    invoke-virtual {v0, p1, v2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    :cond_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/accounts/WorkModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public getSliceType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/accounts/WorkModePreferenceController;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f121a9a

    goto :goto_0

    :cond_0
    const v1, 0x7f121a99

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 113
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/WorkModePreferenceController;->setChecked(Z)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setManagedUser(Landroid/os/UserHandle;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mManagedUser:Landroid/os/UserHandle;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 106
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settings/accounts/WorkModePreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
