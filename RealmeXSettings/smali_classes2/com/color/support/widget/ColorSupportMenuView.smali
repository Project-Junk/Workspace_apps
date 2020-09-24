.class public Lcom/color/support/widget/ColorSupportMenuView;
.super Landroid/view/View;
.source "ColorSupportMenuView.java"


# static fields
.field private static final MAX_ITEM_COUNTS:I = 0xa

.field static final STATE_ENABLED:[I

.field static final STATE_NORMAL:[I

.field static final STATE_PRESSED:[I

.field static final STATE_UNENABLED:[I

.field private static final TAG:Ljava/lang/String; = "ColorSupportMenuView"

.field static final VIEW_STATE_ENABLED:I = 0x101009e

.field static final VIEW_STATE_PRESSED:I = 0x10100a7


# instance fields
.field private mColorItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorSupportMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

.field private mIconCover:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsSelected:Z

.field private mItemCount:I

.field private mItemPadding:I

.field private mLineMaxCount:I

.field private mNormalColor:I

.field private mPaddingBottom:I

.field private mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectRect:Landroid/graphics/Rect;

.field private mSelectedColor:I

.field private mSelectedPosition:I

.field private mSingleLineViewHeight:I

.field private mTextMaxLength:I

.field private mTextPaddingSide:I

.field private mTextPaddingTop:I

.field private mTextSize:F

.field private mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

.field private mViewPaddingBottom:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 48
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x101009e

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/ColorSupportMenuView;->STATE_ENABLED:[I

    .line 49
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/color/support/widget/ColorSupportMenuView;->STATE_UNENABLED:[I

    const/4 v0, 0x2

    .line 50
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/color/support/widget/ColorSupportMenuView;->STATE_PRESSED:[I

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/color/support/widget/ColorSupportMenuView;->STATE_NORMAL:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        -0x10100a7
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSupportMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorSupportMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 55
    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    .line 57
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIsSelected:Z

    const/4 p2, -0x1

    .line 61
    iput p2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectedPosition:I

    const/high16 p2, 0x41f00000    # 30.0f

    .line 63
    iput p2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextSize:F

    .line 70
    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    .line 391
    new-instance p1, Lcom/color/support/widget/ColorSupportMenuView$1;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorSupportMenuView$1;-><init>(Lcom/color/support/widget/ColorSupportMenuView;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    .line 90
    iget-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    iget-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mViewWidth:I

    .line 93
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_padding_top:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaddingTop:I

    .line 94
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_padding_bottom:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaddingBottom:I

    .line 95
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_view_padding_bottom:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mViewPaddingBottom:I

    .line 96
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_item_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconHeight:I

    .line 97
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_item_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    .line 98
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_text_padding_top:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextPaddingTop:I

    .line 99
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_text_max_length:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextMaxLength:I

    .line 100
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_text_padding_side:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextPaddingSide:I

    .line 101
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_support_menu_item_textsize:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextSize:F

    .line 102
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$color;->color_support_menu_textcolor_select:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectedColor:I

    .line 103
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$color;->color_support_menu_textcolor_normal:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mNormalColor:I

    .line 104
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$drawable;->color_support_menu_item_cover:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconCover:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 109
    iget p3, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextSize:F

    const/4 v0, 0x4

    invoke-static {p3, p1, v0}, Lcom/color/support/c/a;->a(FFI)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextSize:F

    .line 111
    iget-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextSize:F

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    invoke-virtual {p0, p2}, Lcom/color/support/widget/ColorSupportMenuView;->setClickable(Z)V

    .line 119
    new-instance p1, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    invoke-direct {p1, p0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    .line 120
    iget-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    iget-object p3, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 1143
    iput-object p3, p1, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->a:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 121
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 122
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorSupportMenuView;FF)I
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSupportMenuView;->selectedIndex(FF)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorSupportMenuView;)Landroid/graphics/Paint;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorSupportMenuView;)Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectedPosition:I

    return p0
.end method

.method static synthetic access$1200(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemPadding:I

    return p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaddingTop:I

    return p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSingleLineViewHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorSupportMenuView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextPaddingTop:I

    return p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorSupportMenuView;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    return-object p0
.end method

.method private clearState()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorSupportMenuItem;

    .line 362
    invoke-virtual {v1}, Lcom/color/support/widget/ColorSupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_NORMAL:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIsSelected:Z

    .line 368
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->invalidate()V

    return-void
.end method

.method private getDisplayText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 2

    int-to-float p3, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    invoke-virtual {p2, p1, v0, p3, v1}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result p2

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p2, p3, :cond_0

    .line 319
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    sub-int/2addr p2, v0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getRect(ILandroid/graphics/Rect;)V
    .locals 4

    .line 272
    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemPadding:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    rem-int v2, p1, v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 275
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemPadding:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    add-int/2addr v2, v1

    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    rem-int v1, p1, v1

    mul-int/2addr v2, v1

    add-int/2addr v3, v2

    sub-int v1, v0, v3

    .line 280
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    if-ge p1, v0, :cond_1

    .line 281
    iget p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaddingTop:I

    goto :goto_0

    .line 285
    :cond_1
    iget p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSingleLineViewHeight:I

    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaddingTop:I

    add-int/2addr p1, v0

    .line 288
    :goto_0
    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    add-int/2addr v0, v1

    .line 289
    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconHeight:I

    add-int/2addr v2, p1

    .line 290
    invoke-virtual {p2, v1, p1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initStateListDrawable(I)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 162
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_PRESSED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_PRESSED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 164
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_ENABLED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 165
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_ENABLED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 166
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_UNENABLED:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 167
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_UNENABLED:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 168
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_NORMAL:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 169
    sget-object v2, Lcom/color/support/widget/ColorSupportMenuView;->STATE_NORMAL:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSupportMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 173
    invoke-direct {p0}, Lcom/color/support/widget/ColorSupportMenuView;->clearState()V

    return-void
.end method

.method private selectedIndex(FF)I
    .locals 3

    .line 297
    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    .line 300
    :cond_0
    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    if-gt v0, v2, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float p1, p2, p1

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    div-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float p1, v0, p1

    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 304
    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSingleLineViewHeight:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_4

    add-int/2addr p1, v2

    .line 309
    :cond_4
    :goto_0
    iget p2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    if-ge p1, p2, :cond_5

    return p1

    :cond_5
    return v1
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->a()V

    :cond_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 378
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/color/support/widget/ColorSupportMenuView;->selectedIndex(FF)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectedPosition:I

    goto :goto_0

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorSupportMenuView;->clearState()V

    .line 357
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 178
    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    return-void
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 201
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    if-gtz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    if-gt v0, v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemPadding:I

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemPadding:I

    .line 210
    :goto_0
    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemPadding:I

    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextPaddingSide:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextMaxLength:I

    const/4 v0, 0x0

    .line 211
    :goto_1
    iget v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    if-ge v0, v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/color/support/widget/ColorSupportMenuView;->getRect(ILandroid/graphics/Rect;)V

    .line 213
    iget-object v1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorSupportMenuItem;

    .line 214
    invoke-virtual {v1}, Lcom/color/support/widget/ColorSupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {v1}, Lcom/color/support/widget/ColorSupportMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/color/support/widget/ColorSupportMenuView;->mNormalColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 227
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v2, v2

    .line 228
    iget-object v3, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 235
    iget-object v4, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextPaddingTop:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 239
    invoke-virtual {v1}, Lcom/color/support/widget/ColorSupportMenuItem;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextMaxLength:I

    invoke-direct {p0, v1, v2, v5}, Lcom/color/support/widget/ColorSupportMenuView;->getDisplayText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v3

    int-to-float v3, v4

    .line 240
    iget-object v4, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 196
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 249
    iget p2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaddingTop:I

    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIconHeight:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mTextPaddingTop:I

    add-int/2addr p2, v0

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, p1

    add-int/2addr p2, v0

    iget p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mPaddingBottom:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSingleLineViewHeight:I

    .line 252
    iget p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    iget p2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    if-gt p1, p2, :cond_0

    .line 253
    iget p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSingleLineViewHeight:I

    goto :goto_0

    .line 255
    :cond_0
    iget p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSingleLineViewHeight:I

    mul-int/lit8 p1, p1, 0x2

    .line 258
    :goto_0
    iget p2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mViewWidth:I

    invoke-virtual {p0, p2, p1}, Lcom/color/support/widget/ColorSupportMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 326
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSupportMenuView;->clearState()V

    return v1

    .line 333
    :cond_1
    iget p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectedPosition:I

    if-ltz p1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSupportMenuItem;->getOnItemClickListener()Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mSelectedPosition:I

    invoke-interface {p1, v0}, Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;->onColorMenuItemClick(I)V

    .line 336
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorSupportMenuView;->clearState()V

    return v1

    .line 329
    :cond_3
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mIsSelected:Z

    .line 330
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSupportMenuView;->invalidate()V

    return v0
.end method

.method public setColorSupportMenuItem(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorSupportMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    .line 137
    iput v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    .line 138
    iget-object v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    const/4 v0, 0x6

    .line 140
    iput v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    .line 141
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    const/16 v0, 0x8

    .line 143
    iput v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    .line 144
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    iget v2, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mColorItemList:Ljava/util/List;

    goto :goto_0

    .line 146
    :cond_3
    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    :goto_0
    const/4 v0, 0x5

    if-le p1, v0, :cond_4

    .line 149
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    goto :goto_1

    .line 151
    :cond_4
    iput v0, p0, Lcom/color/support/widget/ColorSupportMenuView;->mLineMaxCount:I

    .line 153
    :goto_1
    iget p1, p0, Lcom/color/support/widget/ColorSupportMenuView;->mItemCount:I

    if-ge v1, p1, :cond_5

    .line 154
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorSupportMenuView;->initStateListDrawable(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 190
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    const/4 p1, 0x1

    return p1
.end method
