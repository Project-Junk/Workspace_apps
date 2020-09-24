.class Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$8;
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

    .line 334
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$8;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

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

    .line 343
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$8;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$8;->this$0:Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->access$900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method
