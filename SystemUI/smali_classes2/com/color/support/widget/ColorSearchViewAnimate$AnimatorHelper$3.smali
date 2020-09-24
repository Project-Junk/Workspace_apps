.class Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;
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

    .line 1062
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1065
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$700(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    .line 1068
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->openSoftInput(Z)V

    .line 1070
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1900(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1900(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;->onAnimationStart(I)V

    .line 1073
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2000(Lcom/color/support/widget/ColorSearchViewAnimate;II)V

    return-void
.end method
