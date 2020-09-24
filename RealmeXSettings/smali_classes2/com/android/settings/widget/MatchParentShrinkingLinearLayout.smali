.class public Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MatchParentShrinkingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private a:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private d:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private e:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private f:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private g:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private h:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a:Z

    const/4 v1, -0x1

    .line 97
    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    const/4 v2, 0x0

    .line 105
    iput v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->c:I

    const v3, 0x800033

    .line 111
    iput v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    .line 170
    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->p:I

    const-string v3, "com.android.internal.R.styleable.LinearLayout"

    .line 190
    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 189
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "com.android.internal.R.styleable.LinearLayout_orientation"

    .line 192
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 194
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setOrientation(I)V

    :cond_0
    const-string p2, "com.android.internal.R.styleable.LinearLayout_gravity"

    .line 197
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setGravity(I)V

    :cond_1
    const-string p2, "R.styleable.LinearLayout_baselineAligned"

    .line 202
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 204
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setBaselineAligned(Z)V

    :cond_2
    const-string p2, "R.styleable.LinearLayout_weightSum"

    .line 207
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->g:F

    const-string p2, "com.android.internal.R.styleable.LinearLayout_baselineAlignedChildIndex"

    .line 210
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 209
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    const-string p2, "R.styleable.LinearLayout_measureWithLargestChild"

    .line 212
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->h:Z

    const-string p2, "R.styleable.LinearLayout_divider"

    .line 214
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p2, "R.styleable.LinearLayout_showDividers"

    .line 215
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->n:I

    const-string p2, "R.styleable.LinearLayout_dividerPadding"

    .line 216
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->o:I

    .line 218
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(II)V
    .locals 10

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 10553
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 964
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 966
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 968
    iget v2, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 971
    iget v9, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 972
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 975
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 976
    iput v9, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->o:I

    add-int/2addr v1, v2

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->m:I

    add-int/2addr v3, p2

    .line 400
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    iget-object p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static a(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 1341
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private a(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 615
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->n:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 617
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->n:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 618
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->l:I

    add-int/2addr v2, p2

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->o:I

    sub-int/2addr v3, v4

    .line 406
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    iget-object p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static getChildrenSkipCount$5359dca7()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getLocationOffset$3c7ec8d0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getNextLocationOffset$3c7ec8d0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1444
    instance-of p1, p1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    return p1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1455
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1456
    iget-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a:Z

    const-string v1, "layout:baselineAligned"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1457
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    const-string v1, "layout:baselineAlignedChildIndex"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1458
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->c:I

    const-string v1, "measurement:baselineChildTop"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1459
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    const-string v1, "measurement:orientation"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1460
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    const-string v1, "measurement:gravity"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1461
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    const-string v1, "measurement:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1462
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    const-string v1, "layout:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1463
    iget-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->h:Z

    const-string v1, "layout:useLargestChild"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 13427
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    if-nez v0, :cond_0

    .line 13428
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(I)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 13430
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(I)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 14414
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 13437
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1449
    const-class v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .line 468
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    if-gez v0, :cond_0

    .line 469
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    if-le v0, v1, :cond_6

    .line 477
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 481
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    if-nez v0, :cond_1

    return v2

    .line 487
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_2
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->c:I

    .line 499
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 500
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 504
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 508
    :cond_4
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 515
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 516
    iget v0, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 473
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 525
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->o:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->l:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1365
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->n:I

    return v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 577
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->g:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 320
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 2332
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2553
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2336
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 2337
    invoke-direct {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2338
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 2339
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->m:I

    sub-int/2addr v4, v5

    .line 2340
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2345
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sub-int/2addr v0, v3

    .line 3553
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2349
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->m:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 2351
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 2352
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 2354
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(Landroid/graphics/Canvas;I)V

    :cond_4
    return-void

    .line 4359
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 4360
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v4

    :goto_2
    if-ge v2, v0, :cond_8

    .line 4553
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4364
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_7

    .line 4365
    invoke-direct {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4366
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v4, :cond_6

    .line 4369
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 4371
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->l:I

    sub-int/2addr v5, v6

    .line 4373
    :goto_3
    invoke-direct {p0, p1, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b(Landroid/graphics/Canvas;I)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4378
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    sub-int/2addr v0, v3

    .line 5553
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    if-eqz v4, :cond_9

    .line 4383
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_5

    .line 4385
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->l:I

    goto :goto_4

    .line 4388
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v4, :cond_b

    .line 4390
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->l:I

    :goto_4
    sub-int/2addr v0, v1

    goto :goto_5

    .line 4392
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 4395
    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b(Landroid/graphics/Canvas;I)V

    :cond_c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24

    move-object/from16 v0, p0

    .line 1092
    iget v1, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    const/16 v2, 0x8

    const/16 v3, 0x50

    const/16 v4, 0x10

    const/4 v5, 0x5

    const v6, 0x800007

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v1, v8, :cond_9

    .line 11112
    iget v1, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    sub-int v10, p4, p2

    .line 11119
    iget v11, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v11, v10, v11

    sub-int/2addr v10, v1

    .line 11122
    iget v12, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int/2addr v10, v12

    .line 11124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v12

    .line 11126
    iget v13, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    and-int/lit8 v14, v13, 0x70

    and-int/2addr v6, v13

    if-eq v14, v4, :cond_1

    if-eq v14, v3, :cond_0

    .line 11142
    iget v3, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    goto :goto_0

    .line 11132
    :cond_0
    iget v3, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    add-int v3, v3, p5

    sub-int v3, v3, p3

    iget v4, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    sub-int/2addr v3, v4

    goto :goto_0

    .line 11137
    :cond_1
    iget v3, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int v4, p5, p3

    iget v13, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    sub-int/2addr v4, v13

    div-int/2addr v4, v7

    add-int/2addr v3, v4

    :goto_0
    move v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v12, :cond_8

    .line 11553
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_2

    add-int/lit8 v4, v4, 0x0

    goto :goto_4

    .line 11150
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v2, :cond_7

    .line 11151
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 11152
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 11155
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 11157
    iget v9, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->b:I

    if-gez v9, :cond_3

    move v9, v6

    .line 11161
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v7

    .line 11162
    invoke-static {v9, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    if-eq v7, v8, :cond_5

    if-eq v7, v5, :cond_4

    .line 11175
    iget v7, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v1

    goto :goto_3

    :cond_4
    sub-int v7, v11, v14

    .line 11170
    iget v9, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v7, v10, v14

    const/4 v9, 0x2

    .line 11165
    div-int/2addr v7, v9

    add-int/2addr v7, v1

    iget v9, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v7, v9

    .line 11179
    :goto_3
    invoke-direct {v0, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 11180
    iget v9, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->m:I

    add-int/2addr v4, v9

    .line 11183
    :cond_6
    iget v9, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v9

    add-int/lit8 v9, v4, 0x0

    .line 11184
    invoke-static {v13, v7, v9, v14, v15}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(Landroid/view/View;IIII)V

    .line 11186
    iget v2, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v2

    const/4 v2, 0x0

    add-int/2addr v15, v2

    add-int/2addr v4, v15

    add-int/lit8 v3, v3, 0x0

    :cond_7
    :goto_4
    add-int/2addr v3, v8

    const/16 v2, 0x8

    const/4 v7, 0x2

    goto :goto_1

    :cond_8
    return-void

    .line 12217
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v1

    .line 12218
    iget v2, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int v7, p5, p3

    .line 12225
    iget v9, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v9, v7, v9

    sub-int/2addr v7, v2

    .line 12228
    iget v10, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v7, v10

    .line 12230
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 12232
    iget v11, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    and-int/2addr v6, v11

    and-int/lit8 v11, v11, 0x70

    .line 12235
    iget-boolean v12, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a:Z

    .line 12237
    iget-object v13, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->i:[I

    .line 12238
    iget-object v14, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->j:[I

    .line 12240
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v15

    .line 12241
    invoke-static {v6, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    if-eq v6, v8, :cond_b

    if-eq v6, v5, :cond_a

    .line 12254
    iget v5, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    goto :goto_5

    .line 12244
    :cond_a
    iget v5, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    add-int v5, v5, p4

    sub-int v5, v5, p2

    iget v6, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    sub-int/2addr v5, v6

    goto :goto_5

    .line 12249
    :cond_b
    iget v5, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    sub-int v6, p4, p2

    iget v15, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    sub-int/2addr v6, v15

    const/4 v15, 0x2

    div-int/2addr v6, v15

    add-int/2addr v5, v6

    :goto_5
    if-eqz v1, :cond_c

    add-int/lit8 v1, v10, -0x1

    const/4 v15, -0x1

    goto :goto_6

    :cond_c
    move v15, v8

    const/4 v1, 0x0

    :goto_6
    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v10, :cond_17

    mul-int v18, v15, v5

    add-int v8, v1, v18

    .line 12553
    invoke-virtual {v0, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    add-int/lit8 v17, v17, 0x0

    move/from16 p3, v1

    move/from16 p5, v10

    move/from16 v20, v11

    move/from16 v21, v12

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v12, -0x1

    goto/16 :goto_b

    .line 12272
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_16

    .line 12273
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 12274
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 12278
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 p3, v1

    move-object/from16 v1, v20

    check-cast v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v12, :cond_e

    move/from16 p5, v10

    .line 12280
    iget v10, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    move/from16 v20, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_f

    .line 12281
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v10

    goto :goto_8

    :cond_e
    move/from16 p5, v10

    move/from16 v20, v11

    :cond_f
    const/4 v10, -0x1

    .line 12284
    :goto_8
    iget v11, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->b:I

    if-gez v11, :cond_10

    move/from16 v11, v20

    :cond_10
    and-int/lit8 v11, v11, 0x70

    move/from16 v21, v12

    const/16 v12, 0x10

    if-eq v11, v12, :cond_14

    const/16 v12, 0x30

    if-eq v11, v12, :cond_12

    const/16 v12, 0x50

    if-eq v11, v12, :cond_11

    move v10, v2

    const/4 v12, -0x1

    goto :goto_9

    :cond_11
    sub-int v11, v9, v6

    .line 12314
    iget v12, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    const/4 v12, -0x1

    if-eq v10, v12, :cond_13

    .line 12316
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v22, v22, v10

    const/4 v10, 0x2

    .line 12317
    aget v23, v14, v10

    sub-int v23, v23, v22

    sub-int v10, v11, v23

    goto :goto_9

    :cond_12
    const/4 v12, -0x1

    .line 12291
    iget v11, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v2

    if-eq v10, v12, :cond_13

    const/16 v19, 0x1

    .line 12293
    aget v22, v13, v19

    sub-int v22, v22, v10

    add-int v10, v11, v22

    goto :goto_9

    :cond_13
    move v10, v11

    goto :goto_9

    :cond_14
    const/4 v12, -0x1

    sub-int v10, v7, v6

    const/4 v11, 0x2

    .line 12309
    div-int/2addr v10, v11

    add-int/2addr v10, v2

    iget v11, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    .line 12325
    :goto_9
    invoke-direct {v0, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 12326
    iget v8, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->l:I

    add-int v17, v17, v8

    .line 12329
    :cond_15
    iget v8, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int v17, v17, v8

    add-int/lit8 v8, v17, 0x0

    .line 12330
    invoke-static {v3, v8, v10, v4, v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(Landroid/view/View;IIII)V

    .line 12332
    iget v1, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v1

    const/4 v1, 0x0

    add-int/2addr v4, v1

    add-int v17, v17, v4

    add-int/lit8 v5, v5, 0x0

    goto :goto_a

    :cond_16
    move/from16 p3, v1

    move/from16 p5, v10

    move/from16 v20, v11

    move/from16 v21, v12

    const/4 v1, 0x0

    const/4 v12, -0x1

    :goto_a
    const/4 v3, 0x1

    :goto_b
    add-int/2addr v5, v3

    move/from16 v1, p3

    move/from16 v10, p5

    move v8, v3

    move/from16 v11, v20

    move/from16 v12, v21

    const/16 v3, 0x50

    const/16 v4, 0x10

    goto/16 :goto_7

    :cond_17
    return-void
.end method

.method protected onMeasure(II)V
    .locals 28

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 599
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2c

    const/4 v10, 0x0

    .line 5643
    iput v10, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    .line 5651
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 5653
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 5654
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 5659
    iget v14, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    .line 5660
    iget-boolean v15, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->h:Z

    const/16 v16, 0x0

    move/from16 v18, v9

    move v2, v10

    move v3, v2

    move v4, v3

    move v9, v4

    move/from16 v17, v9

    move/from16 v19, v17

    move/from16 v20, v19

    move/from16 v0, v16

    const/high16 v1, -0x80000000

    :goto_0
    const/16 v5, 0x8

    move/from16 v22, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v4, v11, :cond_10

    .line 6553
    invoke-virtual {v6, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    if-nez v23, :cond_0

    .line 5669
    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    add-int/2addr v3, v10

    iput v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    move/from16 v27, v11

    move/from16 v3, v22

    const/4 v5, 0x1

    const/high16 v8, -0x80000000

    move/from16 v22, v13

    goto/16 :goto_a

    .line 5673
    :cond_0
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v5, :cond_f

    .line 5678
    invoke-direct {v6, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5679
    iget v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    iget v10, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->m:I

    add-int/2addr v5, v10

    iput v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    .line 5682
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 5684
    iget v5, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->a:F

    add-float v24, v0, v5

    if-ne v13, v3, :cond_2

    .line 5686
    iget v0, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_2

    iget v0, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->a:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_2

    .line 5690
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    .line 5691
    iget v5, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v0

    iget v3, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    move v7, v2

    move/from16 v27, v11

    move/from16 v21, v22

    const/high16 v8, -0x80000000

    const/16 v17, 0x1

    move/from16 v22, v13

    move v13, v4

    goto/16 :goto_3

    .line 5696
    :cond_2
    iget v0, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->a:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3

    const/4 v0, -0x2

    .line 5702
    iput v0, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/high16 v5, -0x80000000

    :goto_1
    cmpl-float v0, v24, v16

    if-nez v0, :cond_4

    .line 5709
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    move/from16 v25, v0

    goto :goto_2

    :cond_4
    const/16 v25, 0x0

    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v26, v1

    move-object/from16 v1, v23

    move v7, v2

    move/from16 v2, p1

    move/from16 v8, v22

    move/from16 v22, v13

    const/high16 v13, 0x40000000    # 2.0f

    move v13, v4

    move/from16 v4, p2

    move/from16 v21, v8

    move/from16 v27, v11

    const/high16 v8, -0x80000000

    move v11, v5

    move/from16 v5, v25

    .line 7063
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    if-eq v11, v8, :cond_5

    .line 5714
    iput v11, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 5717
    :cond_5
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 5718
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    add-int v2, v1, v0

    .line 5719
    iget v3, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    if-eqz v15, :cond_6

    move/from16 v1, v26

    .line 5723
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_6
    move/from16 v1, v26

    :goto_3
    if-ltz v14, :cond_7

    add-int/lit8 v4, v13, 0x1

    if-ne v14, v4, :cond_7

    .line 5732
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    iput v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->c:I

    :cond_7
    if-ge v13, v14, :cond_9

    .line 5738
    iget v0, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->a:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_8

    goto :goto_4

    .line 5739
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_a

    .line 5746
    iget v0, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    .line 5755
    :goto_5
    iget v2, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v3, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 5756
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 5757
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5758
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v11, v20

    invoke-static {v11, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v20

    if-eqz v18, :cond_b

    .line 5760
    iget v4, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    const/16 v18, 0x1

    goto :goto_6

    :cond_b
    const/16 v18, 0x0

    .line 5761
    :goto_6
    iget v4, v10, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->a:F

    cmpl-float v4, v4, v16

    if-lez v4, :cond_d

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v2, v3

    .line 5766
    :goto_7
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v7, v2

    move/from16 v3, v21

    goto :goto_9

    :cond_d
    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    move v2, v3

    :goto_8
    move/from16 v10, v21

    .line 5769
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_9

    :cond_f
    move v7, v2

    move/from16 v27, v11

    move/from16 v11, v20

    move/from16 v10, v22

    const/high16 v8, -0x80000000

    move/from16 v22, v13

    move v13, v4

    move/from16 v24, v0

    move v3, v10

    :goto_9
    add-int/lit8 v4, v13, 0x0

    move v2, v7

    move/from16 v0, v24

    const/4 v5, 0x1

    :goto_a
    add-int/2addr v4, v5

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v13, v22

    move/from16 v11, v27

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_10
    move v7, v2

    move/from16 v27, v11

    move/from16 v11, v20

    move/from16 v10, v22

    const/high16 v8, -0x80000000

    move/from16 v22, v13

    .line 5776
    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    if-lez v2, :cond_11

    move/from16 v2, v27

    invoke-direct {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 5777
    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    iget v4, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->m:I

    add-int/2addr v3, v4

    iput v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    goto :goto_b

    :cond_11
    move/from16 v2, v27

    :cond_12
    :goto_b
    if-eqz v15, :cond_16

    move/from16 v3, v22

    if-eq v3, v8, :cond_13

    if-nez v3, :cond_17

    :cond_13
    const/4 v4, 0x0

    .line 5782
    iput v4, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    move v8, v4

    :goto_c
    if-ge v8, v2, :cond_17

    .line 7553
    invoke-virtual {v6, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_14

    .line 5788
    iget v13, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    add-int/2addr v13, v4

    iput v13, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    goto :goto_d

    .line 5792
    :cond_14
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_15

    add-int/lit8 v8, v8, 0x0

    goto :goto_d

    .line 5798
    :cond_15
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 5800
    iget v13, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    add-int v14, v13, v1

    .line 5801
    iget v5, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v5

    iget v4, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v4

    const/4 v4, 0x0

    add-int/2addr v14, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    :goto_d
    const/4 v4, 0x1

    add-int/2addr v8, v4

    const/4 v4, 0x0

    const/16 v5, 0x8

    goto :goto_c

    :cond_16
    move/from16 v3, v22

    :cond_17
    const/4 v4, 0x1

    .line 5807
    iget v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    iget v8, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v13, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v8, v13

    add-int/2addr v5, v8

    iput v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    .line 5809
    iget v5, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    .line 5812
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v8, p2

    const/4 v13, 0x0

    .line 5815
    invoke-static {v5, v8, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v5

    const v13, 0xffffff

    and-int/2addr v13, v5

    .line 5821
    iget v14, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    sub-int/2addr v13, v14

    if-nez v17, :cond_1b

    if-eqz v13, :cond_18

    cmpl-float v14, v0, v16

    if-lez v14, :cond_18

    goto :goto_f

    .line 5913
    :cond_18
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_1a

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1a

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1a

    .line 9553
    invoke-virtual {v6, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 5923
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v10, 0x8

    if-eq v7, v10, :cond_19

    .line 5927
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 5929
    iget v7, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->a:F

    cmpl-float v7, v7, v16

    if-lez v7, :cond_19

    .line 5932
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 5934
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 5931
    invoke-virtual {v4, v7, v13}, Landroid/view/View;->measure(II)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1a
    move/from16 v27, v2

    move/from16 v2, p1

    goto/16 :goto_18

    .line 5823
    :cond_1b
    :goto_f
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->g:F

    cmpl-float v7, v1, v16

    if-lez v7, :cond_1c

    move v0, v1

    :cond_1c
    const/4 v1, 0x0

    .line 5825
    iput v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    move v1, v0

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v2, :cond_29

    .line 8553
    invoke-virtual {v6, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5830
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_28

    .line 5834
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 5836
    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->a:F

    cmpl-float v17, v4, v16

    if-lez v17, :cond_21

    if-lez v13, :cond_21

    int-to-float v15, v13

    mul-float/2addr v15, v4

    div-float/2addr v15, v1

    float-to-int v15, v15

    sub-float/2addr v1, v4

    sub-int/2addr v13, v15

    .line 5845
    iget v4, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    move/from16 v17, v1

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v4, v1

    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v1

    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v1

    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v27, v2

    move/from16 v2, p1

    invoke-static {v2, v4, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 5851
    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v4, :cond_1f

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1d

    goto :goto_11

    :cond_1d
    if-lez v15, :cond_1e

    goto :goto_12

    :cond_1e
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v15, 0x0

    goto :goto_13

    .line 5854
    :cond_1f
    :goto_11
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    if-gez v4, :cond_20

    const/4 v4, 0x0

    :cond_20
    move v15, v4

    :goto_12
    const/high16 v4, 0x40000000    # 2.0f

    .line 5865
    :goto_13
    invoke-static {v15, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 5864
    invoke-virtual {v7, v1, v15}, Landroid/view/View;->measure(II)V

    .line 5870
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    invoke-static {v11, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v11

    goto :goto_14

    :cond_21
    move/from16 v27, v2

    move/from16 v2, p1

    if-gez v13, :cond_23

    .line 5872
    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v4, v15, :cond_23

    .line 5873
    iget v4, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v15, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v4, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    invoke-static {v2, v4, v15}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v4

    .line 5877
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    if-gez v15, :cond_22

    const/4 v15, 0x0

    .line 5881
    :cond_22
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v15, v17

    sub-int v13, v13, v17

    move/from16 v17, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 5884
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 5883
    invoke-virtual {v7, v4, v15}, Landroid/view/View;->measure(II)V

    .line 5887
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    invoke-static {v11, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v11

    goto :goto_14

    :cond_23
    move/from16 v17, v1

    .line 5892
    :goto_14
    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 5893
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 5894
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v12, v15, :cond_24

    .line 5896
    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v21, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_25

    const/4 v15, 0x1

    goto :goto_15

    :cond_24
    move/from16 v21, v1

    const/4 v1, -0x1

    :cond_25
    const/4 v15, 0x0

    :goto_15
    if-eqz v15, :cond_26

    move/from16 v4, v21

    .line 5899
    :cond_26
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v18, :cond_27

    .line 5902
    iget v10, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    if-ne v10, v1, :cond_27

    const/4 v10, 0x1

    goto :goto_16

    :cond_27
    const/4 v10, 0x0

    .line 5904
    :goto_16
    iget v15, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    .line 5905
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v15

    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v1

    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v1

    const/4 v1, 0x0

    add-int/2addr v7, v1

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    move/from16 v18, v10

    move v10, v4

    goto :goto_17

    :cond_28
    move/from16 v17, v1

    move/from16 v27, v2

    const/4 v1, 0x0

    move/from16 v2, p1

    :goto_17
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v17

    move/from16 v2, v27

    const/4 v4, 0x1

    goto/16 :goto_10

    :cond_29
    move/from16 v27, v2

    move/from16 v2, p1

    .line 5910
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->f:I

    move v0, v10

    :goto_18
    if-nez v18, :cond_2a

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_2a

    goto :goto_19

    :cond_2a
    move v0, v9

    .line 5945
    :goto_19
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 5948
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5950
    invoke-static {v0, v2, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v0, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setMeasuredDimension(II)V

    if-eqz v19, :cond_2b

    move/from16 v0, v27

    .line 5954
    invoke-direct {v6, v0, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a(II)V

    :cond_2b
    return-void

    .line 9995
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "horizontal mode not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1195
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1196
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->p:I

    if-eq p1, v0, :cond_0

    .line 1197
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->p:I

    .line 1198
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    if-nez p1, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 432
    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->a:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 540
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->b:I

    return-void

    .line 537
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base aligned child index out of range (0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->k:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->l:I

    .line 276
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->m:I

    goto :goto_0

    .line 278
    :cond_1
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->l:I

    .line 279
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->m:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 281
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setWillNotDraw(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->o:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1380
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 1389
    :cond_1
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    .line 1390
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1397
    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1398
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    .line 1399
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 463
    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1352
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    if-eq v0, p1, :cond_0

    .line 1353
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->d:I

    .line 1354
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 229
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->n:I

    if-eq p1, v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 232
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->n:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 p1, p1, 0x70

    .line 1406
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 1407
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->e:I

    .line 1408
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    .line 594
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->g:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
