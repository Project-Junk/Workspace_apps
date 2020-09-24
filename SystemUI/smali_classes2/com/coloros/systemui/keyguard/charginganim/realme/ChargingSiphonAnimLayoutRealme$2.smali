.class Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$2;
.super Ljava/lang/Object;
.source "ChargingSiphonAnimLayoutRealme.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 319
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 322
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 323
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;)Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->setAlpha(F)V

    return-void
.end method
