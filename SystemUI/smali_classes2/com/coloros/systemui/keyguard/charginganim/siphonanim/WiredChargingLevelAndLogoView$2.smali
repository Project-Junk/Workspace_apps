.class Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;
.super Ljava/lang/Object;
.source "WiredChargingLevelAndLogoView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$fadein:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;Z)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;->val$fadein:Z

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

    .line 421
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;->val$fadein:Z

    if-nez p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->access$002(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;Z)Z

    .line 425
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->access$102(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 414
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;->val$fadein:Z

    if-eqz p1, :cond_0

    .line 415
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingLevelAndLogoView;->setVisibility(I)V

    :cond_0
    return-void
.end method
