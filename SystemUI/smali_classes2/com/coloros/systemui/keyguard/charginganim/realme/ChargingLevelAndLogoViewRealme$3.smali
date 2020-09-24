.class Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$3;
.super Ljava/lang/Object;
.source "ChargingLevelAndLogoViewRealme.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->createLevelAndLogoFadeAnimation(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 489
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 490
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->setAlpha(F)V

    return-void
.end method
