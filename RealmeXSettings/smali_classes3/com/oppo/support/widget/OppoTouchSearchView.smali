.class public Lcom/oppo/support/widget/OppoTouchSearchView;
.super Landroid/view/View;
.source "OppoTouchSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/support/widget/OppoTouchSearchView$Key;,
        Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;
    }
.end annotation


# static fields
.field private static final BG_ALIGN_MIDDLE:I = 0x0

.field private static final BG_ALIGN_RIGHT:I = 0x2

.field public static final CHAR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLLATOR_INSTANCE:Ljava/text/Collator;

.field private static final DEBUG:Z = false

.field private static final ENABLED:I = 0x0

.field private static final ENABLED_MASK:I = 0x20

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_PADDING_X:I = 0x1b

.field private static final MAX_NAME_NUM:I = 0x7

.field public static final MAX_SECTIONS_NUM:I = 0x1e

.field public static final MAX_SECTIONS_NUM_WITH_DOT:I = 0x17

.field public static final MIN_SECTIONS_NUM:I = 0x5

.field private static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field private static final PFLAG_PRESSED:I = 0x4000

.field private static final SEARCH_OFFSET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoTouchSearchView"

.field private static final VIEW_STATE_ACCELERATED:I = 0x40

.field private static final VIEW_STATE_ACTIVATED:I = 0x20

.field private static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field private static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field private static final VIEW_STATE_ENABLED:I = 0x8

.field private static final VIEW_STATE_FOCUSED:I = 0x4

.field private static final VIEW_STATE_HOVERED:I = 0x80

