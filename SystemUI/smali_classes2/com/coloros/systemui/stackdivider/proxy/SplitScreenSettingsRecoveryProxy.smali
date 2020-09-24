.class public Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsRecoveryProxy;
.super Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;
.source "SplitScreenSettingsRecoveryProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRecoveryOperation(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x1

    .line 26
    invoke-static {p1, p0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenEnable(Landroid/content/Context;I)V

    .line 27
    invoke-static {p1, p0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenFingersEnable(Landroid/content/Context;I)V

    return-void
.end method
