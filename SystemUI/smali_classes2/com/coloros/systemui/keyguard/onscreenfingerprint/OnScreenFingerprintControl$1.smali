.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$1;
.super Ljava/lang/Object;
.source "OnScreenFingerprintControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;
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

    .line 124
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->onDreamingStart()V

    return-void
.end method