.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OnScreenFingerprintOpticalAnimCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$3;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorOSThemeChanged()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$3;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    iget v0, v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mThemeStyle:I

    if-eqz v0, :cond_0

    .line 391
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$3;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mThemeStyle:I

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->loadAnimDrawables(I)V

    goto :goto_0

    :cond_0
    const-string p0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v0, "Fingerprint switch hasn\'t turn on."

    .line 393
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
