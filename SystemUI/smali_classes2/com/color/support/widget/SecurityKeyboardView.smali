.class public Lcom/color/support/widget/SecurityKeyboardView;
.super Landroid/view/View;
.source "SecurityKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/SecurityKeyboardView$Item;,
        Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;,
        Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;,
        Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field public static final COMMON_KEY:I = 0x0

.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x4b

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field public static final DELETE_KEY:I = 0x1

.field private static final ENABLED:I = 0x0

.field private static final ENABLED_MASK:I = 0x20

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_ERROR:I = -0x1

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field public static final OK_KEY:I = 0x2

.field private static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field private static final PFLAG_PRESSED:I = 0x4000

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190

.field public static final SECURITY_KEYBOARD:I = 0x1

.field private static STYLEABLE_LENGTH:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SecurityKeyboardView"

.field public static final UNLOCK_KEYBOARD:I = 0x2

.field private static VIEW_SETS:[[I = null

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

.field private static VIEW_STATE_SETS:[[[I = null

.field private static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBgTopOffset:I

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private mColorEndKeyBg:Landroid/graphics/drawable/Drawable;

.field private mColorGoTextColor:Landroid/content/res/ColorStateList;

.field private mColorSpecialKeyBg:Landroid/graphics/drawable/Drawable;

.field private mColorTextColor:Landroid/content/res/ColorStateList;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mEndLabelSize:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mIconState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private mInMultiTap:Z

.field private mInvalidatedKey:Lcom/color/support/widget/SecurityKeyboard$Key;

.field private mIsDownFlag:Z

.field private mIsEnable:Z

.field private mItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/SecurityKeyboardView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mItemBg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyBoardViewType:I

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

.field private mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeyboardCharListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;

.field private mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mLineWidth:F

.field private mLowerLetterSize:I

.field private mMiniKeyboard:Lcom/color/support/widget/SecurityKeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/color/support/widget/SecurityKeyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mNumberLetterSize:I

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mPreviewWidth:I

.field private mPreviousIndex:I

.field private mPreviousKey:I

.field protected mPrivateFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mSkipSymbolsLabelSize:I

.field private mSpaceLabelSize:I

.field private mSpecialItemBg:Landroid/graphics/drawable/Drawable;

.field private mSpecialItemSize:I

.field private mSpecialKeyHeight:I

.field private mSpecialKeyWidth:I

.field private mSpecialSymbols:[Ljava/lang/String;

.field private mSpecialSymbolsOffset:I

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;

.field private mSymbolsLabelSize:I

.field private mTapCount:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mVerticalCorrection:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x1

    .line 173
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x5

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->KEY_DELETE:[I

    .line 174
    new-array v1, v0, [I

    const v3, 0x101023c

    aput v3, v1, v2

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 275
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->LONGPRESS_TIMEOUT:I

    const/16 v1, 0xc

    .line 277
    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->MAX_NEARBY_KEYS:I

    const/16 v1, 0x14

    .line 359
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    .line 375
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    sput v1, Lcom/color/support/widget/SecurityKeyboardView;->STYLEABLE_LENGTH:I

    .line 376
    sget-object v1, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 377
    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->STYLEABLE_LENGTH:I

    if-ne v3, v4, :cond_6

    .line 380
    array-length v1, v1

    new-array v1, v1, [I

    move v4, v2

    .line 381
    :goto_0
    sget v5, Lcom/color/support/widget/SecurityKeyboardView;->STYLEABLE_LENGTH:I

    if-ge v4, v5, :cond_2

    .line 382
    sget-object v5, Lcolor/support/v7/appcompat/R$styleable;->ViewDrawableStates:[I

    aget v5, v5, v4

    move v6, v2

    .line 383
    :goto_1
    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    array-length v8, v7

    if-ge v6, v8, :cond_1

    .line 384
    aget v8, v7, v6

    if-ne v8, v5, :cond_0

    mul-int/lit8 v8, v4, 0x2

    .line 385
    aput v5, v1, v8

    add-int/2addr v8, v0

    add-int/lit8 v9, v6, 0x1

    .line 386
    aget v7, v7, v9

    aput v7, v1, v8

    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    shl-int/2addr v0, v3

    .line 390
    new-array v3, v0, [[[I

    sput-object v3, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_STATE_SETS:[[[I

    .line 391
    new-array v0, v0, [[I

    sput-object v0, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_SETS:[[I

    move v0, v2

    .line 392
    :goto_2
    sget-object v3, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_SETS:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 394
    sget-object v4, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_SETS:[[I

    new-array v3, v3, [I

    aput-object v3, v4, v0

    move v3, v2

    move v4, v3

    .line 396
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 397
    aget v5, v1, v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    .line 398
    sget-object v5, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_SETS:[[I

    aget-object v5, v5, v0

    add-int/lit8 v6, v4, 0x1

    aget v7, v1, v3

    aput v7, v5, v4

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 378
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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 452
    sget v0, Lcolor/support/v7/appcompat/R$style;->SecurityKeyboardView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 470
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, -0x1

    .line 177
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    const/4 v0, 0x2

    .line 191
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCoordinates:[I

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewCentered:Z

    const/4 v2, 0x1

    .line 228
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mShowPreview:Z

    .line 229
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mShowTouchPoints:Z

    .line 248
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    .line 249
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDownKey:I

    const/16 v3, 0xc

    .line 252
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyIndices:[I

    .line 256
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 260
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 262
    new-instance v3, Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;-><init>(Lcom/color/support/widget/SecurityKeyboardView$1;)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSwipeTracker:Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;

    .line 267
    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mOldPointerCount:I

    .line 278
    sget v3, Lcom/color/support/widget/SecurityKeyboardView;->MAX_NEARBY_KEYS:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDistances:[I

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 295
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 405
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    .line 407
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyBoardViewType:I

    .line 411
    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mColorSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    .line 412
    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mColorEndKeyBg:Landroid/graphics/drawable/Drawable;

    .line 413
    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    .line 416
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLowerLetterSize:I

    .line 417
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mNumberLetterSize:I

    .line 418
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpaceLabelSize:I

    .line 419
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mEndLabelSize:I

    .line 421
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSymbolsLabelSize:I

    .line 423
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSkipSymbolsLabelSize:I

    .line 424
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIsEnable:Z

    .line 425
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousKey:I

    .line 426
    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIsDownFlag:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 427
    iput v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    .line 428
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyWidth:I

    .line 429
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyHeight:I

    .line 430
    iput-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    .line 433
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialItemSize:I

    .line 435
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mBgTopOffset:I

    .line 436
    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousIndex:I

    .line 437
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    .line 438
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItemBg:Ljava/util/ArrayList;

    .line 440
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIconState:Ljava/util/List;

    .line 472
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView:[I

    sget v0, Lcolor/support/v7/appcompat/R$style;->SecurityKeyboardView:I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 477
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 482
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyBackground:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 483
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorVerticalCorrection:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    iput p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mVerticalCorrection:I

    .line 484
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewLayout:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 485
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewOffset:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewOffset:I

    .line 486
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewHeight:I

    const/16 v3, 0x50

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewHeight:I

    .line 487
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyPreviewWidth:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewWidth:I

    .line 488
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyTextSize:I

    const/16 v3, 0x12

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyTextSize:I

    .line 489
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyTextColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyTextColor:I

    .line 490
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorLabelTextSize:I

    const/16 v3, 0xe

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLabelTextSize:I

    .line 491
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorPopupLayout:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupLayout:I

    .line 492
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorShadowColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mShadowColor:I

    .line 493
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorShadowRadius:I

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mShadowRadius:F

    .line 495
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorKeyBoardType:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyBoardViewType:I

    .line 496
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mColorTextColor:Landroid/content/res/ColorStateList;

    .line 497
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorGoTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mColorGoTextColor:Landroid/content/res/ColorStateList;

    .line 499
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorSpecialKeyBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mColorSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    .line 500
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorEndKeyBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mColorEndKeyBg:Landroid/graphics/drawable/Drawable;

    .line 502
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorItemSymbolsColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 503
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->SecurityKeyboardView_colorSpecialItemBg:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialItemBg:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 505
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mBackgroundDimAmount:F

    .line 507
    new-instance v0, Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-direct {v0, p1}, Lcolor/support/v7/widget/ColorPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    if-eqz p4, :cond_0

    .line 509
    invoke-virtual {p3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 510
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewTextSizeLarge:I

    .line 511
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    iget-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Lcolor/support/v7/widget/ColorPopupWindow;->setContentView(Landroid/view/View;)V

    .line 512
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-virtual {p3, v4}, Lcolor/support/v7/widget/ColorPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 514
    :cond_0
    iput-boolean v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mShowPreview:Z

    .line 517
    :goto_0
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-virtual {p3, v1}, Lcolor/support/v7/widget/ColorPopupWindow;->setTouchable(Z)V

    .line 518
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    new-instance p4, Lcom/color/support/widget/SecurityKeyboardView$1;

    invoke-direct {p4, p0}, Lcom/color/support/widget/SecurityKeyboardView$1;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-virtual {p3, p4}, Lcolor/support/v7/widget/ColorPopupWindow;->setOnPreInvokePopupListener(Lcolor/support/v7/widget/ColorPopupWindow$OnPreInvokePopupListener;)V

    .line 526
    new-instance p3, Landroid/widget/PopupWindow;

    invoke-direct {p3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 527
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {p3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    iput-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupParent:Landroid/view/View;

    .line 533
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 534
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 535
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float p4, v1

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 536
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 537
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 p4, 0xff

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 539
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 540
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 542
    iget-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    .line 543
    iget-object p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_1
    const/high16 p3, 0x43fa0000    # 500.0f

    .line 546
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p4, p3

    float-to-int p3, p4

    iput p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSwipeThreshold:I

    .line 548
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDisambiguateSwipe:Z

    .line 551
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "accessibility"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string p3, "audio"

    .line 552
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 554
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->resetMultiTap()V

    .line 556
    invoke-virtual {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboardType(I)V

    .line 557
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/color/support/widget/SecurityKeyboardView;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mStartX:I

    return p0
.end method

.method static synthetic access$1100(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mStartY:I

    return p0
.end method

.method static synthetic access$1200(Lcom/color/support/widget/SecurityKeyboardView;IIIJ)V
    .locals 0

    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/color/support/widget/SecurityKeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/color/support/widget/SecurityKeyboardView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$1600(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialItemSize:I

    return p0
.end method

.method static synthetic access$1700(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/graphics/Typeface;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/SecurityKeyboardView;)Landroid/widget/TextView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->repeatKey()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/SecurityKeyboardView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPossiblePoly:Z

    return p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/SecurityKeyboardView;)Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSwipeTracker:Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSwipeThreshold:I

    return p0
.end method

.method static synthetic access$800(Lcom/color/support/widget/SecurityKeyboardView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDisambiguateSwipe:Z

    return p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/SecurityKeyboardView;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDownKey:I

    return p0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getNewShifted()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    .line 844
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 846
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 8

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 1966
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    aget-object v1, v1, p3

    .line 1967
    iget-object v2, v1, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    .line 1968
    iput-boolean v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->mInMultiTap:Z

    .line 1969
    iget-wide v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long p1, p1, v6

    if-gez p1, :cond_1

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastSentIndex:I

    if-ne p3, p1, :cond_1

    .line 1971
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTapCount:I

    add-int/2addr p1, v5

    iget-object p2, v1, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTapCount:I

    return-void

    .line 1974
    :cond_1
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTapCount:I

    return-void

    .line 1978
    :cond_2
    iget-wide v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastTapTime:J

    add-long/2addr v0, v3

    cmp-long p1, p1, v0

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastSentIndex:I

    if-eq p3, p1, :cond_4

    .line 1979
    :cond_3
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->resetMultiTap()V

    :cond_4
    return-void
.end method

.method private computeProximityThreshold(Lcom/color/support/widget/SecurityKeyboard;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 874
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    if-nez p1, :cond_1

    return-void

    .line 876
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 879
    aget-object v3, p1, v1

    .line 880
    iget v4, v3, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    iget v5, v3, Lcom/color/support/widget/SecurityKeyboard$Key;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Lcom/color/support/widget/SecurityKeyboard$Key;->gap:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p1, v2

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 883
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mProximityThreshold:I

    .line 884
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mProximityThreshold:I

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mProximityThreshold:I

    :cond_4
    :goto_1
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 1167
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    array-length v2, v1

    if-ge p1, v2, :cond_3

    .line 1168
    aget-object v1, v1, p1

    .line 1169
    iget-object v2, v1, Lcom/color/support/widget/SecurityKeyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 1170
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    iget-object p3, v1, Lcom/color/support/widget/SecurityKeyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {p2, p3}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1171
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v0}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 1173
    :cond_0
    iget-object v2, v1, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1175
    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    .line 1176
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1177
    invoke-direct {p0, p2, p3, v4}, Lcom/color/support/widget/SecurityKeyboardView;->getKeyIndices(II[I)I

    .line 1179
    iget-boolean p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mInMultiTap:Z

    if-eqz p2, :cond_2

    .line 1180
    iget p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTapCount:I

    if-eq p2, v0, :cond_1

    .line 1181
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    const/4 p3, -0x5

    sget-object v0, Lcom/color/support/widget/SecurityKeyboardView;->KEY_DELETE:[I

    invoke-interface {p2, p3, v0}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1182
    invoke-direct {p0, v2, v1}, Lcom/color/support/widget/SecurityKeyboardView;->sendCharToTarget(ILcom/color/support/widget/SecurityKeyboard$Key;)V

    goto :goto_0

    .line 1184
    :cond_1
    iput v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTapCount:I

    .line 1186
    :goto_0
    iget-object p2, v1, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    iget p3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTapCount:I

    aget v2, p2, p3

    .line 1189
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/color/support/widget/SecurityKeyboardView;->sendCharToTarget(ILcom/color/support/widget/SecurityKeyboard$Key;)V

    .line 1190
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2, v4}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1191
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 1194
    :goto_1
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastSentIndex:I

    .line 1195
    iput-wide p4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastTapTime:J

    :cond_3
    return-void
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 1939
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1940
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    :cond_0
    return-void
.end method

.method private drawSpecialSymbol(Landroid/graphics/Canvas;I)V
    .locals 11

    .line 1992
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 1994
    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1995
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1998
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, p2

    .line 1999
    iget v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyWidth:I

    add-int/2addr v5, v4

    .line 2000
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    mul-float v8, v0, v7

    add-float/2addr v6, v8

    iget v9, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    mul-float/2addr v9, v7

    add-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v9, v6

    add-float/2addr v9, v0

    float-to-int v9, v9

    .line 2003
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    mul-float/2addr v7, v8

    add-float/2addr v10, v7

    add-float v7, v10, v0

    .line 2006
    invoke-virtual {v3, v4, v6, v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2007
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2008
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v3, v7}, Lcom/color/support/widget/SecurityKeyboardView$Item;->setBottom(F)V

    .line 2009
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v3, v10}, Lcom/color/support/widget/SecurityKeyboardView$Item;->setTop(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2015
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2016
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-static {v2}, Lcom/color/support/widget/SecurityKeyboardView$Item;->access$1500(Lcom/color/support/widget/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v2

    .line 2017
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 2018
    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 2020
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 2021
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyWidth:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    .line 2022
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v4

    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mBgTopOffset:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    int-to-float v6, v1

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    add-float/2addr v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    add-float/2addr v4, v6

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 2025
    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {p1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getIndexIndices(II)I
    .locals 5

    .line 2148
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2151
    :cond_0
    array-length v0, v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2157
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyWidth:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_2

    int-to-float v3, p2

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    .line 2158
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v4}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getTop()F

    move-result v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v4}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getBottom()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private getKeyIndices(II[I)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1106
    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 1109
    iget v5, v0, Lcom/color/support/widget/SecurityKeyboardView;->mProximityThreshold:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 1110
    iget-object v7, v0, Lcom/color/support/widget/SecurityKeyboardView;->mDistances:[I

    const v8, 0x7fffffff

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1111
    iget-object v7, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v7, v1, v2}, Lcom/color/support/widget/SecurityKeyboard;->getNearestKeys(II)[I

    move-result-object v7

    .line 1112
    array-length v8, v7

    move v13, v5

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_0
    if-ge v5, v8, :cond_a

    .line 1114
    aget v14, v7, v5

    aget-object v14, v4, v14

    .line 1116
    invoke-virtual {v14, v1, v2}, Lcom/color/support/widget/SecurityKeyboard$Key;->isInside(II)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1118
    aget v11, v7, v5

    .line 1123
    :cond_0
    iget-boolean v6, v0, Lcom/color/support/widget/SecurityKeyboardView;->mProximityCorrectOn:Z

    if-eqz v6, :cond_1

    .line 1124
    invoke-virtual {v14, v1, v2}, Lcom/color/support/widget/SecurityKeyboard$Key;->squaredDistanceFrom(II)I

    move-result v6

    iget v10, v0, Lcom/color/support/widget/SecurityKeyboardView;->mProximityThreshold:I

    if-lt v6, v10, :cond_2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v15, :cond_3

    :cond_2
    move v10, v6

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v10, v6

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_7

    .line 1128
    iget-object v6, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    array-length v6, v6

    if-ge v10, v13, :cond_4

    .line 1131
    aget v12, v7, v5

    move v13, v10

    :cond_4
    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 1136
    :goto_3
    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->mDistances:[I

    move-object/from16 v16, v4

    array-length v4, v9

    if-ge v15, v4, :cond_8

    .line 1137
    aget v4, v9, v15

    if-le v4, v10, :cond_6

    add-int v4, v15, v6

    move-object/from16 v17, v7

    .line 1139
    array-length v7, v9

    sub-int/2addr v7, v15

    sub-int/2addr v7, v6

    invoke-static {v9, v15, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1141
    array-length v7, v3

    sub-int/2addr v7, v15

    sub-int/2addr v7, v6

    invoke-static {v3, v15, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_9

    add-int v7, v15, v4

    .line 1144
    iget-object v9, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v9, v9, v4

    aput v9, v3, v7

    .line 1145
    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->mDistances:[I

    aput v10, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v7

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    goto :goto_3

    :cond_7
    :goto_5
    move-object/from16 v16, v4

    :cond_8
    move-object/from16 v17, v7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    const/4 v6, 0x1

    goto :goto_0

    :cond_a
    const/4 v4, -0x1

    if-ne v11, v4, :cond_b

    move v9, v12

    goto :goto_6

    :cond_b
    move v9, v11

    .line 1156
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1157
    iget v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyWidth:I

    if-gt v1, v3, :cond_c

    int-to-float v1, v2

    iget v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyHeight:I

    iget v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->mVerticalCorrection:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v0, v0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    sub-float/2addr v2, v0

    cmpg-float v0, v1, v2

    if-gtz v0, :cond_c

    goto :goto_7

    :cond_c
    move v4, v9

    :goto_7
    return v4
.end method

.method private getPreviewText(Lcom/color/support/widget/SecurityKeyboard$Key;)Ljava/lang/CharSequence;
    .locals 3

    .line 1203
    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1206
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTapCount:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aget p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1207
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1209
    :cond_1
    iget-object p1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private initGestureDetector()V
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/color/support/widget/SecurityKeyboardView$3;

    invoke-direct {v2, p0}, Lcom/color/support/widget/SecurityKeyboardView$3;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 649
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initState()V
    .locals 7

    .line 2055
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v0, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2061
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItemBg:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialItemBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    new-instance v4, Lcom/color/support/widget/SecurityKeyboardView$Item;

    iget-object v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItemBg:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v4, p0, v5, v6}, Lcom/color/support/widget/SecurityKeyboardView$Item;-><init>(Lcom/color/support/widget/SecurityKeyboardView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 2066
    sget-object v3, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_STATE_SETS:[[[I

    sget-object v4, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_SETS:[[I

    array-length v5, v4

    new-array v5, v5, [[I

    aput-object v5, v3, v2

    .line 2067
    aget-object v3, v3, v2

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2069
    :cond_2
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIconState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2070
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    .line 2072
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIconState:Ljava/util/List;

    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->STYLEABLE_LENGTH:I

    new-array v4, v4, [I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2074
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 2075
    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 2076
    invoke-virtual {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 2077
    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-static {v4}, Lcom/color/support/widget/SecurityKeyboardView$Item;->access$1500(Lcom/color/support/widget/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private isKeyPreview(I)Z
    .locals 7

    .line 2331
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const-string v1, "SecurityKeyboardView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "handler is null"

    .line 2332
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-wide/16 v3, 0x4b

    const/4 v0, 0x2

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    const-string p1, "handler isn\'t null and keyIndex is -1"

    .line 2337
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    .line 2339
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2338
    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2

    .line 2343
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v1, v1, v2

    .line 2344
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    aget-object p1, v6, p1

    iget-object p1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    if-eq v1, v5, :cond_2

    const/4 p1, -0x5

    if-eq v1, p1, :cond_2

    const/4 p1, -0x2

    if-eq v1, p1, :cond_2

    const/16 p1, 0xa

    if-eq v1, p1, :cond_2

    const/16 p1, 0x20

    if-eq v1, p1, :cond_2

    const/4 p1, -0x6

    if-eq v1, p1, :cond_2

    const/4 p1, -0x7

    if-eq v1, p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 2355
    :cond_2
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    .line 2356
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2355
    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2
.end method

.method private isSecurityKeyboard()Z
    .locals 1

    .line 2251
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyBoardViewType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUnLockKeyboard()Z
    .locals 1

    .line 2247
    iget p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyBoardViewType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onBufferDraw()V
    .locals 18

    move-object/from16 v0, p0

    .line 912
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_3

    .line 913
    :cond_0
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_2

    .line 914
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 916
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 918
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 919
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 921
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    .line 922
    iput-boolean v3, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardChanged:Z

    .line 925
    :cond_3
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-nez v1, :cond_4

    return-void

    .line 927
    :cond_4
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 928
    iget-object v4, v0, Lcom/color/support/widget/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 929
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 931
    iget-object v9, v0, Lcom/color/support/widget/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 933
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 935
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 936
    iget-object v5, v0, Lcom/color/support/widget/SecurityKeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v6

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v7

    .line 939
    iget-object v8, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 940
    iget-object v10, v0, Lcom/color/support/widget/SecurityKeyboardView;->mInvalidatedKey:Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 942
    iget v11, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyTextColor:I

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v10, :cond_5

    .line 944
    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 946
    iget v11, v10, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    add-int/2addr v11, v6

    sub-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->left:I

    if-gt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    add-int/2addr v11, v7

    sub-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->top:I

    if-gt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    iget v12, v10, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    add-int/2addr v11, v12

    add-int/2addr v11, v6

    add-int/2addr v11, v2

    iget v12, v1, Landroid/graphics/Rect;->right:I

    if-lt v11, v12, :cond_5

    iget v11, v10, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    iget v12, v10, Lcom/color/support/widget/SecurityKeyboard$Key;->height:I

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    add-int/2addr v11, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v11, v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v3

    .line 953
    :goto_0
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 954
    array-length v11, v8

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_1f

    .line 956
    aget-object v14, v8, v12

    if-eqz v1, :cond_6

    if-eq v10, v14, :cond_6

    move/from16 v17, v1

    move-object/from16 v16, v5

    goto/16 :goto_c

    .line 960
    :cond_6
    invoke-virtual {v14}, Lcom/color/support/widget/SecurityKeyboard$Key;->getCurrentDrawableState()[I

    move-result-object v15

    .line 963
    iget-object v13, v0, Lcom/color/support/widget/SecurityKeyboardView;->mColorSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_8

    iget-object v13, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v13, v13, v3

    const/4 v2, -0x1

    if-eq v13, v2, :cond_7

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v13, -0x5

    if-eq v2, v13, :cond_7

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/16 v13, 0x20

    if-eq v2, v13, :cond_7

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v13, -0x2

    if-eq v2, v13, :cond_7

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v13, -0x6

    if-eq v2, v13, :cond_7

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, v11, -0x2

    if-eq v12, v2, :cond_7

    add-int/lit8 v2, v11, -0x6

    if-eq v12, v2, :cond_7

    add-int/lit8 v2, v11, -0xa

    if-ne v12, v2, :cond_8

    .line 969
    :cond_7
    iget-object v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mColorSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    move/from16 v17, v1

    const/16 v13, 0xa

    goto :goto_3

    .line 970
    :cond_8
    iget-object v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mColorEndKeyBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/16 v13, 0xa

    if-ne v2, v13, :cond_a

    .line 971
    iget-object v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mColorEndKeyBg:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_9
    const/16 v13, 0xa

    .line 973
    :cond_a
    iget-object v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    :goto_2
    move/from16 v17, v1

    .line 976
    :goto_3
    iget-object v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v1, v1, v3

    if-ne v1, v13, :cond_b

    .line 977
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mColorGoTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v15, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    .line 979
    :cond_b
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mColorTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v15, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 981
    :goto_4
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v2, :cond_c

    .line 984
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 989
    :cond_c
    iget-object v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v1, :cond_d

    const/4 v13, 0x0

    goto :goto_5

    :cond_d
    iget-object v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_5
    if-eqz v2, :cond_f

    .line 994
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 995
    iget v15, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-ne v15, v3, :cond_e

    iget v3, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->height:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v1, :cond_f

    .line 997
    :cond_e
    iget v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    iget v3, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->height:I

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v15, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1002
    :cond_f
    iget v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget v3, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v2, :cond_10

    .line 1005
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    if-eqz v13, :cond_1d

    const/4 v1, 0x0

    .line 1012
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_12

    .line 1014
    iget v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mLowerLetterSize:I

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1015
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_6

    :cond_11
    const/16 v3, 0x20

    .line 1017
    :cond_12
    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_13

    .line 1018
    iget v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mSpaceLabelSize:I

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1019
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :goto_6
    move v2, v1

    goto/16 :goto_9

    .line 1021
    :cond_13
    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v1

    const/4 v3, -0x7

    const/4 v15, -0x2

    if-eq v2, v15, :cond_18

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v15, 0xa

    if-eq v2, v15, :cond_18

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v1

    const/4 v15, -0x1

    if-eq v2, v15, :cond_18

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v1

    const/4 v15, -0x6

    if-ne v2, v15, :cond_14

    goto :goto_7

    .line 1032
    :cond_14
    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_15

    .line 1033
    iget v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mSkipSymbolsLabelSize:I

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1034
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_6

    .line 1037
    :cond_15
    iget v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mNumberLetterSize:I

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1038
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1039
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_6

    :cond_16
    const-string v1, "\u00b7"

    .line 1040
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1041
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->oppo_password_kbd_symbols_center_dot:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    .line 1042
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_17
    const/4 v1, 0x1

    .line 1044
    iget v2, v0, Lcom/color/support/widget/SecurityKeyboardView;->mSymbolsLabelSize:I

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x0

    .line 1045
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_9

    :cond_18
    :goto_7
    move v2, v1

    const/4 v1, 0x1

    .line 1024
    iget v15, v0, Lcom/color/support/widget/SecurityKeyboardView;->mEndLabelSize:I

    int-to-float v15, v15

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1025
    iget-object v15, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v15, v15, v2

    const/16 v1, 0xa

    if-eq v15, v1, :cond_1a

    iget-object v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v1, v1, v2

    const/4 v15, -0x2

    if-eq v1, v15, :cond_1a

    iget-object v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v1, v1, v2

    const/4 v15, -0x6

    if-eq v1, v15, :cond_1a

    iget-object v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_19

    goto :goto_8

    .line 1030
    :cond_19
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_9

    .line 1028
    :cond_1a
    :goto_8
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1048
    :goto_9
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1b

    .line 1049
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1052
    :cond_1b
    iget-object v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1c

    .line 1053
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1056
    :cond_1c
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 1058
    iget v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->height:I

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v15, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v15

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v1

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    int-to-float v1, v2

    .line 1061
    iget v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v13, v2, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 1067
    :cond_1d
    iget-object v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 1069
    iget v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1070
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 1072
    iget v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->height:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1073
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v3, v1

    int-to-float v13, v2

    .line 1075
    invoke-virtual {v4, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1076
    iget-object v3, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v13, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1077
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    iget-object v15, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    move-object/from16 v16, v5

    const/4 v5, 0x0

    .line 1076
    invoke-virtual {v3, v5, v5, v13, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1078
    iget-object v3, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    .line 1079
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_b

    :cond_1e
    :goto_a
    move-object/from16 v16, v5

    .line 1081
    :goto_b
    iget v1, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    neg-int v1, v1

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, v14, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    neg-int v2, v2

    sub-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    move/from16 v1, v17

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_1f
    const/4 v1, 0x0

    .line 1083
    iput-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mInvalidatedKey:Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 1085
    iget-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v1, :cond_20

    .line 1086
    iget v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mBackgroundDimAmount:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1100
    :cond_20
    iget-object v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    .line 1101
    iput-boolean v1, v0, Lcom/color/support/widget/SecurityKeyboardView;->mDrawPending:Z

    .line 1102
    iget-object v0, v0, Lcom/color/support/widget/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1600
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1601
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1602
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mVerticalCorrection:I

    neg-int v4, v3

    if-lt v2, v4, :cond_0

    add-int/2addr v2, v3

    .line 1604
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1605
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 1606
    invoke-direct {v6, v1, v2, v7}, Lcom/color/support/widget/SecurityKeyboardView;->getKeyIndices(II[I)I

    move-result v8

    .line 1609
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->isKeyboardViewEnabled()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    if-nez v9, :cond_4

    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    array-length v13, v9

    sub-int/2addr v13, v11

    if-eq v8, v13, :cond_4

    .line 1611
    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mIsDownFlag:Z

    if-eqz v0, :cond_3

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousKey:I

    if-eq v0, v12, :cond_3

    array-length v1, v9

    sub-int/2addr v1, v11

    if-ne v0, v1, :cond_3

    .line 1612
    aget-object v0, v9, v0

    iget-boolean v0, v0, Lcom/color/support/widget/SecurityKeyboard$Key;->pressed:Z

    if-eqz v0, :cond_2

    .line 1613
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousKey:I

    aget-object v0, v0, v1

    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    if-ne v1, v12, :cond_1

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    invoke-virtual {v0, v11}, Lcom/color/support/widget/SecurityKeyboard$Key;->onReleased(Z)V

    .line 1614
    iput v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    .line 1615
    iput-boolean v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->mIsDownFlag:Z

    .line 1617
    :cond_2
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousKey:I

    invoke-virtual {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateKey(I)V

    :cond_3
    return v10

    :cond_4
    move/from16 v9, p2

    .line 1623
    iput-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPossiblePoly:Z

    if-nez v3, :cond_5

    .line 1626
    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSwipeTracker:Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;

    invoke-virtual {v9}, Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;->clear()V

    .line 1627
    :cond_5
    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSwipeTracker:Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;

    invoke-virtual {v9, v0}, Lcom/color/support/widget/SecurityKeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1630
    iget-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mAbortKey:Z

    const/4 v13, 0x3

    if-eqz v9, :cond_6

    if-eqz v3, :cond_6

    if-eq v3, v13, :cond_6

    return v11

    .line 1635
    :cond_6
    iget-object v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    const/4 v14, 0x4

    if-eqz v9, :cond_7

    .line 1636
    invoke-direct {v6, v12}, Lcom/color/support/widget/SecurityKeyboardView;->showPreview(I)V

    .line 1639
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1640
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    return v11

    .line 1646
    :cond_7
    iget-boolean v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v9, :cond_8

    if-eq v3, v13, :cond_8

    return v11

    .line 1650
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    .line 1651
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    .line 1654
    invoke-direct {v6, v9, v15}, Lcom/color/support/widget/SecurityKeyboardView;->getIndexIndices(II)I

    move-result v7

    move/from16 v16, v15

    const-wide/16 v14, 0x0

    if-eqz v3, :cond_1a

    if-eq v3, v11, :cond_13

    const/4 v10, 0x2

    if-eq v3, v10, :cond_a

    if-eq v3, v13, :cond_9

    goto/16 :goto_8

    .line 1829
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->removeMessages()V

    .line 1830
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->dismissPopupKeyboard()V

    .line 1831
    iput-boolean v11, v6, Lcom/color/support/widget/SecurityKeyboardView;->mAbortKey:Z

    .line 1832
    invoke-direct {v6, v12}, Lcom/color/support/widget/SecurityKeyboardView;->showPreview(I)V

    .line 1833
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    invoke-virtual {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateKey(I)V

    .line 1836
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    if-eqz v0, :cond_21

    move/from16 v7, v16

    .line 1837
    invoke-direct {v6, v9, v7}, Lcom/color/support/widget/SecurityKeyboardView;->getIndexIndices(II)I

    move-result v0

    if-eq v12, v0, :cond_21

    .line 1838
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_21

    .line 1839
    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    goto/16 :goto_8

    :cond_a
    if-eq v8, v12, :cond_d

    .line 1726
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    if-ne v3, v12, :cond_b

    .line 1727
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    .line 1728
    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mDownTime:J

    sub-long v9, v4, v9

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    goto :goto_1

    :cond_b
    if-ne v8, v3, :cond_c

    .line 1731
    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    iget-wide v13, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastMoveTime:J

    sub-long v13, v4, v13

    add-long/2addr v9, v13

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    move/from16 v17, v11

    goto :goto_2

    .line 1733
    :cond_c
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mRepeatKeyIndex:I

    if-ne v3, v12, :cond_d

    .line 1734
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->resetMultiTap()V

    .line 1735
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastKey:I

    .line 1736
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastX:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastCodeX:I

    .line 1737
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastY:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastCodeY:I

    .line 1738
    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    add-long/2addr v9, v4

    iget-wide v11, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastMoveTime:J

    sub-long/2addr v9, v11

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastKeyTime:J

    .line 1740
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    .line 1741
    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    :cond_d
    :goto_1
    const/16 v17, 0x0

    :goto_2
    if-nez v17, :cond_e

    .line 1747
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, -0x1

    if-eq v8, v3, :cond_f

    .line 1750
    iget-object v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1751
    iget-object v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    sget v9, Lcom/color/support/widget/SecurityKeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v9, v9

    invoke-virtual {v8, v0, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_e
    const/4 v3, -0x1

    .line 1755
    :cond_f
    :goto_3
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    if-eq v0, v3, :cond_10

    .line 1756
    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousKey:I

    .line 1759
    :cond_10
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->showPreview(I)V

    .line 1760
    iput-wide v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastMoveTime:J

    .line 1762
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1763
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousIndex:I

    if-eq v7, v0, :cond_11

    if-eq v3, v7, :cond_11

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_11

    const/4 v0, 0x1

    .line 1764
    invoke-direct {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setIconPressed(IZ)V

    .line 1765
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1766
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1767
    invoke-virtual {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1768
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    if-eqz v3, :cond_11

    .line 1769
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    .line 1771
    invoke-virtual {v6, v7}, Lcom/color/support/widget/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v0

    .line 1772
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1773
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-static {v3}, Lcom/color/support/widget/SecurityKeyboardView$Item;->access$1500(Lcom/color/support/widget/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    .line 1777
    :cond_11
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousIndex:I

    const/4 v3, -0x1

    if-eq v3, v0, :cond_12

    if-eq v7, v0, :cond_12

    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    .line 1778
    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    .line 1780
    :cond_12
    iput v7, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousIndex:I

    goto/16 :goto_8

    :cond_13
    move/from16 v7, v16

    .line 1786
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->removeMessages()V

    .line 1787
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_14

    .line 1788
    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastMoveTime:J

    sub-long v12, v4, v12

    add-long/2addr v10, v12

    iput-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    goto :goto_4

    .line 1790
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->resetMultiTap()V

    .line 1791
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastKey:I

    .line 1792
    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    add-long/2addr v10, v4

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastMoveTime:J

    sub-long/2addr v10, v12

    iput-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastKeyTime:J

    .line 1793
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    .line 1794
    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    .line 1796
    :goto_4
    iget-wide v10, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    iget-wide v12, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastKeyTime:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_15

    const-wide/16 v12, 0x46

    cmp-long v0, v10, v12

    if-gez v0, :cond_15

    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastKey:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_16

    .line 1798
    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    .line 1799
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastCodeX:I

    .line 1800
    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastCodeY:I

    move v10, v0

    move v11, v1

    goto :goto_5

    :cond_15
    const/4 v3, -0x1

    :cond_16
    move v10, v1

    move v11, v2

    .line 1802
    :goto_5
    invoke-direct {v6, v3}, Lcom/color/support/widget/SecurityKeyboardView;->showPreview(I)V

    .line 1803
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeyIndices:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1805
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mRepeatKeyIndex:I

    if-ne v0, v3, :cond_17

    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_17

    iget-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mAbortKey:Z

    if-nez v0, :cond_17

    .line 1806
    iget v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    move v2, v10

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/SecurityKeyboardView;->detectAndSendKey(IIIJ)V

    .line 1808
    :cond_17
    invoke-virtual {v6, v8}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateKey(I)V

    const/4 v0, -0x1

    .line 1809
    iput v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 1811
    iget v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    .line 1812
    iput-boolean v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mIsDownFlag:Z

    .line 1815
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1816
    invoke-direct {v6, v9, v7}, Lcom/color/support/widget/SecurityKeyboardView;->getIndexIndices(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_19

    .line 1817
    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 1818
    invoke-direct {v6, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setItemRestore(I)V

    .line 1819
    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1820
    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 1821
    iget-object v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardCharListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;

    if-eqz v1, :cond_19

    .line 1822
    iget-object v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-interface {v1, v0, v3}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    :cond_19
    move v1, v10

    move v2, v11

    goto/16 :goto_8

    :cond_1a
    move v3, v10

    .line 1659
    iput-boolean v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mAbortKey:Z

    .line 1660
    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mStartX:I

    .line 1661
    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->mStartY:I

    .line 1662
    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastCodeX:I

    .line 1663
    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastCodeY:I

    .line 1664
    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastKeyTime:J

    .line 1665
    iput-wide v14, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyTime:J

    const/4 v3, -0x1

    .line 1666
    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastKey:I

    .line 1667
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    .line 1668
    iput v8, v6, Lcom/color/support/widget/SecurityKeyboardView;->mDownKey:I

    .line 1669
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mDownTime:J

    .line 1670
    iget-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mDownTime:J

    iput-wide v9, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastMoveTime:J

    .line 1671
    invoke-direct {v6, v4, v5, v8}, Lcom/color/support/widget/SecurityKeyboardView;->checkMultiTap(JI)V

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eq v3, v7, :cond_1b

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v4, v4

    if-ge v7, v4, :cond_1b

    .line 1674
    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v3}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onPress(I)V

    goto :goto_7

    .line 1676
    :cond_1b
    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    if-eq v8, v3, :cond_1c

    iget-object v5, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v10, v5, v9

    move v9, v10

    goto :goto_6

    :cond_1c
    const/4 v9, 0x0

    :goto_6
    invoke-interface {v4, v9}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1680
    :goto_7
    iget v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    if-eq v4, v3, :cond_1d

    .line 1681
    iput v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousKey:I

    .line 1683
    :cond_1d
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_1e

    .line 1684
    iput-boolean v5, v6, Lcom/color/support/widget/SecurityKeyboardView;->mIsDownFlag:Z

    .line 1687
    :cond_1e
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    if-ltz v3, :cond_1f

    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    aget-object v3, v4, v3

    iget-boolean v3, v3, Lcom/color/support/widget/SecurityKeyboard$Key;->repeatable:Z

    if-eqz v3, :cond_1f

    .line 1688
    iget v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 1689
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1690
    iget-object v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x190

    invoke-virtual {v4, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1691
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->repeatKey()Z

    .line 1693
    iget-boolean v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mAbortKey:Z

    if-eqz v3, :cond_1f

    const/4 v3, -0x1

    .line 1694
    iput v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mRepeatKeyIndex:I

    goto :goto_8

    :cond_1f
    const/4 v3, -0x1

    .line 1698
    iget v4, v6, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    if-eq v4, v3, :cond_20

    .line 1699
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1700
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/color/support/widget/SecurityKeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1702
    :cond_20
    invoke-direct {v6, v8}, Lcom/color/support/widget/SecurityKeyboardView;->showPreview(I)V

    .line 1704
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, -0x1

    if-eq v0, v7, :cond_21

    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_21

    .line 1705
    iput v7, v6, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousIndex:I

    .line 1706
    invoke-direct {v6, v7}, Lcom/color/support/widget/SecurityKeyboardView;->sendAccessibilityViewText(I)V

    const/4 v0, 0x1

    .line 1707
    invoke-direct {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setIconPressed(IZ)V

    .line 1708
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1709
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v3}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1710
    invoke-virtual {v6, v7, v0}, Lcom/color/support/widget/SecurityKeyboardView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    if-eqz v3, :cond_21

    .line 1712
    iget-object v0, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_21

    .line 1714
    invoke-virtual {v6, v7}, Lcom/color/support/widget/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v0

    .line 1715
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1716
    iget-object v3, v6, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-static {v3}, Lcom/color/support/widget/SecurityKeyboardView$Item;->access$1500(Lcom/color/support/widget/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1717
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    .line 1850
    :cond_21
    :goto_8
    iput v1, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastX:I

    .line 1851
    iput v2, v6, Lcom/color/support/widget/SecurityKeyboardView;->mLastY:I

    const/4 v0, 0x1

    return v0
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1423
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupLayout:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1426
    :cond_0
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    array-length v2, v1

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 1430
    :cond_1
    aget-object p1, v1, p1

    .line 1431
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onLongPress(Lcom/color/support/widget/SecurityKeyboard$Key;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 1433
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAbortKey:Z

    const/4 v0, -0x1

    .line 1434
    invoke-direct {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->showPreview(I)V

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private removeMessages()V
    .locals 2

    .line 1923
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1924
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1925
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1926
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .line 1883
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    .line 1884
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKey:I

    iget v3, v0, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    iget v4, v0, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    iget-wide v5, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/color/support/widget/SecurityKeyboardView;->detectAndSendKey(IIIJ)V

    const/4 p0, 0x1

    return p0
.end method

.method private resetMultiTap()V
    .locals 3

    const/4 v0, -0x1

    .line 1958
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastSentIndex:I

    const/4 v0, 0x0

    .line 1959
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTapCount:I

    const-wide/16 v1, -0x1

    .line 1960
    iput-wide v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLastTapTime:J

    .line 1961
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mInMultiTap:Z

    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1352
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    int-to-char p2, p2

    .line 1377
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1371
    :pswitch_0
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_shift:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1368
    :pswitch_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_mode_change:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1359
    :pswitch_2
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_cancel:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1365
    :pswitch_3
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_done:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1362
    :pswitch_4
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1356
    :pswitch_5
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_alt:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1374
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1380
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1381
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendAccessibilityEventForUnicodeCharacter(IILcom/color/support/widget/SecurityKeyboard$Key;)V
    .locals 10

    .line 2264
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2265
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2266
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2268
    iget-object v0, p3, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "?#+"

    const/16 v3, 0xa

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, -0x5

    const/4 v7, -0x6

    const/4 v8, -0x7

    if-eq p2, v8, :cond_a

    const-string v9, "ABC"

    if-eq p2, v7, :cond_8

    if-eq p2, v6, :cond_7

    if-eq p2, v5, :cond_5

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_1

    int-to-char v0, p2

    .line 2308
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2298
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2289
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getNewShifted()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 2290
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboard_view_keycode_low_shift:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2291
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getNewShifted()I

    move-result v0

    if-nez v0, :cond_4

    .line 2292
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_initialcapitalization:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2293
    :cond_4
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getNewShifted()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    .line 2294
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_capslock:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 2274
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2275
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_letters:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    if-eqz v0, :cond_c

    .line 2276
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2277
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_symbol:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2271
    :cond_7
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    .line 2281
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2282
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_letters:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_c

    const-string v2, "123"

    .line 2283
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2284
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_number:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_b

    .line 2301
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2302
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_symbol:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_c

    const-string v2, "$\u00a5\u20ac"

    .line 2303
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2304
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_moresymbols:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_c
    :goto_1
    if-eq p2, v6, :cond_10

    if-eq p2, v5, :cond_10

    if-eq p2, v4, :cond_10

    if-eq p2, v3, :cond_10

    if-eq p2, v7, :cond_10

    if-ne p2, v8, :cond_d

    goto :goto_2

    .line 2315
    :cond_d
    iget-object v0, p3, Lcom/color/support/widget/SecurityKeyboard$Key;->announceText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 2316
    iget-object p1, p3, Lcom/color/support/widget/SecurityKeyboard$Key;->announceText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2317
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2318
    :cond_e
    iget-object v0, p3, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 2319
    iget-object p1, p3, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2320
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_f
    int-to-char p2, p2

    .line 2322
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    .line 2323
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2324
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    .line 2313
    :cond_10
    :goto_2
    invoke-virtual {p0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_3
    return-void
.end method

.method private sendAccessibilityViewText(I)V
    .locals 1

    .line 1861
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1873
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_dollar:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1870
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_atsymbol:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1867
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_minus:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1864
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$string;->color_keyboardview_keycode_asterisk:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 1877
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private sendCharToTarget(ILcom/color/support/widget/SecurityKeyboard$Key;)V
    .locals 4

    .line 2031
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardCharListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    const/4 v1, -0x2

    if-eq p1, v1, :cond_6

    const/4 v1, -0x6

    if-eq p1, v1, :cond_6

    const/4 v1, -0x7

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    const-string v2, ""

    if-ne p1, v1, :cond_2

    const/4 p0, 0x2

    .line 2041
    invoke-interface {v0, v2, p0}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x20

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    const-string p0, " "

    .line 2043
    invoke-interface {v0, p0, v3}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    const/4 p0, 0x1

    .line 2045
    invoke-interface {v0, v2, p0}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    goto :goto_1

    .line 2047
    :cond_4
    iget-object p1, p2, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    iget-object p1, p2, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    .line 2049
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardCharListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;

    invoke-interface {p0, p1, v3}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setIconPressed(IZ)V
    .locals 1

    .line 2137
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

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

    .line 2143
    :goto_0
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setItemRestore(I)V
    .locals 3

    const/4 v0, 0x0

    .line 2166
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setIconPressed(IZ)V

    .line 2167
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2168
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-virtual {v1}, Lcom/color/support/widget/SecurityKeyboardView$Item;->getText()Ljava/lang/String;

    move-result-object v1

    .line 2169
    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 2173
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v0

    .line 2174
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2175
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/SecurityKeyboardView$Item;

    invoke-static {p1}, Lcom/color/support/widget/SecurityKeyboardView$Item;->access$1500(Lcom/color/support/widget/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 2177
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    :cond_0
    return-void
.end method

.method private showKey(I)V
    .locals 11

    .line 1273
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    .line 1274
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    if-ltz p1, :cond_a

    .line 1275
    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto/16 :goto_6

    .line 1276
    :cond_0
    aget-object p1, v1, p1

    .line 1277
    iget-object v1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 1278
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v6, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v4, v4, v4, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1280
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1282
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1283
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->getPreviewText(Lcom/color/support/widget/SecurityKeyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    iget-object v1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    array-length v1, v1

    if-ge v1, v3, :cond_3

    .line 1285
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1286
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1288
    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1290
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1293
    :goto_1
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1294
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1293
    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->measure(II)V

    .line 1297
    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewWidth:I

    .line 1298
    iget v4, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewHeight:I

    .line 1299
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1301
    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1302
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1304
    :cond_4
    iget-boolean v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_5

    .line 1306
    iget v6, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    iget v7, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    div-int/2addr v7, v3

    add-int/2addr v6, v7

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewWidth:I

    div-int/2addr v7, v3

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    .line 1307
    iget v6, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    goto :goto_2

    .line 1310
    :cond_5
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v3

    rsub-int v6, v6, 0xa0

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    .line 1311
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    .line 1313
    :goto_2
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationInWindow([I)V

    .line 1315
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCoordinates:[I

    aget v7, v6, v5

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v5

    .line 1316
    aget v7, v6, v2

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v2

    .line 1319
    iget-object v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->popupResId:I

    if-eqz v7, :cond_6

    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_3

    :cond_6
    sget-object v7, Lcom/color/support/widget/SecurityKeyboardView;->EMPTY_STATE_SET:[I

    :goto_3
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1321
    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCoordinates:[I

    aget v8, v7, v5

    add-int/2addr v6, v8

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    .line 1322
    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    aget v8, v7, v2

    add-int/2addr v6, v8

    iput v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    .line 1325
    invoke-virtual {p0, v7}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationOnScreen([I)V

    .line 1326
    iget v6, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCoordinates:[I

    aget v2, v7, v2

    add-int/2addr v6, v2

    if-gez v6, :cond_8

    .line 1329
    iget v2, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    iget v6, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v6

    div-int/2addr v6, v3

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    if-gt v2, v6, :cond_7

    .line 1330
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    iget p1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    add-int/2addr v2, p1

    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    goto :goto_4

    .line 1332
    :cond_7
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    iget p1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    .line 1334
    :goto_4
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    .line 1337
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1338
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    .line 1341
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1342
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1343
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupParent:Landroid/view/View;

    iget v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewX:I

    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1346
    :goto_5
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_6
    return-void
.end method

.method private showPreview(I)V
    .locals 8

    .line 1214
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    .line 1215
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    .line 1217
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    .line 1219
    iget-object v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 1220
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v0, v3, :cond_2

    const/4 v6, 0x0

    if-eq v0, v5, :cond_1

    .line 1221
    array-length v7, v2

    if-le v7, v0, :cond_1

    .line 1222
    aget-object v7, v2, v0

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v6

    .line 1223
    :goto_0
    invoke-virtual {v7, v3}, Lcom/color/support/widget/SecurityKeyboard$Key;->onReleased(Z)V

    .line 1224
    invoke-virtual {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateKey(I)V

    .line 1225
    iget-object v3, v7, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v3, v3, v6

    const/16 v7, 0x100

    .line 1226
    invoke-direct {p0, v7, v3}, Lcom/color/support/widget/SecurityKeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    const/high16 v7, 0x10000

    .line 1229
    invoke-direct {p0, v7, v3}, Lcom/color/support/widget/SecurityKeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 1232
    :cond_1
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    if-eq v3, v5, :cond_2

    array-length v7, v2

    if-le v7, v3, :cond_2

    .line 1233
    aget-object v2, v2, v3

    .line 1234
    invoke-virtual {v2}, Lcom/color/support/widget/SecurityKeyboard$Key;->onPressed()V

    .line 1235
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v3}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateKey(I)V

    .line 1236
    iget-object v3, v2, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    aget v3, v3, v6

    const/16 v6, 0x80

    .line 1238
    invoke-direct {p0, v6, v3, v2}, Lcom/color/support/widget/SecurityKeyboardView;->sendAccessibilityEventForUnicodeCharacter(IILcom/color/support/widget/SecurityKeyboard$Key;)V

    const v6, 0x8000

    .line 1241
    invoke-direct {p0, v6, v3, v2}, Lcom/color/support/widget/SecurityKeyboardView;->sendAccessibilityEventForUnicodeCharacter(IILcom/color/support/widget/SecurityKeyboard$Key;)V

    .line 1247
    :cond_2
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    invoke-direct {p0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->isKeyPreview(I)Z

    move-result v2

    .line 1249
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mShowPreview:Z

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 1250
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1251
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v5, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 1254
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x4b

    .line 1253
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    if-eq p1, v5, :cond_5

    .line 1259
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1261
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->showKey(I)V

    goto :goto_1

    .line 1266
    :cond_4
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->showKey(I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public clearPressState()V
    .locals 1

    .line 2366
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->removeMessages()V

    const/4 v0, -0x1

    .line 2367
    invoke-direct {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->showPreview(I)V

    return-void
.end method

.method public closing()V
    .locals 1

    .line 1909
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-virtual {v0}, Lcolor/support/v7/widget/ColorPopupWindow;->dismiss()V

    :cond_0
    const/4 v0, -0x1

    .line 1912
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviousKey:I

    .line 1914
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->removeMessages()V

    .line 1916
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x0

    .line 1917
    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1918
    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1919
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected getIconState(I)[I
    .locals 3

    .line 2097
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    goto :goto_0

    .line 2101
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIconState:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/color/support/widget/SecurityKeyboardView;->onCreateIconState(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v0, v0, -0x401

    .line 2103
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2106
    :goto_0
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIconState:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getKeyboard()Lcom/color/support/widget/SecurityKeyboard;
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    return-object p0
.end method

.method public getNewShifted()I
    .locals 0

    .line 731
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-eqz p0, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboard;->getNewShifted()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method protected getOnKeyboardActionListener()Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method public handleBack()Z
    .locals 1

    .line 1950
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->dismissPopupKeyboard()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected iconStateChanged(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2090
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->getIconState(I)[I

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2091
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2092
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public invalidateAllKeys()V
    .locals 4

    .line 1394
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    .line 1395
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDrawPending:Z

    .line 1396
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate()V

    return-void
.end method

.method public invalidateKey(I)V
    .locals 6

    .line 1408
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 1409
    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 1412
    :cond_1
    aget-object p1, v0, p1

    .line 1413
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mInvalidatedKey:Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 1414
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    iget v4, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    add-int/2addr v3, v4

    .line 1415
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    iget v5, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1414
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1416
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->onBufferDraw()V

    .line 1417
    iget v0, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    iget v3, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    add-int/2addr v2, v3

    .line 1418
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    iget p1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->height:I

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result p1

    add-int/2addr v3, p1

    .line 1417
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->invalidate(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isKeyboardViewEnabled()Z
    .locals 0

    .line 2185
    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIsEnable:Z

    return p0
.end method

.method public isPreviewEnabled()Z
    .locals 0

    .line 770
    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mShowPreview:Z

    return p0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 0

    .line 818
    iget-boolean p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mProximityCorrectOn:Z

    return p0
.end method

.method public isSecurityNumericKeyboard()Z
    .locals 1

    .line 2260
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboard;->getKeyboardType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShifted()Z
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-eqz p0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboard;->isShifted()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 563
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 564
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->initGestureDetector()V

    .line 565
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Lcom/color/support/widget/SecurityKeyboardView$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/SecurityKeyboardView$2;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 838
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method protected onCreateIconState(II)[I
    .locals 3

    .line 2111
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2113
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

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

    .line 2119
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit8 v1, v1, 0x1

    .line 2122
    :cond_2
    sget-object p0, Lcom/color/support/widget/SecurityKeyboardView;->VIEW_STATE_SETS:[[[I

    aget-object p0, p0, p1

    aget-object p0, p0, v1

    if-nez p2, :cond_3

    return-object p0

    :cond_3
    if-eqz p0, :cond_4

    .line 2128
    array-length p1, p0

    add-int/2addr p1, p2

    new-array p1, p1, [I

    .line 2129
    array-length p2, p0

    invoke-static {p0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 2131
    :cond_4
    new-array p1, p2, [I

    :goto_1
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1932
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1933
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->closing()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 899
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 900
    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 901
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->onBufferDraw()V

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 905
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbolsOffset:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->drawSpecialSymbol(Landroid/graphics/Canvas;I)V

    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1534
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1546
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1538
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 1542
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1550
    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1551
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1553
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLongPress(Lcom/color/support/widget/SecurityKeyboard$Key;)Z
    .locals 8

    .line 1448
    iget v2, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->popupResId:I

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 1451
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1452
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_2

    .line 1453
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1455
    iget v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1456
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboard:Lcom/color/support/widget/SecurityKeyboardView;

    .line 1458
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1460
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboard:Lcom/color/support/widget/SecurityKeyboardView;

    new-instance v1, Lcom/color/support/widget/SecurityKeyboardView$4;

    invoke-direct {v1, p0}, Lcom/color/support/widget/SecurityKeyboardView$4;-><init>(Lcom/color/support/widget/SecurityKeyboardView;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->setOnKeyboardActionListener(Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;)V

    .line 1494
    iget-object v0, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1495
    new-instance v7, Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    .line 1496
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/SecurityKeyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_0

    .line 1498
    :cond_1
    new-instance v7, Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0, v2}, Lcom/color/support/widget/SecurityKeyboard;-><init>(Landroid/content/Context;I)V

    .line 1500
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboard:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0, v7}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 1501
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboard:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1502
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1503
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1504
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1502
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1506
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1508
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/SecurityKeyboardView;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboard:Lcom/color/support/widget/SecurityKeyboardView;

    .line 1511
    :goto_1
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->getLocationInWindow([I)V

    .line 1512
    iget v0, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupX:I

    .line 1513
    iget v0, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupY:I

    .line 1514
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupX:I

    iget p1, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->width:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupX:I

    .line 1515
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupY:I

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupY:I

    .line 1516
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupX:I

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCoordinates:[I

    aget v0, v0, v6

    add-int/2addr p1, v0

    .line 1517
    iget v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupY:I

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mCoordinates:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1518
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboard:Lcom/color/support/widget/SecurityKeyboardView;

    if-gez p1, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    invoke-virtual {v1, v3, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setPopupOffset(II)V

    .line 1519
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboard:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getNewShifted()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/color/support/widget/SecurityKeyboardView;->setNewShifted(I)V

    .line 1520
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1521
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1522
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1523
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v6, p1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1524
    iput-boolean v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1526
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    return v2

    :cond_4
    return v6
.end method

.method public onMeasure(II)V
    .locals 1

    .line 854
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-nez p2, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 857
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 861
    iget-object p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {p2}, Lcom/color/support/widget/SecurityKeyboard;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 889
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 890
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 p1, 0x0

    .line 894
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1562
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1566
    iget v2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mOldPointerCount:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v11, :cond_1

    const/4 v6, 0x0

    .line 1570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    .line 1569
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1571
    invoke-direct {p0, v2, v10}, Lcom/color/support/widget/SecurityKeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v3

    .line 1572
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    if-ne v1, v11, :cond_0

    .line 1575
    invoke-direct {p0, p1, v11}, Lcom/color/support/widget/SecurityKeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    move v11, p1

    goto :goto_0

    :cond_0
    move v11, v3

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    .line 1579
    iget v7, p0, Lcom/color/support/widget/SecurityKeyboardView;->mOldPointerX:F

    iget v8, p0, Lcom/color/support/widget/SecurityKeyboardView;->mOldPointerY:F

    .line 1580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    .line 1579
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1581
    invoke-direct {p0, p1, v11}, Lcom/color/support/widget/SecurityKeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_2
    if-ne v0, v11, :cond_3

    .line 1586
    invoke-direct {p0, p1, v10}, Lcom/color/support/widget/SecurityKeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mOldPointerX:F

    .line 1588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mOldPointerY:F

    .line 1594
    :cond_3
    :goto_0
    iput v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mOldPointerCount:I

    return v11
.end method

.method protected refreshIconState(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2083
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    .line 2085
    iget-object v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2086
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SecurityKeyboardView;->iconStateChanged(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 688
    invoke-direct {p0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->showPreview(I)V

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->removeMessages()V

    .line 692
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    .line 693
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 694
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/color/support/widget/SecurityKeyboard$Key;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/color/support/widget/SecurityKeyboard$Key;

    iput-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeys:[Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 695
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->requestLayout()V

    const/4 v0, 0x1

    .line 697
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardChanged:Z

    .line 698
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    .line 699
    invoke-direct {p0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->computeProximityThreshold(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 700
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 705
    iput v1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 707
    iput-boolean v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mAbortKey:Z

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 1

    .line 2216
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    .line 2218
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_lower_letter_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLowerLetterSize:I

    .line 2220
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_space_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpaceLabelSize:I

    .line 2222
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_lower_letter_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mNumberLetterSize:I

    .line 2224
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_keyboard_end_label_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mEndLabelSize:I

    .line 2226
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_numeric_keyboard_special_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialItemSize:I

    .line 2228
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->oppo_password_kbd_symbols_special_symbols_textSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSymbolsLabelSize:I

    .line 2229
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->oppo_password_kbd_skip_symbols_key_labelSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSkipSymbolsLabelSize:I

    .line 2230
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->oppo_password_numeric_keyboard_line_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    .line 2232
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$array;->color_security_numeric_keyboard_special_symbol:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    .line 2233
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_numeric_keyboard_special_symbol_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbolsOffset:I

    .line 2235
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_password_numeric_delete_dimen_keyWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyWidth:I

    .line 2236
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_security_password_numeric_special_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyHeight:I

    .line 2238
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyWidth:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyWidth:I

    .line 2239
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyHeight:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialKeyHeight:I

    .line 2240
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mLineWidth:F

    .line 2241
    iget p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbolsOffset:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mSpecialSymbolsOffset:I

    .line 2243
    invoke-direct {p0}, Lcom/color/support/widget/SecurityKeyboardView;->initState()V

    return-void
.end method

.method public setKeyboardViewEnabled(Z)V
    .locals 0

    .line 2191
    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mIsEnable:Z

    return-void
.end method

.method public setNewShifted(I)V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0, p1}, Lcom/color/support/widget/SecurityKeyboard;->setNewShifted(I)V

    .line 718
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    :cond_0
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public setOnKeyboardCharListener(Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;)V
    .locals 0

    .line 2200
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardCharListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;

    return-void
.end method

.method public setPopupOffset(II)V
    .locals 0

    .line 806
    iput p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOffsetX:I

    .line 807
    iput p2, p0, Lcom/color/support/widget/SecurityKeyboardView;->mMiniKeyboardOffsetY:I

    .line 808
    iget-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-virtual {p1}, Lcolor/support/v7/widget/ColorPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SecurityKeyboardView"

    const-string p2, "PopupView is Showing"

    .line 809
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPreviewPopup:Lcolor/support/v7/widget/ColorPopupWindow;

    invoke-virtual {p0}, Lcolor/support/v7/widget/ColorPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mPopupParent:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0

    .line 781
    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mShowPreview:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0

    .line 829
    iput-boolean p1, p0, Lcom/color/support/widget/SecurityKeyboardView;->mProximityCorrectOn:Z

    return-void
.end method

.method public setShifted(Z)Z
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0, p1}, Lcom/color/support/widget/SecurityKeyboard;->setShifted(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVerticalCorrection(I)V
    .locals 0

    return-void
.end method

.method protected swipeDown()V
    .locals 0

    .line 1901
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {p0}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->swipeDown()V

    return-void
.end method

.method protected swipeLeft()V
    .locals 0

    .line 1893
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {p0}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->swipeLeft()V

    return-void
.end method

.method protected swipeRight()V
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {p0}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->swipeRight()V

    return-void
.end method

.method protected swipeUp()V
    .locals 0

    .line 1897
    iget-object p0, p0, Lcom/color/support/widget/SecurityKeyboardView;->mKeyboardActionListener:Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {p0}, Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;->swipeUp()V

    return-void
.end method
