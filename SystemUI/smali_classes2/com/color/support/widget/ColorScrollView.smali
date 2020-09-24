.class Lcom/color/support/widget/ColorScrollView;
.super Landroid/widget/ScrollView;
.source "ColorScrollView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/color/support/widget/ColorScrollView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object p1, p0, Lcom/color/support/widget/ColorScrollView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 51
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollView;->getMeasuredWidth()I

    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/color/support/widget/ColorScrollView;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 54
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 55
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 57
    iget-object v1, p0, Lcom/color/support/widget/ColorScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_dialog_scrollview_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le p2, v1, :cond_0

    .line 61
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    :cond_0
    return-void
.end method
