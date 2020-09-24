.class public Lcom/coloros/settings/feature/network/ColorAirplaneController;
.super Lcom/android/settings/core/a;
.source "ColorAirplaneController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final EVENT_RESTORE_SWITCH_STATE:I = 0x2

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x1

.field public static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModePreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/network/ColorAirplaneController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModePreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/network/ColorAirplaneController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModePreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModePreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModePreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModePreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    new-instance p1, Lcom/coloros/settings/feature/network/ColorAirplaneController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/network/ColorAirplaneController$1;-><init>(Lcom/coloros/settings/feature/network/ColorAirplaneController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 89
    new-instance p1, Lcom/coloros/settings/feature/network/ColorAirplaneController$2;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/network/ColorAirplaneController$2;-><init>(Lcom/coloros/settings/feature/network/ColorAirplaneController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance p1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p1, "ril.cdma.inecmmode"

    .line 127
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    check-cast p2, Ljava/lang/Boolean;

    .line 131
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->setAirplaneModeOn(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 70
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 69
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_1

    .line 119
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
