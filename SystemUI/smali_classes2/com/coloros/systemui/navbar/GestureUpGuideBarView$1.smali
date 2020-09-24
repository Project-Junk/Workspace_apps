.class Lcom/coloros/systemui/navbar/GestureUpGuideBarView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GestureUpGuideBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->showHighLightAnimation()V
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

    .line 420
    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$1;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$1;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateIconsTintColor(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$1;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateIconsTintColor(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$1;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->updateIconsTintColor(F)V

    return-void
.end method
