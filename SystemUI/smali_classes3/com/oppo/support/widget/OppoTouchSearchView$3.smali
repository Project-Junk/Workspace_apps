.class Lcom/oppo/support/widget/OppoTouchSearchView$3;
.super Ljava/lang/Object;
.source "OppoTouchSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 348
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView$3;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$3;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-static {v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$200(Lcom/oppo/support/widget/OppoTouchSearchView;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 352
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView$3;->this$0:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-static {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->access$100(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
