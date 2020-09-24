.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$5;
.super Ljava/lang/Object;
.source "OnScreenFingerprintControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->showFingerprintIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$5;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$5;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$700(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Z

    .line 587
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$5;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$802(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 588
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$5;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->showFingerprintIconAnimation()V

    return-void
.end method
