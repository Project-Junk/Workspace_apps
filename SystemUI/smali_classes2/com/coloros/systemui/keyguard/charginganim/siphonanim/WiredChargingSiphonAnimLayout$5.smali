.class Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$5;
.super Ljava/lang/Object;
.source "WiredChargingSiphonAnimLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->createVoocTransitionInAnim()Landroid/animation/ValueAnimator;
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

    .line 353
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

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

    .line 356
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout$5;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->access$200(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;)Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingVoocAnimationView;->setVisibility(I)V

    return-void
.end method
