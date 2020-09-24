.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;
.super Ljava/lang/Object;
.source "OnScreenFingerprintControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->hideFingerprintIcon()V
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

    .line 607
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$802(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const-string v0, "OnScreenFingerprintControl"

    const-string v2, "hideFingerprintIcon"

    .line 611
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopPressedAnimation()V

    .line 613
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopOpticalAnimation()V

    .line 614
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$900(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$6;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$900(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setVisibility(I)V

    return-void
.end method
