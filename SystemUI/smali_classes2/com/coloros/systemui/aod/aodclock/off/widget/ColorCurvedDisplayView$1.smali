.class Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;
.super Ljava/lang/Object;
.source "ColorCurvedDisplayView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

.field final synthetic val$notificationAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;->val$notificationAnimatorSet:Landroid/animation/AnimatorSet;

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

    .line 230
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->access$000(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 231
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;->val$notificationAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;->val$notificationAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 235
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;->access$008(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
