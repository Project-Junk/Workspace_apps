.class public Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;
.super Landroid/widget/TextView;
.source "EmergencyCryptkeeperText.java"


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;-><init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 53
    new-instance p1, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;-><init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    const/16 p1, 0x8

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 69
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public update()V
    .locals 10

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v6, v3

    move-object v7, v5

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    .line 105
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 107
    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardConstants$State;->iccCardExist()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move v6, v1

    move-object v7, v9

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_5

    if-eqz v2, :cond_4

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_string_emergency_calls_only:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "plmn"

    .line 130
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 135
    :cond_5
    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v4

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    return-void

    .line 93
    :cond_7
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    return-void
.end method
