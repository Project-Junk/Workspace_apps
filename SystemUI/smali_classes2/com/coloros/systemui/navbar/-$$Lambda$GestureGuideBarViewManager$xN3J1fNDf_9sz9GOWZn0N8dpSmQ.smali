.class public final synthetic Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$xN3J1fNDf_9sz9GOWZn0N8dpSmQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$xN3J1fNDf_9sz9GOWZn0N8dpSmQ;->f$0:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/-$$Lambda$GestureGuideBarViewManager$xN3J1fNDf_9sz9GOWZn0N8dpSmQ;->f$0:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->lambda$setHighlightWithAnim$3$GestureGuideBarViewManager(Landroid/animation/ValueAnimator;)V

    return-void
.end method