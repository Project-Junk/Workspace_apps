.class Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$1;
.super Ljava/lang/Object;
.source "WiredChargingLevelAndLogoView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->createLevelAndLogoFadeAnimation(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 407
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 408
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$1;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->setAlpha(F)V

    return-void
.end method
