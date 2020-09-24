.class Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;
.super Ljava/lang/Object;
.source "ChargingLevelAndLogoViewRealme.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$fadein:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;Z)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;->val$fadein:Z

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

    .line 503
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;->val$fadein:Z

    if-nez p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->setVisibility(I)V

    .line 505
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->access$202(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;Z)Z

    .line 507
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->access$302(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 496
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;->val$fadein:Z

    if-eqz p1, :cond_0

    .line 497
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingLevelAndLogoViewRealme;->setVisibility(I)V

    :cond_0
    return-void
.end method
