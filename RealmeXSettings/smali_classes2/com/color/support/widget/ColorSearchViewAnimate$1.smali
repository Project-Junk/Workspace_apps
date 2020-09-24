.class Lcom/color/support/widget/ColorSearchViewAnimate$1;
.super Ljava/lang/Object;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$1;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$1;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$000(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    .line 166
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$1;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$000(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 169
    iget-object v3, p0, Lcom/color/support/widget/ColorSearchViewAnimate$1;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v3}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$000(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/Toolbar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 170
    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v4, :cond_0

    .line 171
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView;

    .line 172
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v0, :cond_4

    .line 178
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$1;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$1;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$100(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 180
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    .line 181
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    iget-object v3, p0, Lcom/color/support/widget/ColorSearchViewAnimate$1;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v3}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$200(Lcom/color/support/widget/ColorSearchViewAnimate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 185
    :cond_2
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 188
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$1;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$100(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
