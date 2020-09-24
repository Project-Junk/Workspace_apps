.class public Lcom/color/support/widget/ColorEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "ColorEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;,
        Lcom/color/support/widget/ColorEditText$OppoTextWatcher;,
        Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;,
        Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;,
        Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_VALUE:I = 0xff

.field private static final BACKGROUND_ANIMATION_DURATION:I = 0xfa

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xc8

.field private static final LOG_DBG:Z = false

.field public static final MODE_BACKGROUND_LINE:I = 0x1

.field public static final MODE_BACKGROUND_NONE:I = 0x0

.field public static final MODE_BACKGROUND_RECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ColorEditText"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimator1:Landroid/animation/ValueAnimator;

.field private mAnimator2:Landroid/animation/ValueAnimator;

.field private mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mBoxBackgroundMode:I

.field private mBoxCornerRadiusBottomEnd:F

.field private mBoxCornerRadiusBottomStart:F

.field private mBoxCornerRadiusTopEnd:F

.field private mBoxCornerRadiusTopStart:F

.field private mBoxStrokeColor:I

.field private final mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

.field private mContext:Landroid/content/Context;

.field private mDefaultHintTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultStrokeColor:I

.field private mDeletable:Z

.field private mDeleteButton:Ljava/lang/String;

.field private mDeleteNormal:Landroid/graphics/drawable/Drawable;

.field private mDeletePressed:Landroid/graphics/drawable/Drawable;

.field private mDisabledColor:I

.field private mDisabledPaint:Landroid/graphics/Paint;

.field private mDrawXProgress:F

.field private mDrawablePadding:I

.field private mDrawableSizeRight:I

.field private mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

.field private mFocusedAlpha:I

.field private mFocusedPaint:Landroid/graphics/Paint;

.field private mFocusedStrokeColor:I

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mForceFinishDetach:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIsProvidingHint:Z

.field private mLabelCutoutPadding:I

.field private mLineExpanded:Z

.field private mLineModePaddingMiddle:I

.field private mLineModePaddingTop:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOppoTextWatcher:Lcom/color/support/widget/ColorEditText$OppoTextWatcher;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPasswordDeleteListener:Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;

.field private mPathInterpolator1:Landroid/view/animation/Interpolator;

.field private mPathInterpolator2:Landroid/view/animation/Interpolator;

.field private mQuickDelete:Z

.field private mRectModePaddingTop:I

.field private mShouldHandleDelete:Z

.field private mStrokeWidth:I

.field private mStrokeWidthFocused:I

