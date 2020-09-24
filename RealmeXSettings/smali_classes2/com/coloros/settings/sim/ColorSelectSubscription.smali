.class public Lcom/coloros/settings/sim/ColorSelectSubscription;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorSelectSubscription.java"


# instance fields
.field private a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 105
    new-instance v0, Lcom/coloros/settings/sim/ColorSelectSubscription$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/sim/ColorSelectSubscription$1;-><init>(Lcom/coloros/settings/sim/ColorSelectSubscription;)V

    iput-object v0, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorSelectSubscription"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e8

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150112

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 60
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "subscription_01"

    .line 61
    invoke-virtual {p0, v0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "subscription_02"

    .line 62
    invoke-virtual {p0, v0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PACKAGE"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TARGET_CLASS"

    .line 66
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v2, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 79
    iget-object v4, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v4, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/settings/sim/ColorSelectSubscription;->c:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const-string v6, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v1, v4, v0, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/sim/ColorSelectSubscription;->finish()V

    const-string v0, "SelectSubscription"

    const-string v1, "finish Activity"

    .line 92
    invoke-static {v0, v1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
