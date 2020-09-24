.class public Lcom/coloros/systemui/common/recovery/SystemUiRecoverySettingsService;
.super Lcom/coloros/commons/service/RecoveryService;
.source "SystemUiRecoverySettingsService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUiRecoverySettingsService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/coloros/commons/service/RecoveryService;-><init>()V

    return-void
.end method


# virtual methods
.method public doRecoveryOperation(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "Recovery"

    const-string v0, "SystemUiRecoverySettingsService"

    const-string v1, "doRecoveryOperation"

    .line 26
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->getInstance()Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->handleRecovery(Landroid/content/Context;)Z

    const/4 p0, 0x1

    return p0
.end method
