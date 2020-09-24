.class public Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "ColorTimeSetPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/widget/LocalColorTimePicker$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$b;,
        Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;
    }
.end annotation


# instance fields
.field public a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/util/Calendar;

.field private d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

.field private e:Landroidx/preference/PreferenceScreen;

.field private f:Landroid/app/Activity;

.field private g:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 245
    new-instance v0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->h:Landroid/content/BroadcastReceiver;

    .line 70
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->f:Landroid/app/Activity;

    .line 71
    new-instance v0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$b;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->g:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$b;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->b:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->g:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)Landroid/app/Activity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->f:Landroid/app/Activity;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->c()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->g:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Calendar;)V
    .locals 4

    .line 264
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->c:Ljava/util/Calendar;

    .line 265
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->c:Ljava/util/Calendar;

    if-eqz p1, :cond_2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 266
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 267
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->c:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v2, 0x7f5

    const/16 v3, 0x7b2

    if-lt p1, v3, :cond_0

    if-le p1, v2, :cond_1

    .line 269
    :cond_0
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 270
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 271
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 272
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->c:Ljava/util/Calendar;

    .line 3073
    iget-object v2, p1, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    if-eqz v2, :cond_1

    .line 3076
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->b:Lcom/coloros/settings/widget/LocalColorTimePicker;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->setColorTimePicker(Ljava/util/Calendar;)V

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->c:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 277
    new-instance p1, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->g:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;JB)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->e:Landroidx/preference/PreferenceScreen;

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    .line 80
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->getOrder()I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->mContext:Landroid/content/Context;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;-><init>(Landroid/content/Context;ILcom/coloros/settings/widget/LocalColorTimePicker$a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->g:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    .line 1192
    iput-object v0, p1, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->a:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "timeset"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->g:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsDatePreference;->a()Z

    move-result p1

    const v0, 0x7f0d00a7

    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setLayoutResource(I)V

    .line 140
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->e:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a()V

    .line 143
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setLayoutResource(I)V

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->e:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->h:Landroid/content/BroadcastReceiver;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2123
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->e:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    if-eqz v0, :cond_0

    .line 2125
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/l;->b(Landroid/content/Context;)Z

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/l;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setVisible(Z)V

    .line 165
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->d:Lcom/coloros/settings/widget/preference/SettingsDatePreference;

    if-eqz p1, :cond_2

    .line 166
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->e:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    const v2, 0x7f0d00a7

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setLayoutResource(I)V

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setVisible(Z)V

    .line 172
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/coloros/settings/utils/l;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a()V

    if-eqz v0, :cond_3

    .line 176
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
