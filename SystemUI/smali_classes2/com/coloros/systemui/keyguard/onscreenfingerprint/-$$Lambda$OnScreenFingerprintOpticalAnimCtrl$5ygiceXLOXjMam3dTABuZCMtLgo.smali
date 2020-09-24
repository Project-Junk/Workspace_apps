.class public final synthetic Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$5ygiceXLOXjMam3dTABuZCMtLgo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$5ygiceXLOXjMam3dTABuZCMtLgo;->f$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$5ygiceXLOXjMam3dTABuZCMtLgo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$5ygiceXLOXjMam3dTABuZCMtLgo;->f$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$5ygiceXLOXjMam3dTABuZCMtLgo;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->lambda$restoreIconDrawable$9$OnScreenFingerprintOpticalAnimCtrl(Z)V

    return-void
.end method
