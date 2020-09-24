.class Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$2;
.super Ljava/lang/Object;
.source "WiredChargingSiphonAnimLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->createNormalTransitionOutAnim()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 312
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 313
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->access$100(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingNormalAnimationView;->setAlpha(F)V

    return-void
.end method
