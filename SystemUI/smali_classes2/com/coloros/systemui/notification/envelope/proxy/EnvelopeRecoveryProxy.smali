.class public Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeRecoveryProxy;
.super Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;
.source "EnvelopeRecoveryProxy.java"


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
    invoke-static {p1, p0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeAssistantEnable(Landroid/content/Context;I)V

    .line 27
    invoke-static {p1, p0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeNoticeSoundEnable(Landroid/content/Context;I)V

    const/4 p0, 0x0

    .line 28
    invoke-static {p1, p0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeAutoOpenEnable(Landroid/content/Context;I)V

    .line 29
    invoke-static {p1, p0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeCount(Landroid/content/Context;I)V

    return-void
.end method
