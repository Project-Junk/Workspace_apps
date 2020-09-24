.class public Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;
.super Lcom/color/support/widget/navigation/ColorNavigationMenuView;
.source "ColorToolNavigationMenuView.java"


# static fields
.field private static final CENTER:I = 0x0

.field private static final END:I = 0x2

.field private static final START:I = 0x1


# instance fields
.field private mDefaultPadding:I

.field private mIconMarginHorizontal:I

.field private mIconTopMargin:I

.field private mItemHeight:I

.field private mItemMinWidth:I

.field private mTempChildWidths:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 33
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_tool_navigation_edge_item_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    const/4 p2, 0x5

    .line 34
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mTempChildWidths:[I

    .line 35
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_tool_navigation_item_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemMinWidth:I

    .line 36
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_tool_navigation_item_icon_margin_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mIconMarginHorizontal:I

    .line 37
    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_tool_navigation_icon_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mIconTopMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/navigation/ColorNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isRtlMode()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/16 v2, 0x14

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 v2, 0x15

    goto :goto_0

    :cond_1
    const/16 v2, 0xe

    :goto_0
    const/4 v3, -0x1

    .line 168
    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->isRtlMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    if-ne p2, v1, :cond_2

    .line 173
    iget v1, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mIconMarginHorizontal:I

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne p2, v0, :cond_3

    .line 174
    iget v3, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mIconMarginHorizontal:I

    :cond_3
    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_4
    if-ne p2, v1, :cond_5

    .line 176
    iget v1, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mIconMarginHorizontal:I

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-ne p2, v0, :cond_6

    .line 177
    iget v3, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mIconMarginHorizontal:I

    :cond_6
    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_3
    return-void
.end method

.method private setPaddingAndMeasure(Landroid/view/View;IIII)V
    .locals 3

    .line 182
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 183
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mTempChildWidths:[I

    aget p0, p0, p2

    add-int/2addr p0, p3

    add-int/2addr p0, p4

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p5}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private setTextAlignment(ILandroid/widget/TextView;I)V
    .locals 3

    .line 187
    iget v0, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemMinWidth:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p3, v1, :cond_4

    if-eq p3, v2, :cond_1

    goto :goto_5

    :cond_1
    const/4 p3, 0x6

    .line 194
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 195
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->isRtlMode()Z

    move-result p3

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemMinWidth:I

    sub-int/2addr p3, p1

    div-int/2addr p3, v2

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_3

    move p0, v0

    goto :goto_2

    :cond_3
    iget p0, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemMinWidth:I

    sub-int/2addr p0, p1

    div-int/2addr p0, v2

    :goto_2
    invoke-virtual {p2, p3, v0, p0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    :cond_4
    const/4 p3, 0x5

    .line 190
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 191
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->isRtlMode()Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v0

    goto :goto_3

    :cond_5
    iget p3, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemMinWidth:I

    sub-int/2addr p3, p1

    div-int/2addr p3, v2

    :goto_3
    invoke-direct {p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget p0, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemMinWidth:I

    sub-int/2addr p0, p1

    div-int/2addr p0, v2

    goto :goto_4

    :cond_6
    move p0, v0

    :goto_4
    invoke-virtual {p2, p3, v0, p0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    :cond_7
    const/4 p0, 0x4

    .line 198
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 199
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_5
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v6, p0

    .line 46
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    const/4 v7, 0x2

    mul-int/2addr v1, v7

    sub-int/2addr v0, v1

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->getChildCount()I

    move-result v8

    .line 48
    iget v1, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemHeight:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x1

    if-nez v8, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v8

    .line 49
    :goto_0
    div-int v1, v0, v1

    mul-int v2, v1, v8

    sub-int/2addr v0, v2

    const/4 v12, 0x0

    move v2, v0

    move v0, v12

    :goto_1
    if-ge v0, v8, :cond_2

    .line 52
    iget-object v3, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mTempChildWidths:[I

    aput v1, v3, v0

    if-lez v2, :cond_1

    .line 54
    aget v4, v3, v0

    add-int/2addr v4, v11

    aput v4, v3, v0

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/util/ColorOrientationUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v5, 0x8

    if-eqz v0, :cond_c

    move v4, v12

    move/from16 v16, v4

    :goto_2
    if-ge v4, v8, :cond_b

    .line 61
    invoke-virtual {v6, v4}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 62
    sget v0, Lcolor/support/v7/appcompat/R$id;->normalLable:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    sget v1, Lcolor/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    iget v2, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mIconTopMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 66
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v5, :cond_3

    move v9, v4

    move v13, v5

    goto/16 :goto_4

    :cond_3
    if-eq v8, v11, :cond_a

    if-eq v8, v7, :cond_7

    if-eq v8, v15, :cond_7

    if-eq v8, v14, :cond_4

    if-eq v8, v13, :cond_4

    move-object/from16 v18, v3

    move v9, v4

    move v13, v5

    goto/16 :goto_3

    :cond_4
    if-nez v4, :cond_5

    .line 94
    invoke-direct {v6, v1, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 95
    invoke-direct {v6, v2, v0, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 96
    iget v9, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    move-object/from16 v18, v3

    move v3, v9

    move v9, v4

    move/from16 v4, v17

    move v13, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto/16 :goto_3

    :cond_5
    move-object/from16 v18, v3

    move v9, v4

    move v13, v5

    add-int/lit8 v3, v8, -0x1

    if-ne v9, v3, :cond_6

    .line 98
    invoke-direct {v6, v1, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 99
    invoke-direct {v6, v2, v0, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    const/4 v3, 0x0

    .line 100
    iget v4, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto/16 :goto_3

    .line 102
    :cond_6
    invoke-direct {v6, v1, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 103
    invoke-direct {v6, v2, v0, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v9

    move v5, v10

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v18, v3

    move v9, v4

    move v13, v5

    if-nez v9, :cond_8

    .line 78
    invoke-direct {v6, v1, v11}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 79
    invoke-direct {v6, v2, v0, v11}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 80
    iget v3, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v8, -0x1

    if-ne v9, v3, :cond_9

    .line 82
    invoke-direct {v6, v1, v7}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 83
    invoke-direct {v6, v2, v0, v7}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    const/4 v3, 0x0

    .line 84
    iget v4, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_3

    .line 86
    :cond_9
    invoke-direct {v6, v1, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 87
    invoke-direct {v6, v2, v0, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v9

    move v5, v10

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_3

    :cond_a
    move-object/from16 v18, v3

    move v9, v4

    move v13, v5

    .line 71
    invoke-direct {v6, v1, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 72
    invoke-direct {v6, v2, v0, v12}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 73
    iget v4, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v9

    move v3, v4

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    .line 108
    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 109
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v16, v16, v0

    :goto_4
    add-int/lit8 v4, v9, 0x1

    move v5, v13

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v13, 0x5

    goto/16 :goto_2

    :cond_b
    move v1, v9

    move/from16 v0, v16

    goto/16 :goto_8

    :cond_c
    move v13, v5

    move v9, v12

    move/from16 v16, v9

    :goto_5
    if-ge v9, v8, :cond_16

    .line 114
    invoke-virtual {v6, v9}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 115
    sget v0, Lcolor/support/v7/appcompat/R$id;->rl_content:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 116
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v13, :cond_d

    const/16 v18, 0x5

    goto/16 :goto_7

    :cond_d
    if-eq v8, v11, :cond_15

    if-eq v8, v7, :cond_12

    if-eq v8, v15, :cond_12

    if-eq v8, v14, :cond_e

    const/4 v4, 0x5

    if-eq v8, v4, :cond_f

    move/from16 v18, v4

    move-object/from16 v17, v5

    goto/16 :goto_6

    :cond_e
    const/4 v4, 0x5

    .line 139
    :cond_f
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    if-nez v9, :cond_10

    .line 141
    iget v3, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v9

    move/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto/16 :goto_6

    :cond_10
    move/from16 v18, v4

    move-object/from16 v17, v5

    add-int/lit8 v0, v8, -0x1

    if-ne v9, v0, :cond_11

    const/4 v3, 0x0

    .line 143
    iget v4, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto/16 :goto_6

    :cond_11
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v9

    move v5, v10

    .line 145
    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_12
    move-object/from16 v17, v5

    const/16 v18, 0x5

    if-nez v9, :cond_13

    const v1, 0x800003

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 128
    iget v3, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_13
    add-int/lit8 v1, v8, -0x1

    if-ne v9, v1, :cond_14

    const v1, 0x800005

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/4 v3, 0x0

    .line 131
    iget v4, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_6

    .line 133
    :cond_14
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v9

    move v5, v10

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_15
    move-object/from16 v17, v5

    const/16 v18, 0x5

    .line 121
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 122
    iget v4, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v9

    move v3, v4

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    .line 149
    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 150
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v16, v16, v0

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_16
    move/from16 v0, v16

    const/high16 v1, 0x40000000    # 2.0f

    .line 154
    :goto_8
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v1, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    iget v1, v6, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemHeight:I

    .line 155
    invoke-static {v1, v10, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 154
    invoke-virtual {v6, v0, v1}, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/color/support/widget/navigation/ColorToolNavigationMenuView;->mItemHeight:I

    return-void
.end method
