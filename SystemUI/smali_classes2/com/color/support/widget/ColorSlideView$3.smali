.class Lcom/color/support/widget/ColorSlideView$3;
.super Lcom/color/support/widget/ColorSlideDeleteAnimation;
.source "ColorSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSlideView;->startDeleteAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSlideView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSlideView;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 7

    .line 1392
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView$3;->this$0:Lcom/color/support/widget/ColorSlideView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/color/support/widget/ColorSlideDeleteAnimation;-><init>(Landroid/view/View;Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public itemViewDelete()V
    .locals 2

    .line 1395
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView$3;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-static {v0}, Lcom/color/support/widget/ColorSlideView;->access$300(Lcom/color/support/widget/ColorSlideView;)Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView$3;->this$0:Lcom/color/support/widget/ColorSlideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorSlideView;->access$402(Lcom/color/support/widget/ColorSlideView;Z)Z

    .line 1397
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView$3;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-static {p0}, Lcom/color/support/widget/ColorSlideView;->access$300(Lcom/color/support/widget/ColorSlideView;)Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;->onDeleteItemClick()V

    :cond_0
    return-void
.end method
