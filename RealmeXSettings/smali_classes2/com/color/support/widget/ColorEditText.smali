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

.field private mDeleteIconWidth:I

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

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 176
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

    .line 192
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

    .line 193
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 195
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 196
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_quickDelete:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 197
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorEditTextErrorColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$color;->color_error_color_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 198
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorEditText;->setFastDeletable(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_edit_text_delete_icon_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    .line 203
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

    iput v1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteIconWidth:I

    .line 208
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 209
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/color/support/widget/ColorEditText;->mDeleteIconWidth:I

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    move v1, v0

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 212
    iget v3, p0, Lcom/color/support/widget/ColorEditText;->mDeleteIconWidth:I

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

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

    .line 1203
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1207
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1208
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1209
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1210
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$3;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1219
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

    .line 1220
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateToHideBackground()V
    .locals 3

    .line 1184
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    .line 1186
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1187
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1188
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$2;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1198
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 1199
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

    .line 1164
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1165
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    .line 1166
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1167
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1168
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$1;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const/16 v0, 0xff

    .line 1177
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedAlpha:I

    .line 1178
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1179
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 1180
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

    .line 901
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    .line 904
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->setBoxAttributes()V

    .line 905
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    if-eqz v1, :cond_1

    .line 906
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 909
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->invalidate()V

    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2

    .line 1057
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1058
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1059
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1060
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mLabelCutoutPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    .line 625
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 626
    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 627
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/color/support/widget/ColorCutoutDrawable;

    if-nez v0, :cond_1

    .line 632
    new-instance v0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-direct {v0}, Lcom/color/support/widget/ColorCutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 635
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    return-void
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 2

    .line 873
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingTop()I

    move-result v0

    return v0

    .line 875
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 877
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private closeCutout()V
    .locals 1

    .line 1051
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable;->removeCutout()V

    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1020
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 1021
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1023
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x0

    .line 1025
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    .line 1026
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1027
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->openCutout()V

    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 3

    .line 1032
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 1036
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/color/support/widget/ColorCutoutDrawable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private expandHint(Z)V
    .locals 2

    .line 1146
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBoxBackground: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorEditText"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1152
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_2

    .line 1153
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1155
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpansionFraction(F)V

    .line 1157
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorCutoutDrawable;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1158
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->closeCutout()V

    :cond_3
    const/4 p1, 0x1

    .line 1160
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    .line 836
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 840
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mLineModePaddingTop:I

    return v0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 582
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 584
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    const/16 v0, 0x8

    .line 659
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

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxCornerRadiusBottomEnd:F

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method private getModePaddingTop()I
    .locals 3

    .line 614
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 616
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mRectModePaddingTop:I

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 618
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mLineModePaddingTop:I

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getHintHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mLineModePaddingMiddle:I

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
    invoke-static {p1, v1}, Lcom/color/support/c/b;->a(Landroid/content/Context;I)I

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

    const/4 p1, 0x0

    return p1

    .line 494
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private isGravityCenterHorizontal()Z
    .locals 2

    .line 1325
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRtlMode()Z
    .locals 2

    .line 1224
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->assignBoxBackgroundByMode()V

    .line 603
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxBounds()V

    return-void
.end method

.method private onFastDelete()V
    .locals 3

    .line 485
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 486
    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const-string v0, ""

    .line 487
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private openCutout()V
    .locals 2

    .line 1041
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTmpRectF:Landroid/graphics/RectF;

    .line 1045
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1046
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1047
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorCutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    .line 884
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 892
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 886
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidth:I

    return-void
.end method

.method private setEditText()V
    .locals 3

    .line 672
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->onApplyBoxBackgroundMode()V

    .line 673
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextSize(F)V

    .line 675
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getGravity()I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextGravity(I)V

    .line 678
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextGravity(I)V

    .line 680
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->mOriginalHint:Ljava/lang/CharSequence;

    .line 687
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 688
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mIsProvidingHint:Z

    const/4 v1, 0x0

    .line 692
    invoke-direct {p0, v1, v0}, Lcom/color/support/widget/ColorEditText;->updateLabelState(ZZ)V

    .line 693
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_2

    .line 694
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateModePadding()V

    :cond_2
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    .line 747
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    if-nez p1, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->openCutout()V

    .line 751
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    if-eqz p1, :cond_1

    .line 752
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ErrorEditTextHelper;->setHintInternal(Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    :cond_1
    return-void
.end method

.method private updateDeletableStatus(Z)V
    .locals 4

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

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isGravityCenterHorizontal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/color/support/widget/ColorEditText;->setPaddingRelative(IIII)V

    .line 366
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 367
    iput-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 370
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    if-nez p1, :cond_5

    .line 371
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isGravityCenterHorizontal()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    iget p1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteIconWidth:I

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mDrawablePadding:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/color/support/widget/ColorEditText;->setPaddingRelative(IIII)V

    .line 374
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, p1, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    return-void

    .line 377
    :cond_3
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    if-eqz p1, :cond_5

    .line 378
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isGravityCenterHorizontal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 379
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/color/support/widget/ColorEditText;->setPaddingRelative(IIII)V

    .line 381
    :cond_4
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 382
    iput-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    :cond_5
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 4

    .line 707
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    .line 708
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 710
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 711
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v3, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 712
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-nez v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->mDisabledColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 716
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->mDisabledColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 718
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 720
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 725
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    if-nez p2, :cond_7

    .line 726
    :cond_4
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->expandHint(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 721
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    if-eqz p2, :cond_7

    .line 722
    :cond_6
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->collapseHint(Z)V

    .line 729
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    if-eqz p1, :cond_8

    .line 730
    iget-object p2, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ErrorEditTextHelper;->updateLabelState(Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    :cond_8
    return-void
.end method

.method private updateLineModeBackground()V
    .locals 2

    .line 1110
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 1113
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1114
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mLineExpanded:Z

    if-nez v0, :cond_3

    .line 1116
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->animateToShowBackground()V

    return-void

    .line 1119
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mLineExpanded:Z

    if-eqz v0, :cond_3

    .line 1120
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->animateToHideBackground()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1124
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mDrawXProgress:F

    :cond_3
    return-void
.end method

.method private updateModePadding()V
    .locals 4

    .line 607
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getModePaddingTop()I

    move-result v0

    .line 608
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v1

    .line 609
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

    .line 610
    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 5

    .line 822
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoundsTop()I

    move-result v0

    .line 829
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    .line 830
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v2

    .line 831
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 832
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->applyBoxAttributes()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextInputBoxState()V
    .locals 2

    .line 1129
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1134
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1135
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mDisabledColor:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    goto :goto_0

    .line 1136
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1137
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    goto :goto_0

    .line 1139
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mDefaultStrokeColor:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    .line 1141
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->applyBoxAttributes()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnErrorStateChangedListener(Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;)V
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->addOnErrorStateChangedListener(Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;)V

    return-void
.end method

.method public cutoutIsOpen()Z
    .locals 1

    .line 1068
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/color/support/widget/ColorCutoutDrawable;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 560
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isDeleteButtonExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTouchHelper:Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText$AccessibilityTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 565
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    .line 543
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->dispatchStartTemporaryDetach()V

    .line 544
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mForceFinishDetach:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->onStartTemporaryDetach()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 930
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 931
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 932
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 933
    iget-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 934
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ErrorEditTextHelper;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 935
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v1, p1, v2}, Lcom/color/support/widget/ErrorEditTextHelper;->drawCollapseText(Landroid/graphics/Canvas;Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    .line 940
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 941
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_3

    .line 942
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxBounds()V

    .line 944
    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ErrorEditTextHelper;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_4

    .line 945
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 947
    :cond_4
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/color/support/widget/ColorEditText;->mBoxStrokeColor:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/color/support/widget/ErrorEditTextHelper;->drawModeBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V

    .line 950
    :cond_5
    :goto_1
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 951
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mStrokeWidthFocused:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 952
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v2

    sub-int v5, v2, v1

    .line 953
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->mFocusedAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 954
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v7, 0x0

    int-to-float v10, v5

    .line 955
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/color/support/widget/ColorEditText;->mDisabledPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 956
    :cond_6
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v1}, Lcom/color/support/widget/ErrorEditTextHelper;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v7, 0x0

    int-to-float v12, v5

    .line 957
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/color/support/widget/ColorEditText;->mNormalPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v12

    move v10, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 958
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->mDrawXProgress:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v11, v1, v2

    iget-object v13, p0, Lcom/color/support/widget/ColorEditText;->mFocusedPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 960
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

    .line 963
    :cond_8
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 965
    :cond_9
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 4

    .line 1073
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1074
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    return-void

    .line 1078
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1084
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mInDrawableStateChanged:Z

    .line 1085
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    .line 1086
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getDrawableState()[I

    move-result-object v1

    .line 1089
    iget-boolean v2, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1091
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

    .line 1094
    :cond_3
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateLineModeBackground()V

    .line 1095
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_4

    .line 1096
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxBounds()V

    .line 1097
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxState()V

    .line 1098
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    if-eqz v0, :cond_4

    .line 1099
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v0, v3

    .line 1100
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/ErrorEditTextHelper;->drawableStateChanged([I)V

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 1104
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->invalidate()V

    .line 1106
    :cond_5
    iput-boolean v3, p0, Lcom/color/support/widget/ColorEditText;->mInDrawableStateChanged:Z

    return-void
.end method

.method public forceFinishDetach()V
    .locals 1

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mForceFinishDetach:Z

    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .locals 2

    .line 863
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 866
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .line 644
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    return v0
.end method

.method public getDeleteButtonLeft()I
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 577
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 763
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabelMarginTop()I
    .locals 2

    .line 851
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeleteButtonExist()Z
    .locals 1

    .line 554
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

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isErrorState()Z
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ErrorEditTextHelper;->isErrorState()Z

    move-result v0

    return v0
.end method

.method public isFastDeletable()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    return v0
.end method

.method public isHintEnabled()Z
    .locals 1

    .line 771
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    return v0
.end method

.method public isProvidingHint()Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mIsProvidingHint:Z

    return v0
.end method

.method public ismHintAnimationEnabled()Z
    .locals 1

    .line 917
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 970
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 971
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 389
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 390
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eqz p2, :cond_0

    .line 391
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->updateDeletableStatus(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 517
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 518
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mPasswordDeleteListener:Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;

    if-eqz p1, :cond_0

    .line 519
    invoke-interface {p1}, Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;->onPasswordDeleted()Z

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 523
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 981
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatEditText;->onLayout(ZIIII)V

    .line 982
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    .line 983
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxBounds()V

    .line 986
    :cond_0
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eqz p1, :cond_1

    .line 987
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateModePadding()V

    .line 990
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result p1

    .line 991
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 993
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->calculateCollapsedTextTopBounds()I

    move-result p3

    .line 994
    iget-object p4, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    .line 996
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingTop()I

    move-result p5

    .line 998
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 994
    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpandedBounds(IIII)V

    .line 1002
    iget-object p4, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result p5

    .line 1003
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    .line 1002
    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedBounds(IIII)V

    .line 1004
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->recalculate()V

    .line 1009
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintExpanded:Z

    if-nez p1, :cond_2

    .line 1010
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->openCutout()V

    .line 1012
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    iget-object p2, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ErrorEditTextHelper;->onLayout(Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 976
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 413
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mQuickDelete:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 414
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

    .line 415
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

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 422
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isRtlMode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 423
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->isGravityCenterHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/color/support/widget/ColorEditText;->mDeleteIconWidth:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/color/support/widget/ColorEditText;->mDrawablePadding:I

    add-int/2addr v0, v4

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    :goto_0
    if-ge v1, v0, :cond_2

    :goto_1
    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    if-le v1, v0, :cond_2

    goto :goto_1

    .line 433
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    if-eq v1, v5, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    goto :goto_3

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 473
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    if-ltz v2, :cond_6

    .line 463
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v0

    if-le v2, v0, :cond_c

    .line 464
    :cond_6
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 465
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_c

    .line 446
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mShouldHandleDelete:Z

    if-eqz v0, :cond_c

    .line 447
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 448
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mTextDeleteListener:Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;->onTextDeleted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 456
    :cond_9
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->onFastDelete()V

    .line 457
    iput-boolean v3, p0, Lcom/color/support/widget/ColorEditText;->mShouldHandleDelete:Z

    return v5

    :cond_a
    if-eqz v0, :cond_c

    .line 436
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mDeletable:Z

    if-eqz v0, :cond_c

    .line 437
    iput-boolean v5, p0, Lcom/color/support/widget/ColorEditText;->mShouldHandleDelete:Z

    .line 438
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_b

    .line 439
    invoke-virtual {p0, v4, v4, p1, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return v5

    .line 480
    :cond_c
    :goto_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeOnErrorStateChangedListener(Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;)V
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->removeOnErrorStateChangedListener(Lcom/color/support/widget/ColorEditText$OnErrorStateChangedListener;)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 594
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 597
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mBoxBackgroundMode:I

    .line 598
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->onApplyBoxBackgroundMode()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 652
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 653
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mFocusedStrokeColor:I

    .line 654
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->updateTextInputBoxState()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    .line 816
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mColorCollapseTextHelper:Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .line 817
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->updateLabelState(Z)V

    .line 818
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/ErrorEditTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 506
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    .line 508
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mDrawableSizeRight:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 510
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->mDrawableSizeRight:I

    return-void
.end method

.method public setErrorState(Z)V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->mErrorStateHelper:Lcom/color/support/widget/ErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ErrorEditTextHelper;->setErrorState(Z)V

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

    .line 779
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 780
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    .line 781
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 782
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mIsProvidingHint:Z

    .line 783
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 784
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 786
    :cond_0
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    return-void

    .line 788
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 789
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 790
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 793
    :cond_2
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 795
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mIsProvidingHint:Z

    :cond_4
    return-void
.end method

.method public setOnTextDeletedListener(Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mTextDeleteListener:Lcom/color/support/widget/ColorEditText$OnTextDeletedListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 528
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 529
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->length()I

    move-result p2

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setTextDeletedListener(Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->mPasswordDeleteListener:Lcom/color/support/widget/ColorEditText$OnPasswordDeletedListener;

    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 2

    .line 739
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 740
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0

    .line 925
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->mHintAnimationEnabled:Z

    return-void
.end method

.method public updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 703
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorEditText;->updateLabelState(ZZ)V

    return-void
.end method
