.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;
.super Ljava/lang/Object;
.source "EnvelopeViewManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$EnvelopeViewManager$10()V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1500(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1402(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 394
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1402(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z

    .line 395
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$700(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$10$2gV_wtLVNnBiHTMVWSAf1h1XIXE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$10$2gV_wtLVNnBiHTMVWSAf1h1XIXE;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1402(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z

    return-void
.end method
