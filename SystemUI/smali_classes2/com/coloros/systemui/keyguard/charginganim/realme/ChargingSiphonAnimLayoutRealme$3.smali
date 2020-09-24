.class Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$3;
.super Ljava/lang/Object;
.source "ChargingSiphonAnimLayoutRealme.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->createNormalTransitionOutAnim()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 334
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->stopAllAnimation(Z)V

    .line 335
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->setVisibility(I)V

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
