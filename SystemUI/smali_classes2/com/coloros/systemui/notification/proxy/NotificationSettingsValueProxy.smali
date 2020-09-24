.class public Lcom/coloros/systemui/notification/proxy/NotificationSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "NotificationSettingsValueProxy.java"


# static fields
.field public static final OPPO_STATUS_BAR_ENABLE_WHEN_LOCK:Ljava/lang/String; = "oppo_status_bar_enable_when_lock"

.field public static final PANEL_PULL_DOWN_WHEN_LOCK_DISABLE:I = 0x0

.field public static final PANEL_PULL_DOWN_WHEN_LOCK_ENABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getPanelDisableWhenLock(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "oppo_status_bar_enable_when_lock"

    .line 34
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/notification/proxy/NotificationSettingsValueProxy;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
