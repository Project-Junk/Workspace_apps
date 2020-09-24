.class Lcom/color/support/widget/slideselect/ColorSlideSelectView$3;
.super Lcom/color/support/widget/slideselect/AnimationListenerAdapter;
.source "ColorSlideSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/slideselect/ColorSlideSelectView;->showListViewAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$3;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-direct {p0}, Lcom/color/support/widget/slideselect/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 327
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$3;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$702(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Z)Z

    .line 328
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$3;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setAnimationInPregress(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 320
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$3;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$702(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Z)Z

    .line 321
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$3;->this$0:Lcom/color/support/widget/slideselect/ColorSlideSelectView;

    invoke-static {p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setAnimationInPregress(Z)V

    return-void
.end method
