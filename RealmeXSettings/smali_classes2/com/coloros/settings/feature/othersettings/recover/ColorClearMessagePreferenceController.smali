.class public Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorClearMessagePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final KEY_CLEAR_MESSAGE_DATA:Ljava/lang/String; = "clear_message_data"

.field private static final TAG:Ljava/lang/String; = "ColorClearMessagePreferenceController"


# instance fields
.field private mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPreference:Landroidx/preference/Preference;

.field private final mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "clear_message_data"

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    new-instance p1, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->isInCall()Z

    move-result p0

    return p0
.end method

.method private isInCall()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "clear_message_data"

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 57
    :cond_0
    sget-boolean v0, Lcom/coloros/settings/a;->l:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    return v1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 74
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clear_message_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/e;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/recover/e;-><init>()V

    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/h;->a(Lcom/coloros/settings/feature/othersettings/recover/j;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->isInCall()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