.field private static final VIEW_STATE_IDS:[I

.field private static final VIEW_STATE_PRESSED:I = 0x10

.field private static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final WELL_DRAWABLE_POSITION:I

.field private static sSTYLEABLELENGTH:I

.field private static sVIEWSETS:[[I

.field private static sVIEWSTATESETS:[[[I


# instance fields
.field private mActivePointerId:I

.field private mBackgroundAlignMode:I

.field private mBackgroundLeftMargin:I

.field private mBackgroundRightMargin:I

.field private mBackgroundWidth:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCollectHighLight:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultTextSize:I

.field private mDismissTask:Ljava/lang/Runnable;

.field private mDisplayKey:Ljava/lang/CharSequence;

.field private mDot:Ljava/lang/CharSequence;

.field private mDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mDotDrawableHeight:I

.field private mDotDrawableWidth:I

.field private mDotDrawables:[Landroid/graphics/drawable/Drawable;

.field private final mFirstAlphaListener:Lcom/facebook/rebound/SpringListener;

.field private mFirstIsCharacter:Z

.field private mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

.field private mFirstLayout:Z

.field private final mFirstSpring:Lcom/facebook/rebound/Spring;

.field private mFontFace:Landroid/graphics/Typeface;

.field private mFrameChanged:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private mInnerClosing:Z

.field private mKEYS:[Ljava/lang/String;

.field private mKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/support/widget/OppoTouchSearchView$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

.field private mKeyDrawableHeight:I

.field private mKeyDrawableNames:[Ljava/lang/String;

.field private mKeyDrawableOffset:I

.field private mKeyDrawableWidth:I

.field private mKeyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:I

.field private mKeyPaddingX:I

.field private mKeyPaddingY:I

.field private mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/support/widget/OppoTouchSearchView$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeys:[Lcom/oppo/support/widget/OppoTouchSearchView$Key;

.field private mLastKeyIndices:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLocationInScreen:[I

.field private mOppoTouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

.field private mPopupFirstTextHeight:I

.field private mPopupFirstTextView:Landroid/widget/TextView;

.field private mPopupFirstTextWidth:I

.field private mPopupSecondTextHeight:I

.field private mPopupSecondTextViewSize:I

.field private mPopupSecondTextWidth:I

.field private mPopupWinSecondNameMaxHeight:I

.field private mPopupWindowEndMargin:I

.field private mPopupWindowFirstKeyTextSize:I

.field private mPopupWindowFirstLocalx:I

.field private mPopupWindowFirstLocaly:I

.field private mPopupWindowFirstTextColor:I

.field private mPopupWindowMinTop:I

.field private mPopupWindowSecondLocalx:I

.field private mPopupWindowSecondLocaly:I

.field private mPositionRect:Landroid/graphics/Rect;

.field private mPreviousIndex:I

.field protected mPrivateFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollViewHeight:I

.field private mSecondKeyContainer:Landroid/view/ViewGroup;

.field private mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

.field private mSecondKeyScrollView:Landroid/widget/ScrollView;

.field private mSecondPopupMargin:I

.field private mSecondPopupOffset:I

.field private mSections:[Ljava/lang/String;

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTouchFlag:Z

.field private mTouchSearchActionListener:Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;

.field private mUNIONKEYS:[Ljava/lang/String;

.field private mUnionEnable:Z

.field private mUserTextColor:Landroid/content/res/ColorStateList;

.field private mUserTextSize:I

.field private mWhetherDrawDot:Z

.field private mWhetherUnion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 101
    new-instance v0, Lcom/oppo/support/widget/OppoTouchSearchView$1;

    invoke-direct {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$1;-><init>()V

    sput-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->CHAR_COMPARATOR:Ljava/util/Comparator;

    .line 167
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->COLLATOR_INSTANCE:Ljava/text/Collator;

    const/16 v0, 0x14

    .line 169
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    .line 363
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ViewDrawableStates:[I

    array-length v0, v0

    sput v0, Lcom/oppo/support/widget/OppoTouchSearchView;->sSTYLEABLELENGTH:I

    .line 364
    sget-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 365
    sget v2, Lcom/oppo/support/widget/OppoTouchSearchView;->sSTYLEABLELENGTH:I

    if-ne v1, v2, :cond_6

    .line 368
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 369
    :goto_0
    sget v4, Lcom/oppo/support/widget/OppoTouchSearchView;->sSTYLEABLELENGTH:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 370
    sget-object v4, Lcolor/support/v7/appcompat/R$styleable;->ViewDrawableStates:[I

    aget v4, v4, v3

    move v6, v2

    .line 371
    :goto_1
    sget-object v7, Lcom/oppo/support/widget/OppoTouchSearchView;->VIEW_STATE_IDS:[I

    array-length v8, v7

    if-ge v6, v8, :cond_1

    .line 372
    aget v8, v7, v6

    if-ne v8, v4, :cond_0

    mul-int/lit8 v8, v3, 0x2

    .line 373
    aput v4, v0, v8

    add-int/2addr v8, v5

    add-int/lit8 v9, v6, 0x1

    .line 374
    aget v7, v7, v9

    aput v7, v0, v8

    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    shl-int v1, v5, v1

    .line 378
    new-array v3, v1, [[[I

    sput-object v3, Lcom/oppo/support/widget/OppoTouchSearchView;->sVIEWSTATESETS:[[[I

    .line 379
    new-array v1, v1, [[I

    sput-object v1, Lcom/oppo/support/widget/OppoTouchSearchView;->sVIEWSETS:[[I

    move v1, v2

    .line 380
    :goto_2
    sget-object v3, Lcom/oppo/support/widget/OppoTouchSearchView;->sVIEWSETS:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 382
    sget-object v4, Lcom/oppo/support/widget/OppoTouchSearchView;->sVIEWSETS:[[I

    new-array v3, v3, [I

    aput-object v3, v4, v1

    move v3, v2

    move v4, v3

    .line 384
    :goto_3
    array-length v5, v0

    if-ge v3, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 385
    aget v5, v0, v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_3

    .line 386
    sget-object v5, Lcom/oppo/support/widget/OppoTouchSearchView;->sVIEWSETS:[[I

    aget-object v5, v5, v1

    add-int/lit8 v6, v4, 0x1

    aget v7, v0, v3

    aput v7, v5, v4

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 366
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDS array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, p1, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 403
    sget v0, Lcolor/support/v7/appcompat/R$attr;->oppoTouchSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 418
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 224
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    const/4 v1, 0x1

    .line 250
    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 254
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 258
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 264
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 265
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUnionEnable:Z

    const-string v2, ""

    .line 267
    iput-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    const/4 v2, -0x1

    .line 304
    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 306
    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundWidth:I

    .line 312
    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    .line 313
    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLastKeyIndices:I

    const/4 v3, 0x0

    .line 315
    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    .line 317
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    .line 318
    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPreviousIndex:I

    .line 319
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    .line 320
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCollectHighLight:Z

    .line 321
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mInnerClosing:Z

    .line 323
    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 324
    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    .line 325
    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 327
    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDefaultTextSize:I

    .line 328
    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUserTextSize:I

    .line 329
    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    .line 335
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 336
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v3}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    .line 338
    new-instance v3, Lcom/oppo/support/widget/OppoTouchSearchView$2;

    invoke-direct {v3, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$2;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstAlphaListener:Lcom/facebook/rebound/SpringListener;

    .line 348
    new-instance v3, Lcom/oppo/support/widget/OppoTouchSearchView$3;

    invoke-direct {v3, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$3;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    .line 357
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 358
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLocationInScreen:[I

    .line 419
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 420
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    .line 421
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 423
    sget-object v4, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 424
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoUnionEnable:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 426
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoBackgroundAlignMode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    .line 427
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoMarginLeft:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 428
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoMarginRigh:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 430
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinFirstHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    .line 431
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    if-ne v2, p3, :cond_0

    .line 432
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_popup_first_default_height:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    .line 434
    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinFirstWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    .line 435
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    if-ne v2, p3, :cond_1

    .line 436
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_popup_first_default_width:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    .line 439
    :cond_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinSecondHeight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextHeight:I

    .line 440
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextHeight:I

    if-ne v2, p3, :cond_2

    .line 441
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextHeight:I

    .line 443
    :cond_2
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinSecondWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextWidth:I

    .line 444
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextWidth:I

    if-ne v2, p3, :cond_3

    .line 445
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextWidth:I

    .line 448
    :cond_3
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinSecondOffset:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupOffset:I

    .line 449
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupOffset:I

    if-ne v2, p3, :cond_4

    .line 450
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_popupwin_default_offset:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupOffset:I

    .line 453
    :cond_4
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinSecondMargin:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupMargin:I

    .line 454
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupMargin:I

    if-ne v2, p3, :cond_5

    .line 455
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_popupwin_second_marginEnd:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupMargin:I

    .line 458
    :cond_5
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinMinTop:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 459
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ne v2, p3, :cond_6

    .line 460
    sget p3, Lcolor/support/v7/appcompat/R$integer;->oppo_touchsearch_popupwin_default_top_mincoordinate:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 463
    :cond_6
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinSecondTextSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextViewSize:I

    .line 464
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextViewSize:I

    if-ne v2, p3, :cond_7

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_popupwin_second_textsize:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextViewSize:I

    .line 467
    :cond_7
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_popupname_max_height:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWinSecondNameMaxHeight:I

    .line 468
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinFirstTextSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    .line 469
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    if-ne v2, p3, :cond_8

    .line 470
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_popupwin_first_textsize:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    .line 473
    :cond_8
    sget p3, Lcolor/support/v7/appcompat/R$color;->color_touchsearch_popup_text_color:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstTextColor:I

    .line 474
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoPopupWinFirstTextColor:I

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstTextColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstTextColor:I

    .line 475
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_right_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr p3, v1

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 477
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_popupwin_right_margin:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowEndMargin:I

    .line 478
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_char_offset:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 481
    sget p3, Lcolor/support/v7/appcompat/R$string;->oppo_touchsearch_dot:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    .line 482
    sget p3, Lcolor/support/v7/appcompat/R$drawable;->oppo_touchsearch_point:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 483
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoKeyCollect:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoKeyTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 485
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoFirstIsCharacter:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    .line 486
    sget p3, Lcolor/support/v7/appcompat/R$drawable;->color_touchsearch_first_popup_bg:I

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v3, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mOppoTouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    .line 488
    iget-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_9

    .line 489
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 490
    iget-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 492
    :cond_9
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->OppoTouchSearchView_oppoKeyTextSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDefaultTextSize:I

    .line 493
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDefaultTextSize:I

    if-ne v2, p3, :cond_a

    .line 494
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_key_textsize:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDefaultTextSize:I

    .line 496
    :cond_a
    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundWidth:I

    if-ne v2, p3, :cond_b

    .line 497
    sget p3, Lcolor/support/v7/appcompat/R$dimen;->oppo_touchsearch_background_width:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundWidth:I

    .line 501
    :cond_b
    iget-boolean p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez p3, :cond_c

    .line 502
    sget p3, Lcolor/support/v7/appcompat/R$array;->normal_touchsearch_keys:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    goto :goto_0

    .line 504
    :cond_c
    sget p3, Lcolor/support/v7/appcompat/R$array;->special_touchsearch_keys:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    .line 507
    :goto_0
    sget p3, Lcolor/support/v7/appcompat/R$array;->union_touchsearch_keys:I

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    .line 509
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->initPopupWindow(Landroid/content/Context;)V

    .line 510
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 511
    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez p1, :cond_d

    .line 512
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->initIconState()V

    return-void

    .line 514
    :cond_d
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->initUnionState()V

    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .line 78
    sget-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->COLLATOR_INSTANCE:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/widget/PopupWindow;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oppo/support/widget/OppoTouchSearchView;)Lcom/facebook/rebound/Spring;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oppo/support/widget/OppoTouchSearchView;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUserTextSize:I

    return p0
.end method

.method static synthetic access$500(Lcom/oppo/support/widget/OppoTouchSearchView;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDefaultTextSize:I

    return p0
.end method

.method static synthetic access$600(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oppo/support/widget/OppoTouchSearchView;)Landroid/graphics/Typeface;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method private displayChange(Ljava/lang/CharSequence;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1259
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private drawKeys(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1375
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1381
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v0

    .line 1384
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v1

    .line 1385
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1386
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1389
    :cond_1
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 1394
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1396
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 1397
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v3

    .line 1398
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 1399
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1400
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 1401
    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v6}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 1402
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v5}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v5

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v2

    add-int/2addr v5, v7

    int-to-float v2, v6

    int-to-float v5, v5

    .line 1403
    invoke-virtual {p1, v4, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 1407
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1408
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 1409
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "#"

    .line 1411
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 1412
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v5}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1413
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v0

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v1

    add-int/2addr v0, v4

    int-to-float v1, v5

    int-to-float v0, v0

    .line 1414
    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private drawUnionKeys(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1327
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v0

    .line 1330
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v1

    .line 1331
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1332
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 1337
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    .line 1338
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 1339
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v3

    .line 1340
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    .line 1342
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 1343
    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v6}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 1344
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v5}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v5

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v2

    add-int/2addr v5, v7

    int-to-float v2, v6

    int-to-float v5, v5

    .line 1345
    invoke-virtual {p1, v4, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1349
    :cond_2
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v3, v0, -0x2

    if-ge v1, v3, :cond_4

    .line 1350
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1351
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v3

    .line 1352
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v4}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v4

    .line 1353
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1354
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1359
    :cond_4
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1360
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1361
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v1

    const-string v3, "#"

    .line 1363
    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 1364
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v5}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1365
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v2

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v0

    add-int/2addr v2, v4

    int-to-float v0, v5

    int-to-float v2, v2

    .line 1366
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private findCell(IIIILjava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/support/widget/OppoTouchSearchView$Key;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-le p3, p4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int p1, p3, p4

    .line 1063
    div-int/lit8 p1, p1, 0x2

    .line 1069
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v0

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v0, v1

    .line 1070
    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v1, v0

    if-lt p2, v0, :cond_1

    if-ge p2, v1, :cond_1

    return p1

    :cond_1
    if-ge p2, v0, :cond_2

    add-int/lit8 p4, p1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p1, 0x1

    goto :goto_0
.end method

.method static getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I
    .locals 4

    :goto_0
    const-string v0, "OppoTouchSearchView"

    const/4 v1, -0x1

    if-eqz p0, :cond_7

    if-ltz p1, :cond_7

    if-ltz p2, :cond_7

    if-eqz p3, :cond_7

    const-string v2, ""

    .line 791
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "#"

    .line 795
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-le p1, p2, :cond_2

    const-string p0, "getCharPositionInArray --- not find , return -1"

    .line 799
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int v0, p1, p2

    .line 803
    div-int/lit8 v0, v0, 0x2

    if-le v0, p2, :cond_3

    return v1

    .line 808
    :cond_3
    array-length v2, p0

    if-ne v2, v0, :cond_4

    return v1

    .line 812
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 813
    sget-object v2, Lcom/oppo/support/widget/OppoTouchSearchView;->COLLATOR_INSTANCE:Ljava/text/Collator;

    aget-object v3, p0, v0

    invoke-virtual {v2, v1, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 815
    :cond_5
    sget-object v2, Lcom/oppo/support/widget/OppoTouchSearchView;->COLLATOR_INSTANCE:Ljava/text/Collator;

    aget-object v3, p0, v0

    invoke-virtual {v2, v1, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_6

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    :cond_7
    :goto_1
    const-string p0, "getCharPositionInArray --- error,  return -1"

    .line 792
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const-string v1, ""

    .line 778
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 781
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 783
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private getCharacterStartIndex()I
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getKeyIndices(IILjava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/oppo/support/widget/OppoTouchSearchView$Key;",
            ">;)I"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v7

    move-object v6, p3

    .line 1095
    invoke-direct/range {v1 .. v6}, Lcom/oppo/support/widget/OppoTouchSearchView;->findCell(IIIILjava/util/ArrayList;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_2

    .line 1100
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v2

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_0

    move v7, v1

    goto :goto_0

    .line 1102
    :cond_0
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v2

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v2, v3

    if-le p2, v2, :cond_1

    goto :goto_0

    .line 1104
    :cond_1
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v1

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_2

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {p3}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result p3

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingY:I

    sub-int/2addr p3, v1

    if-ge p2, p3, :cond_2

    .line 1105
    div-int/lit8 v7, v0, 0x2

    goto :goto_0

    :cond_2
    move v7, p1

    :goto_0
    return v7
.end method

.method private initIconState()V
    .locals 7

    .line 625
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_0

    return-void

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 631
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-direct {v4, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    .line 634
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 635
    iget-boolean v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 636
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 637
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-direct {v5, p0, v2, v3}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_2
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v2

    :goto_1
    if-ge v2, v0, :cond_3

    .line 646
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, p0, v3, v6}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 648
    :cond_3
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    const-string v5, "#"

    invoke-direct {v4, p0, v3, v5}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    .line 650
    sget-object v3, Lcom/oppo/support/widget/OppoTouchSearchView;->sVIEWSTATESETS:[[[I

    sget-object v4, Lcom/oppo/support/widget/OppoTouchSearchView;->sVIEWSETS:[[I

    array-length v5, v4

    new-array v5, v5, [[I

    aput-object v5, v3, v2

    .line 651
    aget-object v3, v3, v2

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 653
    :cond_4
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 654
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_6

    .line 656
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    sget v4, Lcom/oppo/support/widget/OppoTouchSearchView;->sSTYLEABLELENGTH:I

    new-array v4, v4, [I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v3}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oppo/support/widget/OppoTouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 659
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_5

    .line 660
    invoke-virtual {p0, v2}, Lcom/oppo/support/widget/OppoTouchSearchView;->getIconState(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 661
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v4}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 5

    const-string v0, "layout_inflater"

    .line 519
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 520
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcolor/support/v7/appcompat/R$layout;->oppo_touchsearch_poppup_firstkey:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 521
    sget v1, Lcolor/support/v7/appcompat/R$id;->touchsearch_popup_content_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 524
    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    int-to-float v3, v3

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Lcom/color/support/c/a;->a(FFI)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    .line 525
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 526
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 527
    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 528
    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 529
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mOppoTouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 532
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    .line 533
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 534
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 535
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 536
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 538
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 541
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 542
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 543
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 545
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcolor/support/v7/appcompat/R$layout;->oppo_touchsearch_second_name:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 546
    sget v1, Lcolor/support/v7/appcompat/R$id;->touchsearch_popup_content_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    .line 547
    sget v1, Lcolor/support/v7/appcompat/R$id;->touchsearch_popup_content_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    .line 548
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    .line 549
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 550
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 551
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 552
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 554
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 556
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-le p1, v0, :cond_0

    .line 557
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 558
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 559
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 560
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private initUnionState()V
    .locals 7

    .line 567
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 573
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-direct {v4, p0, v1, v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_1
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    .line 577
    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v4, p0, v2, v5}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 579
    :cond_2
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 580
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getCharacterStartIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    const/4 v3, 0x2

    add-int/lit8 v4, v0, -0x2

    if-ge v1, v4, :cond_c

    .line 581
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v5, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, p0, v6, v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-direct {v4, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    if-eq v1, v3, :cond_b

    const/4 v3, 0x4

    if-eq v1, v3, :cond_a

    const/4 v3, 0x6

    if-eq v1, v3, :cond_9

    const/16 v3, 0x8

    if-eq v1, v3, :cond_8

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0xc

    if-eq v1, v3, :cond_6

    const/16 v3, 0xe

    if-eq v1, v3, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const-string v3, "X"

    .line 615
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    const-string v3, "Y"

    .line 616
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    const-string v3, "U"

    .line 611
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    const-string v3, "V"

    .line 612
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_5
    const-string v3, "S"

    .line 608
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_6
    const-string v3, "P"

    .line 604
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    const-string v3, "Q"

    .line 605
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_7
    const-string v3, "M"

    .line 600
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    const-string v3, "N"

    .line 601
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_8
    const-string v3, "J"

    .line 596
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    const-string v3, "K"

    .line 597
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_9
    const-string v3, "H"

    .line 593
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_a
    const-string v3, "E"

    .line 589
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    const-string v3, "F"

    .line 590
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_b
    const-string v3, "B"

    .line 585
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    const-string v3, "C"

    .line 586
    iput-object v3, v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_1

    .line 621
    :cond_c
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    const-string v3, "#"

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private invalidateKey(II)V
    .locals 3

    .line 1179
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getKeyIndices(IILjava/util/ArrayList;)I

    move-result v0

    .line 1193
    iget-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v1, :cond_1

    .line 1194
    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    .line 1195
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    iget p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    aget-object p1, p1, p2

    goto :goto_0

    .line 1197
    :cond_1
    new-instance v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-direct {v1, p0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;-><init>(Lcom/oppo/support/widget/OppoTouchSearchView;)V

    .line 1198
    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    .line 1199
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    .line 1200
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1206
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->displayChange(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1208
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingX:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    .line 1209
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getTop()I

    move-result v1

    .line 1208
    invoke-direct {p0, p2, v0, v1}, Lcom/oppo/support/widget/OppoTouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    .line 1210
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1211
    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz p2, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {p2, v0}, Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 1214
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidateTouchBarText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private invalidateTouchBarText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1223
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPreviousIndex:I

    const/4 v1, -0x1

    if-eq p1, v0, :cond_0

    if-eq v1, p1, :cond_0

    .line 1224
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->performFeedback()V

    .line 1227
    :cond_0
    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez p1, :cond_4

    .line 1228
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPreviousIndex:I

    if-eq p1, v0, :cond_2

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 1230
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCollectHighLight:Z

    .line 1231
    invoke-direct {p0, p1, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->setIconPressed(IZ)V

    .line 1232
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {p1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1233
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getText()Ljava/lang/String;

    .line 1234
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    invoke-virtual {p0, v0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1235
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    .line 1236
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->getIconState(I)[I

    move-result-object p1

    .line 1237
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 1238
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1239
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    .line 1241
    :cond_1
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->update()V

    .line 1247
    :cond_2
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPreviousIndex:I

    if-eq v1, p1, :cond_3

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    .line 1249
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->setItemRestore(I)V

    .line 1251
    :cond_3
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPreviousIndex:I

    :cond_4
    return-void
.end method

.method private isSectionsValidate()Z
    .locals 4

    .line 1670
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1672
    :cond_0
    aget-object v0, v0, v2

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    array-length v0, v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private onKeyChanged(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1282
    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    if-nez p2, :cond_0

    return-void

    .line 1289
    :cond_0
    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLocationInScreen:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p1, p3

    iget p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocaly:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    iget p3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 1292
    iget-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1293
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1294
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1295
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->startFirstAnimationToShow()V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1264
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1269
    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1274
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private performFeedback()V
    .locals 2

    const/16 v0, 0x12e

    const/4 v1, 0x0

    .line 1316
    invoke-static {p0, v0, v1}, Lcom/oppo/util/ColorOSHapticFeedbackUtils;->performHapticFeedback(Landroid/view/View;II)Z

    return-void
.end method

.method private setIconPressed(IZ)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/lit16 p2, v0, 0x4000

    goto :goto_0

    :cond_0
    and-int/lit16 p2, v0, -0x4001

    .line 733
    :goto_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setItemRestore(I)V
    .locals 3

    const/4 v0, 0x0

    .line 737
    invoke-direct {p0, p1, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->setIconPressed(IZ)V

    .line 738
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-virtual {v0}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 739
    invoke-virtual {p0, p1, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 740
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->update()V

    .line 741
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->getIconState(I)[I

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 745
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    invoke-static {p1}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->access$300(Lcom/oppo/support/widget/OppoTouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 746
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->update()V

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    return-void
.end method

.method private startFirstAnimationToDismiss()V
    .locals 4

    .line 1766
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 1767
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startFirstAnimationToShow()V
    .locals 4

    .line 1771
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocalx:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocaly:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 1775
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 1776
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private update()V
    .locals 6

    .line 861
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->whetherUnion()V

    .line 865
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 870
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingTop()I

    move-result v1

    .line 871
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 876
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellWidth:I

    .line 877
    div-int v3, v2, v0

    iput v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellHeight:I

    .line 879
    rem-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 882
    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellHeight:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 889
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 890
    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingX:I

    :cond_1
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 898
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    iget v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingX:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->setLeft(I)V

    .line 899
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    iget v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyPaddingY:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->setTop(I)V

    .line 900
    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateBackGroundBound()V
    .locals 6

    .line 1046
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1050
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    sub-int v2, v0, v1

    .line 1051
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundWidth:I

    sub-int v0, v2, v0

    goto :goto_0

    .line 1053
    :cond_1
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 1054
    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mBackgroundWidth:I

    add-int v2, v0, v1

    .line 1056
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v1, v0, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    return-void
.end method

.method private updatePopupWindow()V
    .locals 5

    .line 1012
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1016
    :cond_0
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLocationInScreen:[I

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowEndMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocalx:I

    .line 1018
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocalx:I

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocalx:I

    goto :goto_0

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLocationInScreen:[I

    aget v0, v0, v1

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowEndMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocalx:I

    .line 1021
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocalx:I

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocalx:I

    .line 1024
    :goto_0
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1028
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLocationInScreen:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocaly:I

    .line 1029
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1030
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocalx:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocaly:I

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 1031
    :cond_2
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1032
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1033
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1038
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1039
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->updateSecondPopup()V

    :cond_4
    return-void
.end method

.method private updateSecondPopup()V
    .locals 5

    .line 1834
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocalx:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocaly:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextWidth:I

    iget v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mScrollViewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1838
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mScrollViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1839
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocalx:I

    iget v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocaly:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private whetherUnion()V
    .locals 3

    .line 825
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUnionEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 826
    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 835
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellWidth:I

    .line 836
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v0, v2

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellHeight:I

    .line 846
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mCellHeight:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    if-ge v0, v2, :cond_1

    if-gez v0, :cond_1

    .line 848
    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 849
    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 852
    :cond_1
    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    return-void
.end method


# virtual methods
.method public closing()V
    .locals 3

    .line 1427
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPreviousIndex:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1428
    invoke-direct {p0, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->setItemRestore(I)V

    .line 1431
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_2

    .line 1432
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 1433
    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    if-ltz v2, :cond_1

    if-ge v2, v0, :cond_1

    .line 1434
    invoke-direct {p0, v2}, Lcom/oppo/support/widget/OppoTouchSearchView;->setItemRestore(I)V

    .line 1435
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->update()V

    .line 1437
    :cond_1
    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPreviousIndex:I

    .line 1439
    :cond_2
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1440
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->startFirstAnimationToDismiss()V

    .line 1442
    :cond_3
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    return-void
.end method

.method protected getIconState(I)[I
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/oppo/support/widget/OppoTouchSearchView;->onCreateIconState(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v0, v0, -0x401

    .line 687
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mIconState:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getTouchSearchActionListener()Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;

    return-object v0
.end method

.method protected iconStateChanged(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 674
    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->getIconState(I)[I

    move-result-object p1

    if-eqz p2, :cond_0

    .line 675
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 766
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 767
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstAlphaListener:Lcom/facebook/rebound/SpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 768
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1845
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;->onNameClick(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreateIconState(II)[I
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    or-int/lit8 v1, v1, 0x8

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x1

    .line 708
    :cond_2
    sget-object v0, Lcom/oppo/support/widget/OppoTouchSearchView;->sVIEWSTATESETS:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, v1

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 718
    array-length v0, p1

    add-int/2addr v0, p2

    new-array p2, v0, [I

    .line 719
    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 721
    :cond_4
    new-array p2, p2, [I

    :goto_1
    return-object p2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 772
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 773
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 774
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->closing()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1305
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1306
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_0

    .line 1307
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;)V

    return-void

    .line 1309
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->drawUnionKeys(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 994
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 999
    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz p1, :cond_2

    .line 1000
    :cond_0
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1001
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->update()V

    .line 1002
    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstLayout:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1003
    iput-boolean p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 1005
    :cond_1
    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz p1, :cond_2

    .line 1006
    iput-boolean p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFrameChanged:Z

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 761
    iput-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 762
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1127
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 1132
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1158
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 1150
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 1151
    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTouchFlag:Z

    const-string p1, ""

    .line 1152
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1153
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1154
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->startFirstAnimationToDismiss()V

    goto :goto_0

    .line 1136
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 1137
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 1138
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLocationInScreen:[I

    invoke-virtual {p0, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getLocationOnScreen([I)V

    .line 1139
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->updatePopupWindow()V

    .line 1142
    :cond_4
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1143
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 1144
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 1145
    invoke-direct {p0, v1, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidateKey(II)V

    :cond_5
    :goto_0
    return v2
.end method

.method protected refreshIconState(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    .line 669
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-virtual {p0, p1, p2}, Lcom/oppo/support/widget/OppoTouchSearchView;->iconStateChanged(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCharTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1648
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setCharTextSize(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1659
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUserTextSize:I

    :cond_0
    return-void
.end method

.method public setFirstKeyIsCharacter(Z)V
    .locals 0

    .line 1854
    iput-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mFirstIsCharacter:Z

    return-void
.end method

.method public setFirstKeyPopupDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1488
    :cond_0
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;

    iget-object v0, v0, Lcom/oppo/support/widget/OppoTouchSearchView$Key;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1489
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mOppoTouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFirstKeyPopupWindowSize(II)V
    .locals 1

    .line 1467
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    if-eq v0, p2, :cond_1

    .line 1468
    :cond_0
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    .line 1469
    iput p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    .line 1470
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1471
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1472
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1473
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1474
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->updatePopupWindow()V

    :cond_1
    return-void
.end method

.method public setName([Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1785
    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 1790
    :cond_1
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_2

    .line 1792
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextWidth:I

    iget v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move v5, v0

    :goto_1
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_3

    .line 1794
    iget-object v6, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v7, Lcolor/support/v7/appcompat/R$layout;->oppo_touchsearch_popup_content_item:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1795
    iget v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextViewSize:I

    .line 1796
    iget-object v8, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v7, v7

    const/4 v9, 0x4

    .line 1798
    invoke-static {v7, v8, v9}, Lcom/color/support/c/a;->a(FFI)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    .line 1799
    invoke-virtual {v6, v0, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1800
    iget-object v7, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1801
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_2
    sub-int v5, v2, v1

    if-ge v4, v5, :cond_3

    .line 1805
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    sub-int v6, v2, v4

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_4

    .line 1810
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1811
    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1813
    :cond_4
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1814
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1816
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1817
    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupSecondTextHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mScrollViewHeight:I

    .line 1818
    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mScrollViewHeight:I

    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWinSecondNameMaxHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mScrollViewHeight:I

    .line 1819
    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mScrollViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1820
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1821
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstLocaly:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mScrollViewHeight:I

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextHeight:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocaly:I

    .line 1823
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLocationInScreen:[I

    aget p1, p1, v3

    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSecondPopupOffset:I

    add-int/2addr p1, v0

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mScrollViewHeight:I

    sub-int/2addr p1, v1

    .line 1824
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLocationInScreen:[I

    aget v1, v1, v3

    sub-int/2addr v1, v0

    .line 1825
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocaly:I

    if-ge v0, v1, :cond_5

    .line 1826
    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocaly:I

    goto :goto_4

    :cond_5
    if-le v0, p1, :cond_6

    .line 1828
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowSecondLocaly:I

    .line 1830
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->updateSecondPopup()V

    return-void
.end method

.method public setPopText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 943
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->startFirstAnimationToShow()V

    .line 944
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 946
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p2, p2, -0x41

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    const-string p2, "#"

    .line 947
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 948
    iput p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    .line 950
    :cond_0
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length p1, p1

    .line 951
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    if-ltz v0, :cond_3

    sub-int/2addr p1, p2

    if-le v0, p1, :cond_1

    goto :goto_0

    .line 954
    :cond_1
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLastKeyIndices:I

    if-eq p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez p1, :cond_2

    .line 955
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->update()V

    .line 957
    :cond_2
    iget p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mLastKeyIndices:I

    :cond_3
    :goto_0
    return-void
.end method

.method public setPopupTextView(Ljava/lang/String;)V
    .locals 0

    .line 911
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->startFirstAnimationToShow()V

    .line 912
    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->setTouchBarSelectedText(Ljava/lang/String;)V

    return-void
.end method

.method public setPopupWindowFirstTextSize(I)V
    .locals 2

    .line 1511
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    if-eq v0, p1, :cond_0

    .line 1512
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    .line 1513
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iget v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstKeyTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .locals 1

    .line 1523
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstTextColor:I

    if-eq v0, p1, :cond_0

    .line 1524
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstTextColor:I

    .line 1525
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowFirstTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1526
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .locals 1

    .line 1500
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-eq v0, p1, :cond_0

    .line 1501
    iput p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    :cond_0
    return-void
.end method

.method public setSmartShowMode([Ljava/lang/Object;[I)V
    .locals 8

    const-string v0, " "

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    const/4 v1, 0x0

    .line 1686
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 1696
    :cond_0
    array-length v0, p1

    .line 1697
    array-length v2, p2

    const/16 v3, 0x1e

    if-le v0, v3, :cond_5

    const/4 v3, 0x1

    .line 1700
    iput-boolean v3, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    const/16 v4, 0x2d

    .line 1705
    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1706
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v5, p1, v1

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1707
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1708
    iget-object v4, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v5, 0x2c

    sub-int/2addr v0, v3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v5

    sub-int/2addr v2, v3

    .line 1713
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    const/16 v0, 0x15

    :goto_0
    if-lez v0, :cond_3

    move v5, v1

    move v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    .line 1722
    aget v7, p2, v4

    if-le v7, v6, :cond_1

    .line 1723
    aget v5, p2, v4

    move v6, v5

    move v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1727
    :cond_2
    aput v1, p2, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :goto_2
    if-ge v3, v2, :cond_6

    .line 1732
    aget v1, p2, v3

    if-nez v1, :cond_4

    .line 1733
    iget-object v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v4, p1, v3

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    .line 1734
    iget-object v5, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1742
    :cond_5
    iput-boolean v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    add-int/lit8 p2, v0, 0x0

    .line 1748
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    move p2, v1

    :goto_3
    if-ge v1, v0, :cond_6

    .line 1751
    iget-object v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, p2

    move p2, v3

    move v1, v4

    goto :goto_3

    .line 1754
    :cond_6
    iget-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    .line 1759
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->initIconState()V

    .line 1760
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->update()V

    .line 1761
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    return-void

    .line 1687
    :cond_7
    :goto_4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1688
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    return-void
.end method

.method public setTouchBarSelectedText(Ljava/lang/String;)V
    .locals 3

    .line 921
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mPreviousIndex:I

    const/4 v0, 0x0

    .line 924
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x41

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    .line 925
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    const-string v0, "#"

    .line 926
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iput v1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 930
    iget v2, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mKeyIndices:I

    if-ltz v2, :cond_2

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_1

    goto :goto_0

    .line 933
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidateTouchBarText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTouchSearchActionListener(Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;

    return-void
.end method

.method public setUnionEnable(Z)V
    .locals 1

    .line 1453
    iget-boolean v0, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-eq v0, p1, :cond_0

    .line 1454
    iput-boolean p1, p0, Lcom/oppo/support/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 1455
    invoke-direct {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->update()V

    .line 1456
    invoke-virtual {p0}, Lcom/oppo/support/widget/OppoTouchSearchView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startPostDelayed()V
    .locals 0

    return-void
.end method
