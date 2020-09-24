.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer$1;
.super Ljava/lang/Object;
.source "OnScreenDimLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->updateDimLayerAlpha(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

.field final synthetic val$alpha:F


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;F)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    iput p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer$1;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set dimlayer alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer$1;->val$alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keyguard"

    const-string v2, "OnScreenDimLayer"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer$1;->val$alpha:F

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->setAlpha(F)V

    return-void
.end method
