.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;
.super Ljava/lang/Object;
.source "OnScreenFingerprintControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->touchEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

.field final synthetic val$down:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Z)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->val$down:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$700(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Z

    .line 650
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->val$down:Z

    const-string v1, "OnScreenFingerprintControl"

    if-eqz v0, :cond_0

    const-string v0, "touchDown"

    .line 651
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->startPressedAnimation()V

    .line 654
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-boolean v0, v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mSoundEnable:Z

    if-eqz v0, :cond_1

    .line 655
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$1000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->playSound(I)V

    goto :goto_0

    :cond_0
    const-string v0, "touchUp"

    .line 659
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$7;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopPressedAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
