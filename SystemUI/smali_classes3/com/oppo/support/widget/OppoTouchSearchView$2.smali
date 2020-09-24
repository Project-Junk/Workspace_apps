.class Lcom/oppo/support/widget/OppoTouchSearchView$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "OppoTouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/support/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/support/widget/OppoTouchSearchView;


# direct methods
.method constructor <init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$2;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 341
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    .line 342
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$2;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$100(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$2;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$100(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$2;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-static {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$100(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
