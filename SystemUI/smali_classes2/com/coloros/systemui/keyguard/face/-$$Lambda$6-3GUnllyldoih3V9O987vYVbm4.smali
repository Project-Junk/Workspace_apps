.class public final synthetic Lcom/coloros/systemui/keyguard/face/-$$Lambda$6-3GUnllyldoih3V9O987vYVbm4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$6-3GUnllyldoih3V9O987vYVbm4;->f$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$6-3GUnllyldoih3V9O987vYVbm4;->f$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->stopFillLightControl()V

    return-void
.end method
