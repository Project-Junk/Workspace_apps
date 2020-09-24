.class public Landroidx/slice/widget/RowStyle;
.super Ljava/lang/Object;
.source "RowStyle.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mActionDividerHeight:I

.field private mBottomDividerEndPadding:I

.field private mBottomDividerStartPadding:I

.field private mContentEndPadding:I

.field private mContentStartPadding:I

.field private mEndItemEndPadding:I

.field private mEndItemStartPadding:I

.field private mTitleItemEndPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroidx/slice/view/R$styleable;->RowStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    :try_start_0
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_titleItemEndPadding:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    .line 47
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_contentStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    .line 49
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_contentEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    .line 51
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_endItemStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    .line 53
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_endItemEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    .line 55
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    .line 57
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    .line 59
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_actionDividerHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getActionDividerHeight()I
    .locals 1

    .line 95
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    return v0
.end method

.method public getBottomDividerEndPadding()I
    .locals 1

    .line 91
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    return v0
.end method

.method public getBottomDividerStartPadding()I
    .locals 1

    .line 87
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    return v0
.end method

.method public getContentEndPadding()I
    .locals 1

    .line 75
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    return v0
.end method

.method public getContentStartPadding()I
    .locals 1

    .line 71
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    return v0
.end method

.method public getEndItemEndPadding()I
    .locals 1

    .line 83
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    return v0
.end method

.method public getEndItemStartPadding()I
    .locals 1

    .line 79
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    return v0
.end method

.method public getTitleItemEndPadding()I
    .locals 1

    .line 67
    iget v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    return v0
.end method
