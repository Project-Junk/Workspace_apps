.class Lcom/oppo/support/widget/OppoTouchSearchView$2;
.super Lcom/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/support/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/support/widget/OppoTouchSearchView;


# direct methods
.method constructor <init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$2;->a:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-direct {p0}, Lcom/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/e;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/e;->b()D

    move-result-wide v0

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$2;->a:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$2;->a:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$2;->a:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-static {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->a(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
