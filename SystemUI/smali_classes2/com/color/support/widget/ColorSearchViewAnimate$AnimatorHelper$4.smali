.class Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;
.super Ljava/lang/Object;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1080
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$800(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    .line 1081
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->access$2100(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1082
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1083
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1900(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1900(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;->onAnimationEnd(I)V

    :cond_0
    return-void
.end method
