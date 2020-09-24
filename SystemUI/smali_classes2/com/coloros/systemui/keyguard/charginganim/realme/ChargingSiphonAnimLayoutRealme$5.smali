.class Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$5;
.super Ljava/lang/Object;
.source "ChargingSiphonAnimLayoutRealme.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->createVoocTransitionInAnim()Landroid/animation/ValueAnimator;
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

    .line 363
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->access$200(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->setVisibility(I)V

    return-void
.end method
