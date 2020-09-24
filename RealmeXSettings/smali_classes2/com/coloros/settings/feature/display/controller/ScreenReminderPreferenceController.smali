.class public Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;
.super Lcom/android/settings/core/a;
.source "ScreenReminderPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final KEY_SCREEN_REMINDER:Ljava/lang/String; = "screen_reminder"


# instance fields
.field private mAodPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private mBeginHour:I

.field private mBeginMinute:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEndHour:I

.field private mEndMinute:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsImmediateOpen:Z

.field private mIsTimeSetOpen:Z

.field private mIsTimeTickRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "screen_reminder"

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController$1;-><init>(Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mAodPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-object p0
.end method

.method private updateTimeSetData()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "Setting_AodEnableImmediate"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsImmediateOpen:Z

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "Setting_AodUserSetTime"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeSetOpen:Z

    .line 133
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsImmediateOpen:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeSetOpen:Z

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 136
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeSetOpen:Z

    .line 138
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeSetOpen:Z

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mBeginMinute:I

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->c(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mEndHour:I

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->d(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mEndMinute:I

    .line 142
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mBeginHour:I

    :cond_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "screen_reminder"

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mAodPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 75
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mAodPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v0, 0x7f1211b7

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(I)V

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mAodPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "com.coloros.settings.feature.display.screenoffreminder.ScreenReminderRealmeFragment"

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setFragment(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mAodPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v0, 0x7f120192

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(I)V

    .line 80
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mAodPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "com.coloros.settings.feature.display.screenoffreminder.ScreenReminderFragment"

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setFragment(Ljava/lang/String;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 7

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsImmediateOpen:Z

    iget-boolean v2, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeSetOpen:Z

    iget v3, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mBeginHour:I

    iget v4, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mBeginMinute:I

    iget v5, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mEndHour:I

    iget v6, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mEndMinute:I

    invoke-static/range {v0 .. v6}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->a(Landroid/content/Context;ZZIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeTickRegister:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeTickRegister:Z

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 107
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->updateTimeSetData()V

    .line 108
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeSetOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeTickRegister:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIsTimeTickRegister:Z

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mAodPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ScreenReminderPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
