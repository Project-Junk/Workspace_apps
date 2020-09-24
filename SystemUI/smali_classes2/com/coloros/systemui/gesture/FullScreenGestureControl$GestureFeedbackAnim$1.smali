.class Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullScreenGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->initFeedbackAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim$1;->this$1:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim$1;->this$1:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    invoke-static {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;->access$400(Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;)V

    return-void
.end method
