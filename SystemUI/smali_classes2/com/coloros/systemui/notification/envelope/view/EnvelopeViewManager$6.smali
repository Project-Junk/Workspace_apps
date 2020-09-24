.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$6;
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

    .line 276
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$6;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$6;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1302(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$6;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1302(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 279
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$6;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$1302(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z

    .line 280
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$6;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
