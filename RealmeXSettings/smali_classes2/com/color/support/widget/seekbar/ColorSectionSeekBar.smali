.class public Lcom/color/support/widget/seekbar/ColorSectionSeekBar;
.super Landroid/view/View;
.source "ColorSectionSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/seekbar/ColorSectionSeekBar$PatternExploreByTouchHelper;,
        Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_WIDTH:I = 0xfc

.field private static final MOVE_ANIMATING:I = -0x1

.field private static final MOVE_RATIO:F = 0.8f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActionMoveDirection:I

.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mBackgroundHighlightColor:I

.field private mBackgroundRadius:I

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCurBackgroundColor:I

.field private mCurBackgroundRadius:F

.field private mCurThumbInRadius:F

.field private mCurThumbOutRadius:F

.field private mCurThumbShadowRadius:I

.field private mCurrentOffset:F

.field private mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$PatternExploreByTouchHelper;

.field private mIsDragging:Z

.field private mIsFastMoving:Z

.field private mLastX:F

.field private mMoveAnimationEndThumbX:F

.field private mMoveAnimationStartThumbX:F

.field private mMoveAnimationValue:F

.field private mMoveAnimator:Landroid/animation/ValueAnimator;

.field private mNumber:I

.field private mOnStateChangeListener:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

.field private mOnStopTrackingMask:Z

.field private mOverstep:F

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbInRadius:I

.field private mThumbOutRadius:I

.field private mThumbPos:I

.field private mThumbScaleInRadius:I

.field private mThumbScaleOutRadius:I

.field private mThumbShadowColor:I

.field private mThumbShadowRadius:I

.field private mThumbX:F

.field private mTouchAnimator:Landroid/animation/AnimatorSet;

.field private mTouchDownPos:I

.field private mTouchDownThumbX:F

.field private mTouchDownX:F

