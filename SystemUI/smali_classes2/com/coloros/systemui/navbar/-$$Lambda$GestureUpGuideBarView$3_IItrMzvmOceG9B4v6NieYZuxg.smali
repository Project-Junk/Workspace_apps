.class public final synthetic Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$3_IItrMzvmOceG9B4v6NieYZuxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$3_IItrMzvmOceG9B4v6NieYZuxg;->f$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureUpGuideBarView$3_IItrMzvmOceG9B4v6NieYZuxg;->f$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->lambda$hideHighLightAnimation$3$GestureUpGuideBarView(Landroid/animation/ValueAnimator;)V

    return-void
.end method