.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$2;
.super Ljava/lang/Object;
.source "OnScreenFingerprintIcon.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->startSwitchAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$600(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->clearColorFilter()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
