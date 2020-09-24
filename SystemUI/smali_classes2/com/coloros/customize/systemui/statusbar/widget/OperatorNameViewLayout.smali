.class public Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "OperatorNameViewLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final CARRIER_INFO_SWITCH_SETTINGS:Ljava/lang/String; = "carrier_info_settings_show"

.field private static final CARRIER_NAME_DISPLAY_DEFAUT:I = 0x0

.field private static final CARRIER_NAME_DISPLAY_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CustomOperatorNameView"


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCarrierDisplayType:I

.field private mKeguradShowing:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mOperatorNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeguradShowing:Z

    .line 54
    new-instance p1, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout$1;

    invoke-direct {p1, p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout$1;-><init>(Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;)V

    iput-object p1, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeguradShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->update()V

    return-void
.end method

.method private update()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->updateVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->updateText()V

    :cond_0
    return-void
.end method

.method private updateText()V
    .locals 8

    .line 156
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 159
    iget v4, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mCarrierDisplayType:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 161
    iget-object v5, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    .line 162
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 163
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v7, :cond_0

    .line 164
    iget-object v5, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 172
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrierName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Statusbar"

    const-string v3, "CustomOperatorNameView"

    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mOperatorNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {p0, v1}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->setVisibility(I)V

    return-void
.end method

.method private updateVisibility()Z
    .locals 5

    .line 134
    iget-boolean v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeguradShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 137
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "carrier_info_settings_show"

    .line 138
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mCarrierDisplayType:I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCarrierDisplayType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mCarrierDisplayType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Statusbar"

    const-string v3, "CustomOperatorNameView"

    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mCarrierDisplayType:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v2, 0x8

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 141
    :goto_1
    invoke-virtual {p0, v3}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    .line 145
    iget-object v4, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    return v0

    .line 147
    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->setVisibility(I)V

    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 102
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 103
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 104
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "carrier_info_settings_show"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 105
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 179
    iget-object p2, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mOperatorNameView:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onDetachedFromWindow()V

    .line 111
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 112
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 113
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 114
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a041b

    .line 95
    invoke-virtual {p0, v0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->mOperatorNameView:Landroid/widget/TextView;

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->update()V

    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->update()V

    return-void
.end method
