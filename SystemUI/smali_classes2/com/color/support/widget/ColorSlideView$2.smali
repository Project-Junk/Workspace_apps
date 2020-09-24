.class Lcom/color/support/widget/ColorSlideView$2;
.super Ljava/lang/Object;
.source "ColorSlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSlideView;->shrink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSlideView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSlideView;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView$2;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView$2;->this$0:Lcom/color/support/widget/ColorSlideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorSlideView;->access$102(Lcom/color/support/widget/ColorSlideView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 898
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView$2;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-static {v0}, Lcom/color/support/widget/ColorSlideView;->access$200(Lcom/color/support/widget/ColorSlideView;)Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView$2;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-static {v0}, Lcom/color/support/widget/ColorSlideView;->access$200(Lcom/color/support/widget/ColorSlideView;)Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;

    move-result-object v0

    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView$2;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-interface {v0, p0}, Lcom/color/support/widget/ColorSlideView$OnSmoothScrollListener;->onSmoothScroll(Landroid/view/View;)V

    :cond_0
    return-void
.end method
