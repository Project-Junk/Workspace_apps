.class public Lcom/coloros/systemui/notification/helper/PanelPullHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "PanelPullHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;,
        Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;
    }
.end annotation


# static fields
.field private static final PANEL_ENABLED_ACTION:Ljava/lang/String; = "oppo.intent.action.SUI_PANEL_ENABLE"

.field public static final SETTINGS_PANEL_BAR_EXPANDABLE:Ljava/lang/String; = "panel_bar_expandable"

.field private static final TAG:Ljava/lang/String; = "Notification--PanelEnabledHelper"


# instance fields
.field private mDisablePullStatusBar:Z

.field private mHomePressed:Z

.field private mPanelEnableCallback:Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;

.field private mPanelEnableStateObserver:Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mDisablePullStatusBar:Z

    .line 46
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mHomePressed:Z

    .line 48
    new-instance v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/PanelPullHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mPanelEnableStateObserver:Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;

    .line 59
    invoke-virtual {p2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 61
    iget-object p2, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mPanelEnableStateObserver:Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 62
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/notification/proxy/NotificationSettingsValueProxy;->getPanelDisableWhenLock(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mDisablePullStatusBar:Z

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/notification/helper/PanelPullHelper;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mDisablePullStatusBar:Z

    return p1
.end method


# virtual methods
.method public getDisablePullStatusBar()Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getDisablePullStatusBarOnShade()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->getInstance()Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->isStatusBarExpandDisableMode()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/helper/StatusBarStateHelper;->getBarState()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisablePullStatusBarOnShade()Z
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--getDisablePullStatusBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mDisablePullStatusBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mStatusBar.isKeyguardSecure():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 72
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",hasKeyguardView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Lcom/coloros/systemui/common/helper/KeyguardHelper;->hasSecurityKeyguard()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "Notification--PanelEnabledHelper"

    .line 71
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mDisablePullStatusBar:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/helper/KeyguardHelper;->hasSecurityKeyguard()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getHomePressed()Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mHomePressed:Z

    return p0
.end method

.method public getPanelEnableCallback()Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mPanelEnableCallback:Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;

    return-object p0
.end method

.method public initPanelEnableCallback()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    const-string v1, "Notification--PanelEnabledHelper"

    if-eqz v0, :cond_0

    const-string v0, "Notification--initPanelEnableCallback: already enabled"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->sendPanelEnableBroadcast()V

    goto :goto_0

    :cond_0
    const-string v0, "Notification--initPanelEnableCallback"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$eCDeEG44yvkLPvXX6pTgZK0rA_k;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$eCDeEG44yvkLPvXX6pTgZK0rA_k;-><init>(Lcom/coloros/systemui/notification/helper/PanelPullHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mPanelEnableCallback:Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;

    :goto_0
    return-void
.end method

.method public panelsEnabled()Z
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result p0

    return p0
.end method

.method public sendPanelEnableBroadcast()V
    .locals 3

    const-string v0, "Notification"

    const-string v1, "Notification--PanelEnabledHelper"

    const-string v2, "Notification--send panel enable broadcast"

    .line 92
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.SUI_PANEL_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.backuprestore"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mContext:Landroid/content/Context;

    const-string v1, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public setHomePressed(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mHomePressed:Z

    return-void
.end method

.method public setPanelEnableCallback(Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->mPanelEnableCallback:Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelEnableCallback;

    return-void
.end method