.field private mTextDeleteListener:Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchHelper:Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v0, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mShouldHandleDelete:Z

    .line 105
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    .line 106
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mTextDeleteListener:Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;

    .line 110
    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mPasswordDeleteListener:Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;

    .line 114
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mForceFinishDetach:Z

    .line 116
    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteButton:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mOppoTextWatcher:Lcom/color/support/widget/ColorEditText$OppoTextWatcher;

    const/4 v1, 0x3

    .line 132
    iput v1, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    .line 136
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mTmpRectF:Landroid/graphics/RectF;

    .line 192
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 194
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 195
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_quickDelete:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 196
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorEditTextErrorColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$color;->color_error_color_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 197
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorEditText;->setFastDeletable(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_edit_text_delete_icon_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_edit_text_delete_icon_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 208
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 209
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    :cond_1
    new-instance v0, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;-><init>(Lcom/color/support/widget/ColorEditText;Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTouchHelper:Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;

    .line 216
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTouchHelper:Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v0, 0x1

    .line 217
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 218
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mContext:Landroid/content/Context;

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_slide_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteButton:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTouchHelper:Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->invalidateRoot()V

    .line 221
    new-instance v0, Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ErrorEditTextHelper;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorEditText;->initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    iget-object v5, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    iget v7, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    iget v8, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getCornerRadiiAsArray()[F

    move-result-object v9

    iget-object v10, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual/range {v5 .. v10}, Lcom/color/support/widget/ErrorEditTextHelper;->init(III[FLcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    return-void
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorEditText;F)F
    .locals 0

    .line 76
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mDrawXProgress:F

    return p1
.end method

.method static synthetic access$202(Lcom/color/support/widget/ColorEditText;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mFocusedAlpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorEditText;)Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorEditText;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->updateDeletableStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorEditText;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteButton:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->onFastDelete()V

    return-void
.end method

.method private animateToExpansionFraction(F)V
    .locals 4

    .line 1191
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1195
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1196
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1197
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1198
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$3;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1208
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateToHideBackground()V
    .locals 3

    .line 1172
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1173
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    .line 1174
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1175
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1176
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$2;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1186
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 1187
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mLineExpanded:Z

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private animateToShowBackground()V
    .locals 3

    .line 1152
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1153
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    .line 1154
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1155
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1156
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$1;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const/16 v0, 0xff

    .line 1165
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedAlpha:I

    .line 1166
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1167
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 1168
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mLineExpanded:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyBoxAttributes()V
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    .line 892
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->setBoxAttributes()V

    .line 893
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    if-eqz v1, :cond_1

    .line 894
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 897
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->invalidate()V

    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2

    .line 1045
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1046
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1047
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1048
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    .line 613
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 614
    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 615
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/color/support/widget/ColorCutoutDrawable;

    if-nez v0, :cond_1

    .line 620
    new-instance v0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-direct {v0}, Lcom/color/support/widget/ColorCutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 623
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 2

    .line 861
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingTop()I

    move-result p0

    return p0

    .line 863
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLabelMarginTop()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private closeCutout()V
    .locals 1

    .line 1039
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable;->removeCutout()V

    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1008
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 1009
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1011
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x0

    .line 1013
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    .line 1014
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1015
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->openCutout()V

    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 3

    .line 1020
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 1024
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of p0, p0, Lcom/color/support/widget/ColorCutoutDrawable;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private expandHint(Z)V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBoxBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorEditText"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1140
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_2

    .line 1141
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1143
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpansionFraction(F)V

    .line 1145
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorCutoutDrawable;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1146
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->closeCutout()V

    :cond_3
    const/4 p1, 0x1

    .line 1148
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    .line 824
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 826
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 828
    :cond_1
    iget p0, p0, Lcom/color/support/widget/ColorEditText;->mLineModePaddingTop:I

    return p0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 570
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 572
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    const/16 v0, 0x8

    .line 647
    new-array v0, v0, [F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusTopEnd:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusTopStart:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusBottomStart:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget p0, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusBottomEnd:F

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method private getModePaddingTop()I
    .locals 2

    .line 602
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 604
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mRectModePaddingTop:I

    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    float-to-int p0, p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 606
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mLineModePaddingTop:I

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getHintHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/color/support/widget/ColorEditText;->mLineModePaddingMiddle:I

    goto :goto_0
.end method

.method private initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 231
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 235
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 236
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    .line 239
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    .line 242
    :goto_0
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText:[I

    sget v2, Lcolor/support/v7/appcompat/R$style;->Widget_ColorSupport_EditText_HintAnim_Line:I

    .line 243
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 248
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorHintEnabled:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    .line 249
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge p3, v2, :cond_1

    .line 250
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    .line 251
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/color/support/widget/ColorEditText;->setPadding(IIII)V

    return-void

    .line 255
    :cond_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 256
    iget-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz p3, :cond_2

    .line 257
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorHintAnimationEnabled:I

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    .line 261
    :cond_2
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_rectModePaddingTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mRectModePaddingTop:I

    .line 263
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_cornerRadius:I

    .line 264
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 265
    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusTopStart:F

    .line 266
    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusTopEnd:F

    .line 267
    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusBottomEnd:F

    .line 268
    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusBottomStart:F

    .line 270
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeColor:I

    sget v1, Lcolor/support/v7/appcompat/R$attr;->colorPrimaryColor:I

    .line 271
    invoke-static {p1, v1, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    .line 272
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeWidth:I

    .line 273
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    .line 274
    iget p3, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidthFocused:I

    .line 276
    iget-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz p3, :cond_3

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_label_cutout_padding:I

    .line 279
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_line_padding_top:I

    .line 282
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mLineModePaddingTop:I

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_line_padding_middle:I

    .line 285
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mLineModePaddingMiddle:I

    .line 288
    :cond_3
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorBackgroundMode:I

    .line 289
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 291
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setBoxBackgroundMode(I)V

    .line 293
    iget p3, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    .line 294
    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_4
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 298
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_textColorHint:I

    .line 299
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 302
    :cond_5
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorDefaultStrokeColor:I

    .line 303
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_textinput_stroke_color_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mDefaultStrokeColor:I

    .line 304
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorDisabledStrokeColor:I

    .line 305
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_textinput_stroke_color_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->mDisabledColor:I

    .line 307
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_collapsedTextSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 309
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 311
    invoke-virtual {p0, p3, v1}, Lcom/color/support/widget/ColorEditText;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_6

    const-string p1, "sans-serif-medium"

    .line 313
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 314
    iget-object p3, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p3, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 317
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mNormalPaint:Landroid/graphics/Paint;

    .line 320
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->mDefaultStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mDisabledPaint:Landroid/graphics/Paint;

    .line 323
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mDisabledPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->mDisabledColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mDisabledPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 325
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mFocusedPaint:Landroid/graphics/Paint;

    .line 326
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 328
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->setEditText()V

    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 482
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isRtlMode()Z
    .locals 1

    .line 1212
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 0

    .line 590
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->assignBoxBackgroundByMode()V

    .line 591
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxBounds()V

    return-void
.end method

.method private onFastDelete()V
    .locals 3

    .line 473
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 474
    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const-string v0, ""

    .line 475
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private openCutout()V
    .locals 2

    .line 1029
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTmpRectF:Landroid/graphics/RectF;

    .line 1033
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1034
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1035
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    .line 872
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    if-nez v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 880
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 879
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 874
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    :cond_2
    :goto_0
    return-void
.end method

.method private setEditText()V
    .locals 3

    .line 660
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->onApplyBoxBackgroundMode()V

    .line 661
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextSize(F)V

    .line 663
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getGravity()I

    move-result v0

    .line 664
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 666
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextGravity(I)V

    .line 668
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mOriginalHint:Ljava/lang/CharSequence;

    .line 675
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 676
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mIsProvidingHint:Z

    const/4 v1, 0x0

    .line 680
    invoke-direct {p0, v1, v0}, Lcom/color/support/widget/ColorEditText;->updateLabelState(ZZ)V

    .line 681
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_2

    .line 682
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateModePadding()V

    :cond_2
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    .line 735
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    if-nez p1, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->openCutout()V

    .line 739
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    if-eqz p1, :cond_1

    .line 740
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ErrorEditTextHelper;->setHintInternal(Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    :cond_1
    return-void
.end method

.method private updateDeletableStatus(Z)V
    .locals 3

    .line 360
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 364
    iput-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    if-nez v0, :cond_2

    .line 368
    invoke-virtual {p0, v2, v2, p1, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 369
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    goto :goto_0

    .line 371
    :cond_1
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    if-eqz p1, :cond_2

    .line 372
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 373
    iput-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 4

    .line 695
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    .line 696
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 698
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 699
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v3, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 700
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-nez v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->mDisabledColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 704
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->mDisabledColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 706
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 708
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 713
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    if-nez p2, :cond_7

    .line 714
    :cond_4
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->expandHint(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 709
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    if-eqz p2, :cond_7

    .line 710
    :cond_6
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->collapseHint(Z)V

    .line 717
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    if-eqz p1, :cond_8

    .line 718
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ErrorEditTextHelper;->updateLabelState(Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    :cond_8
    return-void
.end method

.method private updateLineModeBackground()V
    .locals 2

    .line 1098
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 1101
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1102
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mLineExpanded:Z

    if-nez v0, :cond_3

    .line 1104
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->animateToShowBackground()V

    goto :goto_0

    .line 1107
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mLineExpanded:Z

    if-eqz v0, :cond_3

    .line 1108
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->animateToHideBackground()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1112
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mDrawXProgress:F

    :cond_3
    :goto_0
    return-void
.end method

.method private updateModePadding()V
    .locals 4

    .line 595
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getModePaddingTop()I

    move-result v0

    .line 596
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v1

    .line 597
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v2

    .line 598
    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 5

    .line 810
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 816
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoundsTop()I

    move-result v1

    .line 817
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    .line 818
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v3

    .line 819
    iget-object v4, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 820
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->applyBoxAttributes()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextInputBoxState()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1122
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1123
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mDisabledColor:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1125
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    goto :goto_0

    .line 1127
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mDefaultStrokeColor:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    .line 1129
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->applyBoxAttributes()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnErrorStateChangedListener(Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;)V
    .locals 0

    .line 1236
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->addOnErrorStateChangedListener(Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;)V

    return-void
.end method

.method public cutoutIsOpen()Z
    .locals 1

    .line 1056
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable;->hasCutout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isDeleteButtonExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTouchHelper:Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 553
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    .line 531
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->dispatchStartTemporaryDetach()V

    .line 532
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mForceFinishDetach:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->onStartTemporaryDetach()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 918
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 919
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 920
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 921
    iget-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 922
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ErrorEditTextHelper;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 923
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, p1, v2}, Lcom/color/support/widget/ErrorEditTextHelper;->drawCollapseText(Landroid/graphics/Canvas;Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    .line 928
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 929
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_3

    .line 930
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxBounds()V

    .line 932
    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ErrorEditTextHelper;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_4

    .line 933
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 935
    :cond_4
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/color/support/widget/ErrorEditTextHelper;->drawModeBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V

    .line 938
    :cond_5
    :goto_1
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 939
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidthFocused:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 940
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v2

    sub-int v5, v2, v1

    .line 941
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->mFocusedAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 942
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v7, 0x0

    int-to-float v10, v5

    .line 943
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/color/support/widget/ColorEditText;->mDisabledPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 944
    :cond_6
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ErrorEditTextHelper;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v7, 0x0

    int-to-float v12, v5

    .line 945
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/color/support/widget/ColorEditText;->mNormalPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v12

    move v10, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 946
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mDrawXProgress:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v11, v1, v2

    iget-object v13, p0, Lcom/color/support/widget/ColorEditText;->mFocusedPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 948
    :cond_7
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v6

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mDrawXProgress:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v7, v1

    iget-object v8, p0, Lcom/color/support/widget/ColorEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/color/support/widget/ColorEditText;->mFocusedPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/color/support/widget/ErrorEditTextHelper;->drawModeBackgroundLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 951
    :cond_8
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 953
    :cond_9
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1061
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1062
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    return-void

    .line 1066
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1072
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mInDrawableStateChanged:Z

    .line 1073
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    .line 1074
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getDrawableState()[I

    move-result-object v1

    .line 1077
    iget-boolean v2, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1079
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->updateLabelState(Z)V

    .line 1082
    :cond_3
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateLineModeBackground()V

    .line 1083
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_4

    .line 1084
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxBounds()V

    .line 1085
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxState()V

    .line 1086
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    if-eqz v0, :cond_4

    .line 1087
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v0, v3

    .line 1088
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/ErrorEditTextHelper;->drawableStateChanged([I)V

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 1092
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->invalidate()V

    .line 1094
    :cond_5
    iput-boolean v3, p0, Lcom/color/support/widget/ColorEditText;->mInDrawableStateChanged:Z

    return-void
.end method

.method public forceFinishDetach()V
    .locals 1

    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mForceFinishDetach:Z

    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .locals 2

    .line 851
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 854
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getBoxStrokeColor()I
    .locals 0

    .line 632
    iget p0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    return p0
.end method

.method public getDeleteButtonLeft()I
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 565
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLabelMarginTop()I
    .locals 1

    .line 839
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 840
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDeleteButtonExist()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isErrorState()Z
    .locals 0

    .line 1220
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ErrorEditTextHelper;->isErrorState()Z

    move-result p0

    return p0
.end method

.method public isFastDeletable()Z
    .locals 0

    .line 336
    iget-boolean p0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    return p0
.end method

.method public isHintEnabled()Z
    .locals 0

    .line 759
    iget-boolean p0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    return p0
.end method

.method public isProvidingHint()Z
    .locals 0

    .line 793
    iget-boolean p0, p0, Lcom/color/support/widget/ColorEditText;->mIsProvidingHint:Z

    return p0
.end method

.method public ismHintAnimationEnabled()Z
    .locals 0

    .line 905
    iget-boolean p0, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 958
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 959
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 382
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eqz p2, :cond_0

    .line 383
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->updateDeletableStatus(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 505
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 506
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mPasswordDeleteListener:Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;

    if-eqz p0, :cond_0

    .line 507
    invoke-interface {p0}, Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;->onPasswordDeleted()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 511
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 969
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatEditText;->onLayout(ZIIII)V

    .line 970
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    .line 971
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 972
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxBounds()V

    .line 974
    :cond_0
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz p1, :cond_1

    .line 975
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateModePadding()V

    .line 978
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result p1

    .line 979
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 981
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->calculateCollapsedTextTopBounds()I

    move-result p3

    .line 982
    iget-object p4, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    .line 984
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingTop()I

    move-result p5

    .line 986
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 982
    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedBounds(IIII)V

    .line 990
    iget-object p4, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result p5

    .line 991
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    .line 990
    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedBounds(IIII)V

    .line 992
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    .line 997
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    if-nez p1, :cond_2

    .line 998
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->openCutout()V

    .line 1000
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ErrorEditTextHelper;->onLayout(Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 964
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 405
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 406
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mDrawableSizeRight:I

    sub-int/2addr v0, v1

    .line 407
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->mDrawableSizeRight:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 414
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isRtlMode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 415
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_1

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    if-le v1, v0, :cond_1

    goto :goto_0

    .line 421
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    goto :goto_2

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 461
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    if-ltz v2, :cond_5

    .line 451
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v0

    if-le v2, v0, :cond_b

    .line 452
    :cond_5
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 453
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_b

    .line 434
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mShouldHandleDelete:Z

    if-eqz v0, :cond_b

    .line 435
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 436
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 438
    :cond_7
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTextDeleteListener:Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;->onTextDeleted()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 444
    :cond_8
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->onFastDelete()V

    .line 445
    iput-boolean v3, p0, Lcom/color/support/widget/ColorEditText;->mShouldHandleDelete:Z

    return v5

    :cond_9
    if-eqz v0, :cond_b

    .line 424
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    if-eqz v0, :cond_b

    .line 425
    iput-boolean v5, p0, Lcom/color/support/widget/ColorEditText;->mShouldHandleDelete:Z

    .line 426
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    .line 427
    invoke-virtual {p0, v4, v4, p1, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return v5

    .line 468
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public removeOnErrorStateChangedListener(Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;)V
    .locals 0

    .line 1244
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->removeOnErrorStateChangedListener(Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 582
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 585
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    .line 586
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->onApplyBoxBackgroundMode()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 640
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 641
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    .line 642
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxState()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 804
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->updateLabelState(Z)V

    .line 806
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ErrorEditTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 494
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    .line 496
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mDrawableSizeRight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 498
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mDrawableSizeRight:I

    :goto_0
    return-void
.end method

.method public setErrorState(Z)V
    .locals 0

    .line 1228
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->setErrorState(Z)V

    return-void
.end method

.method public setFastDeletable(Z)V
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eq v0, p1, :cond_1

    .line 345
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    .line 346
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eqz p1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mOppoTextWatcher:Lcom/color/support/widget/ColorEditText$OppoTextWatcher;

    if-nez p1, :cond_0

    .line 349
    new-instance p1, Lcom/color/support/widget/ColorEditText$OppoTextWatcher;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/color/support/widget/ColorEditText$OppoTextWatcher;-><init>(Lcom/color/support/widget/ColorEditText;Lcom/color/support/widget/ColorEditText$1;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mOppoTextWatcher:Lcom/color/support/widget/ColorEditText$OppoTextWatcher;

    .line 350
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mOppoTextWatcher:Lcom/color/support/widget/ColorEditText$OppoTextWatcher;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->oppo_edit_text_drawable_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mDrawablePadding:I

    .line 354
    iget p1, p0, Lcom/color/support/widget/ColorEditText;->mDrawablePadding:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawablePadding(I)V

    :cond_1
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 767
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 768
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    .line 769
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 770
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mIsProvidingHint:Z

    .line 771
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 772
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 774
    :cond_0
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 776
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 778
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 781
    :cond_2
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 783
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mIsProvidingHint:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setOnTextDeletedListener(Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mTextDeleteListener:Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 516
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 517
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->length()I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setTextDeletedListener(Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mPasswordDeleteListener:Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;

    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 2

    .line 727
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 728
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0

    .line 913
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    return-void
.end method

.method public updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 691
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorEditText;->updateLabelState(ZZ)V

    return-void
.end method
