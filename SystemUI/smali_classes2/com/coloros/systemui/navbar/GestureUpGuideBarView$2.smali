.class Lcom/coloros/systemui/navbar/GestureUpGuideBarView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GestureUpGuideBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->hideHighLightAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$2;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$2;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateIconsTintColor(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$2;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateIconsTintColor(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$2;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateIconsTintColor(F)V

    return-void
.end method
