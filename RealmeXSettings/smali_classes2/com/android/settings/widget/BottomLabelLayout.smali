.class public Lcom/android/settings/widget/BottomLabelLayout;
.super Landroid/widget/LinearLayout;
.source "BottomLabelLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1095
    invoke-virtual {p0}, Lcom/android/settings/widget/BottomLabelLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_1

    const/high16 v2, -0x80000000

    .line 57
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v2, v3

    goto :goto_1

    :cond_1
    move v0, p1

    .line 65
    :goto_1
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    if-nez v1, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/widget/BottomLabelLayout;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_2

    .line 71
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/BottomLabelLayout;->setStacked(Z)V

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method setStacked(Z)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/BottomLabelLayout;->setOrientation(I)V

    if-eqz p1, :cond_0

    const v0, 0x800003

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    .line 86
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/BottomLabelLayout;->setGravity(I)V

    const v0, 0x7f0a0636

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/BottomLabelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 90
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
