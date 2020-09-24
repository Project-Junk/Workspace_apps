.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;
.super Ljava/lang/Object;
.source "OnScreenFingerprintBaseControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->playSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;

    iput p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;

    iget v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;->val$id:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->stopSound(I)V

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Keyguard"

    const-string v0, "OnScreenFingerprintBaseControl"

    const-string v1, "playSound ring volume is 0"

    .line 146
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;

    iget-object v2, v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;->val$id:I

    int-to-float v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