.field private mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 148
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorSectionSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    .line 94
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchSlop:I

    .line 97
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    .line 99
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsDragging:Z

    .line 110
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    const/4 v1, -0x1

    .line 112
    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownPos:I

    const/4 v1, 0x0

    .line 113
    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownThumbX:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 115
    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    .line 123
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    .line 134
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStopTrackingMask:Z

    .line 135
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsFastMoving:Z

    .line 164
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 165
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 166
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarThumbColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 167
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarThumbRadius:I

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbInRadius:I

    .line 168
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarThumbScaleRadius:I

    const v1, 0x406ae148    # 3.67f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbScaleInRadius:I

    .line 169
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarProgressScaleRadius:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbScaleOutRadius:I

    .line 170
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p3, v1, :cond_0

    .line 171
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarProgressColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 173
    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, p3}, Lcom/color/support/c/b;->a(Landroid/content/Context;I)I

    move-result p1

    .line 174
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_seekbar_progress_color_disabled:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 173
    invoke-static {p1, p3}, Lcom/color/support/c/i;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 176
    :goto_0
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarProgressRadius:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbOutRadius:I

    .line 177
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarBackgroundColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 178
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarBackgroundRadius:I

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->dpToPx(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRadius:I

    .line 179
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarBackgroundHighlightColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_seekbar_background_highlight_color:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundHighlightColor:I

    .line 180
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarThumbShadowRadius:I

    const/high16 p3, 0x41600000    # 14.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->dpToPx(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowRadius:I

    .line 181
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSectionSeekBar_colorSectionSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_seekbar_thumb_shadow_color:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowColor:I

    .line 182
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbOutRadius:I

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbOutRadius:F

    .line 185
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbInRadius:I

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbInRadius:F

    .line 186
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRadius:I

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurBackgroundRadius:F

    .line 187
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbShadowRadius:I

    .line 189
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchSlop:I

    .line 192
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 193
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 196
    new-instance p1, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$PatternExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$PatternExploreByTouchHelper;-><init>(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$PatternExploreByTouchHelper;

    .line 197
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 198
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p1, p3, :cond_1

    .line 199
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mExploreByTouchHelper:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$PatternExploreByTouchHelper;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 203
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->initAnimator()V

    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F
    .locals 0

    .line 89
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurBackgroundRadius:F

    return p1
.end method

.method static synthetic access$1000(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationStartThumbX:F

    return p0
.end method

.method static synthetic access$102(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F
    .locals 0

    .line 89
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbInRadius:F

    return p1
.end method

.method static synthetic access$1100(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurrentOffset:F

    return p0
.end method

.method static synthetic access$1202(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F
    .locals 0

    .line 89
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOverstep:F

    return p1
.end method

.method static synthetic access$1300(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    return p0
.end method

.method static synthetic access$1400(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationEndThumbX:F

    return p0
.end method

.method static synthetic access$1500(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSectionWidth()F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    return p0
.end method

.method static synthetic access$1700(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->checkThumbPosChange(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStopTrackingMask:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStopTrackingMask:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsFastMoving:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsFastMoving:Z

    return p1
.end method

.method static synthetic access$200(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbInRadius:I

    return p0
.end method

.method static synthetic access$2000(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;FZ)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidateProgress(FZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)I
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbPosByX(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getStart()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowRadius:I

    return p0
.end method

.method static synthetic access$2400(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRadius:I

    return p0
.end method

.method static synthetic access$2500(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getEnd()I

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F
    .locals 0

    .line 89
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbOutRadius:F

    return p1
.end method

.method static synthetic access$400(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbOutRadius:I

    return p0
.end method

.method static synthetic access$500(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbScaleInRadius:I

    return p0
.end method

.method static synthetic access$600(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbScaleOutRadius:I

    return p0
.end method

.method static synthetic access$702(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)I
    .locals 0

    .line 89
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbShadowRadius:I

    return p1
.end method

.method static synthetic access$800(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationValue:F

    return p0
.end method

.method static synthetic access$802(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F
    .locals 0

    .line 89
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F
    .locals 0

    .line 89
    iget p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    return p0
.end method

.method static synthetic access$902(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F
    .locals 0

    .line 89
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    return p1
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 538
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private calculateThumbPositionByIndex()V
    .locals 3

    .line 622
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSeekBarWidth()I

    move-result v0

    .line 623
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    .line 624
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 625
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    :cond_0
    return-void
.end method

.method private checkThumbPosChange(I)V
    .locals 1

    .line 828
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    if-eq v0, p1, :cond_1

    .line 829
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    .line 830
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStateChangeListener:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 831
    invoke-interface {v0, p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;->onPositionChanged(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)V

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->performFeedback()V

    :cond_1
    return-void
.end method

.method private dpToPx(F)F
    .locals 2

    .line 548
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private dpToPx(I)I
    .locals 2

    int-to-float p1, p1

    .line 544
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getColor(Landroid/content/res/ColorStateList;I)I
    .locals 1

    if-nez p1, :cond_0

    return p2

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 283
    invoke-virtual {p1, v0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private getEnd()I
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method private getLimitThumbX(F)F
    .locals 1

    .line 552
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private getSectionWidth()F
    .locals 2

    .line 641
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getSeekBarWidth()I
    .locals 2

    .line 637
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowRadius:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getStart()I
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private getThumbPosByX(F)I
    .locals 2

    .line 556
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSeekBarWidth()I

    move-result v0

    .line 557
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    sub-float p1, v1, p1

    .line 560
    :cond_0
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    .line 561
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getThumbXByIndex(I)F
    .locals 2

    .line 565
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSeekBarWidth()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    .line 566
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v0, v0

    .line 567
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 568
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    sub-float p1, v0, p1

    :cond_0
    return p1
.end method

.method private getTouchXOfDrawArea(Landroid/view/MotionEvent;)F
    .locals 1

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowRadius:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 434
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private initAnimator()V
    .locals 10

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 207
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 210
    new-array v1, v0, [F

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRadius:I

    int-to-float v3, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/4 v5, 0x1

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x73

    .line 211
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    new-instance v2, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$1;

    invoke-direct {v2, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$1;-><init>(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    new-array v2, v0, [F

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRadius:I

    int-to-float v9, v8

    mul-float/2addr v9, v3

    aput v9, v2, v4

    int-to-float v3, v8

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 225
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x57

    .line 226
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 227
    new-instance v3, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;

    invoke-direct {v3, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;-><init>(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    new-array v0, v0, [I

    aput v4, v0, v4

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowRadius:I

    aput v3, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xca

    .line 239
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    new-instance v3, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$3;

    invoke-direct {v3, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$3;-><init>(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 246
    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private invalidateProgress(FZ)V
    .locals 5

    .line 401
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    invoke-direct {p0, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbXByIndex(I)F

    move-result v0

    sub-float/2addr p1, v0

    .line 404
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSectionWidth()F

    move-result v1

    .line 406
    iget-boolean v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_0

    div-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    div-float/2addr p1, v1

    .line 409
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 412
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsFastMoving:Z

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationEndThumbX:F

    int-to-float v4, p1

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    :cond_2
    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 417
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurrentOffset:F

    .line 418
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOverstep:F

    .line 419
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOverstep:F

    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationEndThumbX:F

    .line 420
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    sub-float/2addr v1, v0

    .line 421
    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStopTrackingMask:Z

    add-float/2addr p1, v0

    if-eqz p2, :cond_3

    const/16 p2, 0x64

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 422
    :goto_1
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->startMoveAnimation(FFFI)V

    :cond_4
    return-void
.end method

.method private performFeedback()V
    .locals 2

    const/16 v0, 0x12e

    const/4 v1, 0x0

    .line 395
    invoke-static {p0, v0, v1}, Lcom/oppo/util/ColorOSHapticFeedbackUtils;->performHapticFeedback(Landroid/view/View;II)Z

    return-void
.end method

.method private releaseAnim()V
    .locals 9

    .line 589
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 590
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 591
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    .line 592
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 593
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;

    invoke-direct {v1, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;-><init>(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    const/4 v0, 0x2

    .line 611
    new-array v1, v0, [F

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbInRadius:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbInRadius:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "radiusIn"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 612
    new-array v2, v0, [F

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbOutRadius:F

    aput v5, v2, v3

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbOutRadius:I

    int-to-float v5, v5

    aput v5, v2, v4

    const-string v5, "radiusOut"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 613
    new-array v5, v0, [I

    iget v6, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbShadowRadius:I

    aput v6, v5, v3

    aput v3, v5, v4

    const-string v6, "thumbShadowRadius"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 614
    new-array v6, v0, [F

    iget v7, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurBackgroundRadius:F

    aput v7, v6, v3

    iget v7, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRadius:I

    int-to-float v7, v7

    aput v7, v6, v4

    const-string v7, "backgroundRadius"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 616
    iget-object v7, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v8, v3

    aput-object v2, v8, v4

    aput-object v5, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 618
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startDrag()V
    .locals 1

    const/4 v0, 0x1

    .line 427
    invoke-virtual {p0, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setPressed(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->onStartTrackingTouch()V

    .line 429
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startMoveAnimation(FFFI)V
    .locals 5

    .line 457
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationEndThumbX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iput p2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationEndThumbX:F

    .line 469
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationStartThumbX:F

    .line 470
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 471
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v0, v2, :cond_1

    .line 474
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;

    invoke-direct {v2, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;-><init>(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;

    invoke-direct {v2, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;-><init>(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 532
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 533
    iget-object p4, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p3, v0, v1

    const/4 p3, 0x1

    sub-float/2addr p2, p1

    aput p2, v0, p3

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 534
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 461
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStopTrackingMask:Z

    if-eqz p1, :cond_4

    .line 462
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->onStopTrackingTouch()V

    .line 463
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStopTrackingMask:Z

    :cond_4
    return-void
.end method

.method private touchAnim()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private trackTouchEvent(F)V
    .locals 3

    .line 439
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownThumbX:F

    sub-float/2addr p1, v0

    .line 440
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getSectionWidth()F

    move-result v0

    div-float v1, p1, v0

    float-to-int v1, v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    .line 444
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int v1, v1

    .line 447
    :cond_0
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurrentOffset:F

    .line 448
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownPos:I

    add-int/2addr p1, v1

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_1

    .line 449
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownThumbX:F

    add-float/2addr v2, p1

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationValue:F

    const/16 v1, 0x64

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->startMoveAnimation(FFFI)V

    return-void

    .line 451
    :cond_1
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownThumbX:F

    add-float/2addr p1, v2

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurrentOffset:F

    sub-float/2addr v0, v2

    const v1, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    .line 452
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidate()V

    return-void
.end method


# virtual methods
.method public getThumbIndex()I
    .locals 1

    .line 649
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 821
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 842
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 843
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 288
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->calculateThumbPositionByIndex()V

    .line 290
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOverstep:F

    .line 291
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOverstep:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationEndThumbX:F

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 295
    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowRadius:I

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRadius:I

    sub-int/2addr v1, v2

    .line 296
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getStart()I

    move-result v2

    add-int/2addr v2, v1

    .line 297
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 299
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v0, v0

    iget v4, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurBackgroundRadius:F

    sub-float v5, v0, v4

    int-to-float v3, v3

    add-float/2addr v4, v0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 300
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {p0, v2}, Lcom/color/support/widget/seekbar/SeekBarHelper;->getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurBackgroundRadius:F

    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 303
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowRadius:I

    add-int/2addr v1, v2

    .line 304
    iget-object v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    .line 305
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbShadowRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 307
    iget-object v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mProgressColor:Landroid/content/res/ColorStateList;

    sget v4, Lcom/color/support/widget/seekbar/SeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    invoke-direct {p0, v3, v4}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getColor(Landroid/content/res/ColorStateList;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbOutRadius:F

    iget-object v4, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 310
    iget-object v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbColor:Landroid/content/res/ColorStateList;

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getColor(Landroid/content/res/ColorStateList;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mCurThumbInRadius:F

    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 263
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 264
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 266
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    const/16 p1, 0xfc

    .line 269
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->dpToPx(I)I

    move-result p1

    :cond_0
    if-eq v1, v2, :cond_1

    .line 272
    iget p2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbShadowRadius:I

    shl-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    .line 275
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsDragging:Z

    .line 576
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStateChangeListener:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;->onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 630
    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsDragging:Z

    .line 631
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStateChangeListener:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 632
    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;->onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 317
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    goto/16 :goto_3

    .line 331
    :cond_1
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result v0

    .line 332
    iget-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsDragging:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 334
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mLastX:F

    sub-float v3, v0, p1

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    sub-float p1, v0, p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_3

    move v1, v4

    .line 340
    :cond_3
    :goto_0
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mActionMoveDirection:I

    neg-int p1, p1

    if-ne v1, p1, :cond_5

    .line 341
    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mActionMoveDirection:I

    .line 342
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownPos:I

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    if-eq p1, v1, :cond_4

    .line 343
    iput v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownPos:I

    .line 344
    invoke-direct {p0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbXByIndex(I)F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownThumbX:F

    .line 345
    iput v5, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationValue:F

    .line 347
    :cond_4
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 348
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 351
    :cond_5
    invoke-direct {p0, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->trackTouchEvent(F)V

    goto :goto_1

    .line 353
    :cond_6
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    .line 356
    :cond_7
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_9

    .line 357
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->startDrag()V

    .line 358
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->touchAnim()V

    .line 360
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownX:F

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbPosByX(F)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownPos:I

    .line 362
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownPos:I

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->checkThumbPosChange(I)V

    .line 363
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownPos:I

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbXByIndex(I)F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownThumbX:F

    .line 364
    iput v5, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationValue:F

    .line 365
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownThumbX:F

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    .line 366
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidate()V

    .line 367
    invoke-direct {p0, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->trackTouchEvent(F)V

    .line 368
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownX:F

    sub-float p1, v0, p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_8

    move v4, v2

    :cond_8
    iput v4, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mActionMoveDirection:I

    .line 371
    :cond_9
    :goto_1
    iput v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mLastX:F

    goto :goto_3

    .line 375
    :cond_a
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_b

    .line 376
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidateProgress(FZ)V

    .line 377
    invoke-virtual {p0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setPressed(Z)V

    goto :goto_2

    .line 379
    :cond_b
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/SeekBarHelper;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 380
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->onStartTrackingTouch()V

    .line 381
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mIsDragging:Z

    .line 382
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidateProgress(FZ)V

    .line 383
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->onStopTrackingTouch()V

    .line 386
    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->releaseAnim()V

    goto :goto_3

    .line 323
    :cond_d
    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStopTrackingMask:Z

    if-eqz v0, :cond_e

    .line 325
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStopTrackingMask:Z

    .line 326
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->onStopTrackingTouch()V

    .line 328
    :cond_e
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mTouchDownX:F

    :goto_3
    return v2
.end method

.method public setNumber(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 677
    :cond_0
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    .line 678
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    if-le p1, v0, :cond_1

    .line 679
    invoke-direct {p0, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->checkThumbPosChange(I)V

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    .line 682
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->calculateThumbPositionByIndex()V

    .line 683
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidate()V

    :cond_2
    return-void
.end method

.method public setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOnStateChangeListener:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    return-void
.end method

.method public setThumbIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 657
    iget v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mNumber:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbPos:I

    .line 661
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getWidth()I

    move-result p1

    if-eqz p1, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->calculateThumbPositionByIndex()V

    .line 663
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mThumbX:F

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOverstep:F

    .line 664
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mOverstep:F

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->mMoveAnimationEndThumbX:F

    .line 665
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
