.class Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ColorScrollingTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorScrollingTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorTabView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorScrollingTabView;


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorScrollingTabView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    .line 503
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v0}, Lcom/color/support/widget/ColorScrollingTabView;->access$200(Lcom/color/support/widget/ColorScrollingTabView;)Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 509
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v0}, Lcom/color/support/widget/ColorScrollingTabView;->access$300(Lcom/color/support/widget/ColorScrollingTabView;)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v2}, Lcom/color/support/widget/ColorScrollingTabView;->access$300(Lcom/color/support/widget/ColorScrollingTabView;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->setPadding(IIII)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v0}, Lcom/color/support/widget/ColorScrollingTabView;->access$400(Lcom/color/support/widget/ColorScrollingTabView;)I

    move-result v0

    iget-object v2, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {v2}, Lcom/color/support/widget/ColorScrollingTabView;->access$400(Lcom/color/support/widget/ColorScrollingTabView;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->setPadding(IIII)V

    .line 513
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 514
    iget-object p1, p0, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->this$0:Lcom/color/support/widget/ColorScrollingTabView;

    invoke-static {p1}, Lcom/color/support/widget/ColorScrollingTabView;->access$500(Lcom/color/support/widget/ColorScrollingTabView;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/color/support/widget/ColorScrollingTabView$ColorTabView;->setTextSize(IF)V

    return-void
.end method
