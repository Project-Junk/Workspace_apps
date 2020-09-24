.class public Lcom/color/support/widget/ColorInternetLabel;
.super Landroid/view/View;
.source "ColorInternetLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;,
        Lcom/color/support/widget/ColorInternetLabel$DrawItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final NARRAWBUTTONLINE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ColorInternetLabel"

.field private static final WIDERBUTTONLINE:I = 0x2


# instance fields
.field private mApostrophe:Ljava/lang/String;

.field private mButtonBg:Landroid/graphics/drawable/Drawable;

.field private mButtonGap:I

.field private mButtonHeight:I

.field private mButtonPaddingLeft:I

.field private mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

.field private mDefaultTextColor:I

.field private mDefaultTextSize:I

.field private mDisplayLine:I

.field private mDownClickIndex:I

.field private mIndex:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ColorInternetLabel$DrawItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLine:I

.field private mNarrowButtonDisplayWidth:I

.field private mNarrowButtonWidth:I

.field private mOnItemClickListener:Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;

.field private mPreviousIndex:I

.field private mSetLine:I

.field private mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

.field private mUserTextSize:I

.field private mViewPaddingLeft:I

.field private mWiderButtonDisplayWidth:I

.field private mWiderButtonWidth:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 70
    new-array v1, v0, [I

    sput-object v1, Lcom/color/support/widget/ColorInternetLabel;->KEY_STATE_NORMAL:[I

    const/4 v1, 0x1

    .line 73
    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v0

    sput-object v1, Lcom/color/support/widget/ColorInternetLabel;->KEY_STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorInternetLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorInternetLabelStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorInternetLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mViewPaddingLeft:I

    .line 47
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    .line 48
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonPaddingLeft:I

    .line 49
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mWiderButtonWidth:I

    .line 50
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mNarrowButtonWidth:I

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mDefaultTextSize:I

    .line 52
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mDefaultTextColor:I

    .line 53
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonHeight:I

    .line 54
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mWiderButtonDisplayWidth:I

    .line 55
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mNarrowButtonDisplayWidth:I

    .line 56
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mUserTextSize:I

    .line 57
    iput v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    const/4 v2, 0x0

    .line 58
    iput-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mApostrophe:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonBg:Landroid/graphics/drawable/Drawable;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    .line 64
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mSetLine:I

    .line 65
    iput v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mDisplayLine:I

    const/4 v2, 0x5

    .line 66
    iput v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mMaxLine:I

    .line 68
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mDownClickIndex:I

    .line 69
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    .line 593
    new-instance v2, Lcom/color/support/widget/ColorInternetLabel$1;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorInternetLabel$1;-><init>(Lcom/color/support/widget/ColorInternetLabel;)V

    iput-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 90
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 91
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mWindowWidth:I

    .line 93
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    .line 94
    iget v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mViewPaddingLeft:I

    if-ne v0, v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$dimen;->color_internet_label_paddingleft:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mViewPaddingLeft:I

    .line 97
    :cond_0
    iget v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    if-ne v0, v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$dimen;->color_internet_label_button_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    .line 100
    :cond_1
    iget v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonPaddingLeft:I

    if-ne v0, v2, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$dimen;->color_internet_label_button_paddingleft:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonPaddingLeft:I

    .line 103
    :cond_2
    iget v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mWindowWidth:I

    iget v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mViewPaddingLeft:I

    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/color/support/widget/ColorInternetLabel;->mWiderButtonWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 104
    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mNarrowButtonWidth:I

    .line 106
    iget-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mApostrophe:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcolor/support/v7/appcompat/R$string;->color_internet_label_apostrophe:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mApostrophe:Ljava/lang/String;

    .line 109
    :cond_3
    iget v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonHeight:I

    if-ne v0, v2, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_internet_label_button_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonHeight:I

    .line 113
    :cond_4
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorInternetLabel:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_internet_lable_textsize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 115
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorInternetLabel_colorButtonTextSize:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mDefaultTextSize:I

    .line 116
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$color;->colorHintTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 117
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorInternetLabel_colorButtonTextColor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mDefaultTextColor:I

    .line 119
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorInternetLabel_colorWhiteButton:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 120
    iput-object p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonBg:Landroid/graphics/drawable/Drawable;

    .line 121
    iget p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mWiderButtonWidth:I

    iget p3, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonPaddingLeft:I

    mul-int/lit8 v0, p3, 0x2

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mWiderButtonDisplayWidth:I

    .line 122
    iget p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mNarrowButtonWidth:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mNarrowButtonDisplayWidth:I

    .line 123
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 129
    iget p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mDefaultTextSize:I

    int-to-float p2, p2

    const/4 p3, 0x4

    invoke-static {p2, p1, p3}, Lcom/color/support/c/a;->a(FFI)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mDefaultTextSize:I

    .line 134
    new-instance p1, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    invoke-direct {p1, p0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    .line 135
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    iget-object p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 1143
    iput-object p2, p1, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->a:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 136
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 p1, 0x1

    .line 137
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorInternetLabel;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/color/support/widget/ColorInternetLabel;->mUserTextSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorInternetLabel;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/color/support/widget/ColorInternetLabel;->mDefaultTextSize:I

    return p0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/color/support/widget/ColorInternetLabel;->KEY_STATE_NORMAL:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/color/support/widget/ColorInternetLabel;->KEY_STATE_PRESSED:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorInternetLabel;II)I
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorInternetLabel;->getClickedTabIndex(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorInternetLabel;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorInternetLabel;)Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/color/support/widget/ColorInternetLabel;->mOnItemClickListener:Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorInternetLabel;)Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/color/support/widget/ColorInternetLabel;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    return-object p0
.end method

.method private fixString(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 149
    iget v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mWiderButtonDisplayWidth:I

    if-le v0, v1, :cond_3

    .line 150
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mApostrophe:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .line 152
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    .line 153
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 155
    iget v5, p0, Lcom/color/support/widget/ColorInternetLabel;->mWiderButtonDisplayWidth:I

    if-ge v3, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v4, :cond_2

    sub-int/2addr v0, v4

    .line 159
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mApostrophe:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private getClickedTabIndex(II)I
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 438
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 444
    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getLeft()I

    move-result v3

    if-ge v3, p1, :cond_2

    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getRight()I

    move-result v3

    if-le v3, p1, :cond_2

    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_2

    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    .line 445
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getBottom()I

    move-result v3

    if-le v3, p2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private isMultiPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setDisplayLine()V
    .locals 6

    .line 256
    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mSetLine:I

    if-lez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mSetLine:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mDisplayLine:I

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mMaxLine:I

    if-le v0, v1, :cond_1

    .line 260
    iput v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mDisplayLine:I

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mDisplayLine:I

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 265
    :goto_1
    iget v4, p0, Lcom/color/support/widget/ColorInternetLabel;->mDisplayLine:I

    if-ge v1, v4, :cond_4

    .line 266
    iget-object v4, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 269
    :cond_2
    iget-object v4, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    :goto_2
    if-ge v0, v2, :cond_5

    .line 274
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v2, v1, :cond_5

    .line 275
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getItem()Lcom/color/support/widget/help/ColorInternetHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/support/widget/help/ColorInternetHelper;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {v3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;

    move-result-object v3

    .line 277
    invoke-direct {p0, v1, v3}, Lcom/color/support/widget/ColorInternetLabel;->fixString(Ljava/lang/String;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    .line 278
    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v3, v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->setTitle(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->a()V

    :cond_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 580
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLine()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mDisplayLine:I

    return v0
.end method

.method public getViewHeight()I
    .locals 3

    .line 494
    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mSetLine:I

    if-lez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mSetLine:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mMaxLine:I

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    .line 504
    iget v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonHeight:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 454
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, -0x1

    .line 455
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mDownClickIndex:I

    .line 456
    iput v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v6, p0

    .line 291
    iget-object v0, v6, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/ColorInternetLabel;->setDisplayLine()V

    :cond_0
    const/4 v7, 0x0

    .line 294
    iput v7, v6, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    move v0, v7

    move v1, v0

    move v8, v1

    move v9, v8

    move v10, v9

    .line 295
    :goto_0
    iget v2, v6, Lcom/color/support/widget/ColorInternetLabel;->mDisplayLine:I

    if-ge v8, v2, :cond_8

    .line 297
    iget v2, v6, Lcom/color/support/widget/ColorInternetLabel;->mButtonHeight:I

    iget v3, v6, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    add-int/2addr v3, v2

    mul-int v11, v8, v3

    add-int v12, v11, v2

    .line 300
    iget-object v2, v6, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    move v15, v7

    :goto_1
    if-ge v15, v13, :cond_3

    if-nez v15, :cond_1

    .line 303
    iget v1, v6, Lcom/color/support/widget/ColorInternetLabel;->mViewPaddingLeft:I

    .line 304
    iget v0, v6, Lcom/color/support/widget/ColorInternetLabel;->mWiderButtonWidth:I

    add-int/2addr v0, v1

    :cond_1
    if-ne v15, v14, :cond_2

    .line 307
    iget v1, v6, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    add-int/2addr v0, v1

    .line 308
    iget v1, v6, Lcom/color/support/widget/ColorInternetLabel;->mWindowWidth:I

    iget v2, v6, Lcom/color/support/widget/ColorInternetLabel;->mViewPaddingLeft:I

    sub-int/2addr v1, v2

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_2

    :cond_2
    move/from16 v17, v0

    move/from16 v16, v1

    .line 310
    :goto_2
    iget-object v0, v6, Lcom/color/support/widget/ColorInternetLabel;->mButtonBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, v6, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget v2, v6, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v11

    move/from16 v3, v17

    move v4, v12

    move-object/from16 v5, p1

    .line 311
    invoke-virtual/range {v0 .. v5}, Lcom/color/support/widget/ColorInternetLabel;->onDrawBg(IIIILandroid/graphics/Canvas;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v17

    goto :goto_1

    :cond_3
    move v15, v0

    move/from16 v16, v1

    .line 315
    iget-object v0, v6, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v14, :cond_7

    move v0, v9

    move v9, v7

    :goto_3
    const/4 v1, 0x3

    if-ge v9, v1, :cond_6

    if-eq v9, v13, :cond_4

    .line 318
    iget v0, v6, Lcom/color/support/widget/ColorInternetLabel;->mViewPaddingLeft:I

    iget v1, v6, Lcom/color/support/widget/ColorInternetLabel;->mNarrowButtonWidth:I

    iget v2, v6, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    add-int/2addr v2, v1

    mul-int/2addr v2, v9

    add-int v10, v0, v2

    add-int v0, v10, v1

    :cond_4
    if-ne v9, v13, :cond_5

    .line 322
    iget v1, v6, Lcom/color/support/widget/ColorInternetLabel;->mButtonGap:I

    add-int/2addr v0, v1

    .line 323
    iget v1, v6, Lcom/color/support/widget/ColorInternetLabel;->mWindowWidth:I

    iget v2, v6, Lcom/color/support/widget/ColorInternetLabel;->mViewPaddingLeft:I

    sub-int/2addr v1, v2

    move v10, v0

    move v14, v1

    goto :goto_4

    :cond_5
    move v14, v0

    .line 325
    :goto_4
    iget-object v0, v6, Lcom/color/support/widget/ColorInternetLabel;->mButtonBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, v6, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget v2, v6, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v14

    move v4, v12

    move-object/from16 v5, p1

    .line 326
    invoke-virtual/range {v0 .. v5}, Lcom/color/support/widget/ColorInternetLabel;->onDrawBg(IIIILandroid/graphics/Canvas;)V

    add-int/lit8 v9, v9, 0x1

    move v0, v14

    goto :goto_3

    :cond_6
    move v9, v0

    :cond_7
    add-int/lit8 v8, v8, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    .line 330
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/color/support/widget/ColorInternetLabel;->onDrawTitle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDrawBg(IIIILandroid/graphics/Canvas;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 357
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    :cond_0
    iget p5, p0, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 361
    iget-object p5, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p5, p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->setLeft(I)V

    .line 362
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget p5, p0, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->setTop(I)V

    .line 363
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1, p3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->setRight(I)V

    .line 364
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget p2, p0, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1, p4}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->setBottom(I)V

    .line 367
    :cond_1
    iget p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mIndex:I

    return-void
.end method

.method protected onDrawTitle(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getItem()Lcom/color/support/widget/help/ColorInternetHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/support/widget/help/ColorInternetHelper;->getTitleColor()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mDefaultTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getItem()Lcom/color/support/widget/help/ColorInternetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/color/support/widget/help/ColorInternetHelper;->getTitleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 342
    :goto_1
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {v1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 345
    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {v3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 346
    iget-object v4, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 347
    iget v5, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonPaddingLeft:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 348
    iget-object v5, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonPaddingLeft:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    .line 349
    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getTop()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorInternetLabel;->mButtonHeight:I

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v1, v5

    int-to-float v3, v3

    .line 350
    iget-object v4, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {v4}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorInternetLabel;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 380
    invoke-direct {p0, v0, v1}, Lcom/color/support/widget/ColorInternetLabel;->getClickedTabIndex(II)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mDownClickIndex:I

    .line 382
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorInternetLabel;->isMultiPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 383
    iget p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mDownClickIndex:I

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    if-ltz v0, :cond_1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$500(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mOnItemClickListener:Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getItem()Lcom/color/support/widget/help/ColorInternetHelper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;->onItemClick(Lcom/color/support/widget/help/ColorInternetHelper;)V

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->onReleased()V

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->invalidate()V

    return v3

    .line 393
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto/16 :goto_1

    .line 405
    :cond_3
    iget p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    if-ltz p1, :cond_a

    .line 406
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$500(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 407
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->onReleased()V

    goto :goto_0

    .line 413
    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    if-ltz p1, :cond_6

    .line 414
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mOnItemClickListener:Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;

    if-eqz v0, :cond_5

    .line 415
    iget-object v1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->getItem()Lcom/color/support/widget/help/ColorInternetHelper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;->onItemClick(Lcom/color/support/widget/help/ColorInternetHelper;)V

    .line 417
    :cond_5
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$500(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 418
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->onReleased()V

    .line 421
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->invalidate()V

    goto :goto_1

    .line 395
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/color/support/widget/ColorInternetLabel;->getClickedTabIndex(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    const/4 p1, -0x1

    .line 396
    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mPreviousIndex:I

    if-ne p1, v0, :cond_8

    return v3

    :cond_8
    if-ltz v0, :cond_9

    .line 400
    iget-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->onPressed()V

    .line 402
    :cond_9
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->invalidate()V

    :cond_a
    :goto_1
    return v3
.end method

.method public setItemButton(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/help/ColorInternetHelper;",
            ">;)V"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    .line 516
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 518
    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/support/widget/help/ColorInternetHelper;

    invoke-direct {v4, p0, v5}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;-><init>(Lcom/color/support/widget/ColorInternetLabel;Lcom/color/support/widget/help/ColorInternetHelper;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_6

    add-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/help/ColorInternetHelper;

    invoke-virtual {v6}, Lcom/color/support/widget/help/ColorInternetHelper;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    .line 523
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/help/ColorInternetHelper;

    invoke-virtual {v6}, Lcom/color/support/widget/help/ColorInternetHelper;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/help/ColorInternetHelper;

    invoke-virtual {v6}, Lcom/color/support/widget/help/ColorInternetHelper;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 540
    iget-object v6, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {v6}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget v6, p0, Lcom/color/support/widget/ColorInternetLabel;->mNarrowButtonDisplayWidth:I

    mul-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 541
    iget-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v2, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_3
    if-gt v5, v3, :cond_3

    .line 548
    iget-object v6, p0, Lcom/color/support/widget/ColorInternetLabel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/support/widget/ColorInternetLabel$DrawItem;

    invoke-static {v6}, Lcom/color/support/widget/ColorInternetLabel$DrawItem;->access$400(Lcom/color/support/widget/ColorInternetLabel$DrawItem;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/color/support/widget/help/ColorInternetHelper;

    invoke-virtual {v7}, Lcom/color/support/widget/help/ColorInternetHelper;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    .line 549
    iget v7, p0, Lcom/color/support/widget/ColorInternetLabel;->mNarrowButtonDisplayWidth:I

    if-lt v6, v7, :cond_2

    move v5, v4

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_4
    if-eqz v5, :cond_4

    .line 556
    iget-object v2, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 559
    :cond_4
    iget-object v3, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_1

    :cond_5
    add-int/2addr v2, v4

    if-ge v2, v0, :cond_6

    .line 528
    iget-object v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mLine:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 566
    invoke-virtual {p0}, Lcom/color/support/widget/ColorInternetLabel;->invalidate()V

    :cond_7
    return-void
.end method

.method public setItemClickListener(Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mOnItemClickListener:Lcom/color/support/widget/ColorInternetLabel$OnItemClickListener;

    return-void
.end method

.method public setLine(I)V
    .locals 1

    .line 471
    iget v0, p0, Lcom/color/support/widget/ColorInternetLabel;->mMaxLine:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 474
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mSetLine:I

    return-void
.end method

.method public setTitleSize(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/color/support/widget/ColorInternetLabel;->mUserTextSize:I

    return-void
.end method
