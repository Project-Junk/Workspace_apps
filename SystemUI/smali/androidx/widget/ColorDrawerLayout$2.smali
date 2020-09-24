.class Landroidx/widget/ColorDrawerLayout$2;
.super Ljava/lang/Object;
.source "ColorDrawerLayout.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/widget/ColorDrawerLayout;->initFeedbackAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/widget/ColorDrawerLayout;


# direct methods
.method constructor <init>(Landroidx/widget/ColorDrawerLayout;)V
    .locals 0

    .line 2944
    iput-object p1, p0, Landroidx/widget/ColorDrawerLayout$2;->this$0:Landroidx/widget/ColorDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 3

    .line 2947
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-int p1, v0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 2949
    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$2;->this$0:Landroidx/widget/ColorDrawerLayout;

    invoke-static {v0}, Landroidx/widget/ColorDrawerLayout;->access$500(Landroidx/widget/ColorDrawerLayout;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 2951
    :cond_0
    iget-object v0, p0, Landroidx/widget/ColorDrawerLayout$2;->this$0:Landroidx/widget/ColorDrawerLayout;

    invoke-static {v0}, Landroidx/widget/ColorDrawerLayout;->access$600(Landroidx/widget/ColorDrawerLayout;)I

    move-result v0

    sub-int v0, p1, v0

    .line 2952
    iget-object v1, p0, Landroidx/widget/ColorDrawerLayout$2;->this$0:Landroidx/widget/ColorDrawerLayout;

    invoke-static {v1, p1}, Landroidx/widget/ColorDrawerLayout;->access$602(Landroidx/widget/ColorDrawerLayout;I)I

    .line 2953
    iget-object p0, p0, Landroidx/widget/ColorDrawerLayout$2;->this$0:Landroidx/widget/ColorDrawerLayout;

    invoke-static {p0}, Landroidx/widget/ColorDrawerLayout;->access$700(Landroidx/widget/ColorDrawerLayout;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method
