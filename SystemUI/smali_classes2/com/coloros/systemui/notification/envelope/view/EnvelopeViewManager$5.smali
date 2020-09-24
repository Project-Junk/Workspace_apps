.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$5;
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

    .line 253
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$5;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

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

    .line 261
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$5;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$5;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
