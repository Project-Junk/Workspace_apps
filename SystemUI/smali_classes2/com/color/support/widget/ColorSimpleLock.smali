.class public Lcom/color/support/widget/ColorSimpleLock;
.super Landroid/view/View;
.source "ColorSimpleLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;
    }
.end annotation


# static fields
.field public static final DEFAULTTYPE:I = 0x0

.field private static final FOURCIRCLE:I = 0x4

.field private static final FOURINTERVAL:I = 0x3

.field private static final SIXCIRCLE:I = 0x6

.field public static final SIXCIRCLETYPE:I = 0x1

.field private static final SIXINTERVAL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ColorSimpleLock"


# instance fields
.field private final ADD_ANIMATION:I

.field private final CLEAR_ALL_ANIMATION:I

.field private final DELAY_FOUR:[F

.field private final DELAY_SIX:[F

.field private final DELETE_ANIMATION:I

.field private final DRAW_ALL_ANIMATION:I

.field private final FAILED_ANIMATION:I

.field private final FALL_HEIGHT:I

.field private final FALL_SPEED:I

.field private final MORPHING_FILLED_TO_OUTLINED_TIME:I

.field private final MORPHING_OUTLINED_TO_FILLED_TIME:I

.field private final SHAKE_AND_FALL_TIME:I

.field private final SHAKE_X_POINT:[F

.field private animationMode:I

.field private fail_lastDraw:Z

.field private fto_lastDraw:Z

.field private isFingerprintMode:Z

.field private mAddAnimator:Landroid/animation/ValueAnimator;

.field private mCodeImageStart:I

.field public mCodeNumber:I

.field private mContentHeight:I

.field private mContentWidth:I

.field private mDecription:Ljava/lang/String;

.field private mDeleteAnimator:Landroid/animation/ValueAnimator;

.field private mDrawFailedAnimation:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mFailedAnimator:Landroid/animation/Animator;

.field private mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsLinearMotorVersion:Z

.field private mIsVibrator:Z

.field private mNumberStrList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOpacity:I

.field private mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

.field private mRectangleNum:I

.field private mRectanglePadding:I

.field private mRectangleType:I

.field private mRectanglesNumber:I

.field private mRectanglesWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTouchHelper:Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;

.field private mTransitionX:F

.field private mTransitionY:F

.field private otf_lastDraw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 153
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorSimpleLockStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorSimpleLock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    const/4 v1, 0x1

    .line 83
    iput v1, p0, Lcom/color/support/widget/ColorSimpleLock;->DELETE_ANIMATION:I

    const/4 v2, 0x2

    .line 84
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->ADD_ANIMATION:I

    const/4 v2, 0x3

    .line 85
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->CLEAR_ALL_ANIMATION:I

    const/4 v3, 0x4

    .line 86
    iput v3, p0, Lcom/color/support/widget/ColorSimpleLock;->DRAW_ALL_ANIMATION:I

    const/4 v4, 0x5

    .line 87
    iput v4, p0, Lcom/color/support/widget/ColorSimpleLock;->FAILED_ANIMATION:I

    const/16 v5, 0xe6

    .line 89
    iput v5, p0, Lcom/color/support/widget/ColorSimpleLock;->MORPHING_OUTLINED_TO_FILLED_TIME:I

    .line 90
    iput v5, p0, Lcom/color/support/widget/ColorSimpleLock;->MORPHING_FILLED_TO_OUTLINED_TIME:I

    const/16 v5, 0x320

    .line 91
    iput v5, p0, Lcom/color/support/widget/ColorSimpleLock;->SHAKE_AND_FALL_TIME:I

    const/16 v5, 0xfa

    .line 92
    iput v5, p0, Lcom/color/support/widget/ColorSimpleLock;->FALL_SPEED:I

    const/16 v5, 0x96

    .line 93
    iput v5, p0, Lcom/color/support/widget/ColorSimpleLock;->FALL_HEIGHT:I

    const/16 v5, 0x8

    .line 95
    new-array v5, v5, [F

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/color/support/widget/ColorSimpleLock;->SHAKE_X_POINT:[F

    .line 96
    new-array v5, v3, [F

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/color/support/widget/ColorSimpleLock;->DELAY_FOUR:[F

    const/4 v5, 0x6

    .line 97
    new-array v6, v5, [F

    fill-array-data v6, :array_2

    iput-object v6, p0, Lcom/color/support/widget/ColorSimpleLock;->DELAY_SIX:[F

    const/4 v6, 0x0

    .line 100
    iput v6, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesWidth:I

    const/4 v7, 0x0

    .line 105
    iput-object v7, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    iput-boolean v6, p0, Lcom/color/support/widget/ColorSimpleLock;->fto_lastDraw:Z

    .line 113
    iput-boolean v6, p0, Lcom/color/support/widget/ColorSimpleLock;->otf_lastDraw:Z

    .line 114
    iput-boolean v6, p0, Lcom/color/support/widget/ColorSimpleLock;->fail_lastDraw:Z

    .line 117
    iput v6, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 120
    iput-boolean v6, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    .line 122
    iput-object v7, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 123
    iput-object v7, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 124
    iput-object v7, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    const/4 v8, 0x0

    .line 125
    iput v8, p0, Lcom/color/support/widget/ColorSimpleLock;->mScaleX:F

    .line 126
    iput v8, p0, Lcom/color/support/widget/ColorSimpleLock;->mScaleY:F

    .line 127
    iput v6, p0, Lcom/color/support/widget/ColorSimpleLock;->mOpacity:I

    .line 128
    iput v8, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionX:F

    .line 129
    iput v8, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionY:F

    .line 130
    iput-boolean v6, p0, Lcom/color/support/widget/ColorSimpleLock;->isFingerprintMode:Z

    .line 131
    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleType:I

    .line 132
    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    .line 135
    iput-object v7, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    .line 136
    iput-object v7, p0, Lcom/color/support/widget/ColorSimpleLock;->mTouchHelper:Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;

    .line 137
    iput-object v7, p0, Lcom/color/support/widget/ColorSimpleLock;->mDecription:Ljava/lang/String;

    .line 139
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mIsVibrator:Z

    .line 169
    invoke-static {p0, v6}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 170
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorSimpleLock:[I

    invoke-virtual {p1, p2, v0, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 171
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSimpleLock_colorRectanglePadding:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    .line 172
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSimpleLock_colorOutLinedRectangleIconDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSimpleLock;->mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSimpleLock_colorFilledRectangleIconDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSimpleLock_colorCircleNum:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleType:I

    .line 176
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    iget-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 178
    iput-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    .line 180
    iget-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    .line 181
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleType:I

    if-nez p2, :cond_0

    .line 182
    iput v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    .line 183
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    mul-int/2addr p2, v3

    iget p3, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    mul-int/2addr p3, v2

    add-int/2addr p2, p3

    iput p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesWidth:I

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 185
    iput v5, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    .line 186
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    mul-int/2addr p2, v5

    iget p3, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    mul-int/2addr p3, v4

    add-int/2addr p2, p3

    iput p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesWidth:I

    .line 192
    :cond_1
    :goto_0
    new-instance p2, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;-><init>(Lcom/color/support/widget/ColorSimpleLock;Landroid/view/View;)V

    iput-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mTouchHelper:Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;

    .line 193
    iget-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mTouchHelper:Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 194
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    .line 195
    iget-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$string;->color_simple_lock_access_description:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDecription:Ljava/lang/String;

    .line 197
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setImportantForAccessibility(I)V

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oppo.feature.vibrator.waveform.support"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mIsLinearMotorVersion:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        -0x3e200000    # -28.0f
        0x41600000    # 14.0f
        -0x3f000000    # -8.0f
        0x40800000    # 4.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x421a0000    # 38.5f
        0x42b60000    # 91.0f
        0x427c0000    # 63.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x421a0000    # 38.5f
        0x42b60000    # 91.0f
        0x427c0000    # 63.0f
        0x421a0000    # 38.5f
        0x428c0000    # 70.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/color/support/widget/ColorSimpleLock;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->otf_lastDraw:Z

    return p1
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorSimpleLock;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorSimpleLock;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    return p0
.end method

.method static synthetic access$102(Lcom/color/support/widget/ColorSimpleLock;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/color/support/widget/ColorSimpleLock;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDecription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/color/support/widget/ColorSimpleLock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDecription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/color/support/widget/ColorSimpleLock;)Ljava/util/LinkedList;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/color/support/widget/ColorSimpleLock;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    return p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorSimpleLock;)Landroid/animation/Animator;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$202(Lcom/color/support/widget/ColorSimpleLock;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/color/support/widget/ColorSimpleLock;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorSimpleLock;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mIsVibrator:Z

    return p0
.end method

.method static synthetic access$402(Lcom/color/support/widget/ColorSimpleLock;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mIsVibrator:Z

    return p1
.end method

.method static synthetic access$502(Lcom/color/support/widget/ColorSimpleLock;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->fto_lastDraw:Z

    return p1
.end method

.method static synthetic access$602(Lcom/color/support/widget/ColorSimpleLock;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->fail_lastDraw:Z

    return p1
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorSimpleLock;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSimpleLock;->isFingerprintMode:Z

    return p0
.end method

.method static synthetic access$702(Lcom/color/support/widget/ColorSimpleLock;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->isFingerprintMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorSimpleLock;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->performFeedback()V

    return-void
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorSimpleLock;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mContentWidth:I

    return p0
.end method

.method private createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 842
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 843
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 844
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorSimpleLock$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSimpleLock$3;-><init>(Lcom/color/support/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 854
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorSimpleLock$4;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSimpleLock$4;-><init>(Lcom/color/support/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 876
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 790
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 791
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 792
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorSimpleLock$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSimpleLock$1;-><init>(Lcom/color/support/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 801
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorSimpleLock$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSimpleLock$2;-><init>(Lcom/color/support/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 834
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private drawAllCodeAnimation(Landroid/graphics/Canvas;I)V
    .locals 12

    .line 279
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 281
    iget v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 285
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSimpleLock;->otf_lastDraw:Z

    if-eqz v3, :cond_0

    .line 286
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 287
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->judgeType()I

    move-result v10

    :goto_0
    if-ge v2, v10, :cond_3

    .line 293
    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v11, v0, v3

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v11

    move v8, v1

    .line 295
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    if-gt v2, p2, :cond_1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v11

    move v8, v1

    .line 298
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIII)V

    :cond_1
    if-le v2, p2, :cond_2

    .line 301
    iget v9, p0, Lcom/color/support/widget/ColorSimpleLock;->mOpacity:I

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move v7, v11

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V

    .line 304
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    add-int/2addr v0, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawClearAllAnimation(Landroid/graphics/Canvas;I)V
    .locals 12

    .line 310
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 312
    iget v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 315
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSimpleLock;->fto_lastDraw:Z

    if-eqz v3, :cond_0

    .line 316
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 317
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->judgeType()I

    move-result v10

    :goto_0
    if-ge v2, v10, :cond_2

    .line 324
    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v11, v0, v3

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v11

    move v8, v1

    .line 326
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    if-gt v2, p2, :cond_1

    .line 329
    iget v9, p0, Lcom/color/support/widget/ColorSimpleLock;->mOpacity:I

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move v7, v11

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V

    .line 332
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    add-int/2addr v0, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawFailedAnimation(Landroid/graphics/Canvas;I)V
    .locals 13

    .line 372
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 374
    iget v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 381
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSimpleLock;->fail_lastDraw:Z

    if-eqz v3, :cond_0

    .line 382
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 383
    iput-boolean v2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    const/4 p2, -0x1

    .line 384
    iput p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    .line 385
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    return-void

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->judgeType()I

    move-result v12

    :goto_0
    if-ge v2, v12, :cond_2

    .line 392
    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v11, v0, v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move v7, v11

    move v8, v1

    .line 393
    invoke-direct/range {v3 .. v10}, Lcom/color/support/widget/ColorSimpleLock;->drawOutLinedRectangleShake(Landroid/graphics/Canvas;IIIIFF)V

    if-gt v2, p2, :cond_1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move v7, v11

    move v8, v1

    move v11, v2

    .line 395
    invoke-direct/range {v3 .. v11}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangleShakeAndFall(Landroid/graphics/Canvas;IIIIFFI)V

    .line 397
    :cond_1
    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawFilledRectangle(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float p2, p2

    .line 436
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionX:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p4, p4

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 438
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float p3, p3

    .line 515
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionX:F

    add-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float p4, p4

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 517
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 518
    iget-object p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez p6, :cond_0

    const/16 p3, 0x8c

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 519
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawFilledRectangleShakeAndFall(Landroid/graphics/Canvas;IIIIFFI)V
    .locals 0

    .line 501
    iget-object p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    iput-object p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float p3, p3

    .line 502
    iget p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionX:F

    add-float/2addr p3, p6

    float-to-int p3, p3

    int-to-float p4, p4

    add-float/2addr p4, p6

    float-to-int p4, p4

    int-to-float p2, p2

    .line 504
    iget p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionY:F

    invoke-direct {p0, p8, p6}, Lcom/color/support/widget/ColorSimpleLock;->getDelayFallHeight(IF)F

    move-result p6

    add-float/2addr p2, p6

    float-to-int p2, p2

    int-to-float p5, p5

    .line 505
    iget p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionY:F

    invoke-direct {p0, p8, p6}, Lcom/color/support/widget/ColorSimpleLock;->getDelayFallHeight(IF)F

    move-result p6

    add-float/2addr p5, p6

    float-to-int p5, p5

    .line 506
    iget-object p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p6, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 507
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionY:F

    invoke-direct {p0, p8, p2}, Lcom/color/support/widget/ColorSimpleLock;->getDelayFallHeight(IF)F

    move-result p2

    const/high16 p3, 0x43160000    # 150.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    const/high16 p2, 0x430c0000    # 140.0f

    mul-float/2addr p3, p2

    float-to-int p2, p3

    .line 508
    iget-object p3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 509
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawFilledToOutLined(Landroid/graphics/Canvas;I)V
    .locals 12

    .line 403
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 405
    iget v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 409
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSimpleLock;->fto_lastDraw:Z

    if-eqz v3, :cond_0

    .line 410
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 411
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->judgeType()I

    move-result v10

    :goto_0
    if-ge v2, v10, :cond_3

    .line 418
    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v11, v0, v3

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v11

    move v8, v1

    .line 420
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    if-ge v2, p2, :cond_1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v11

    move v8, v1

    .line 423
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIII)V

    :cond_1
    if-ne v2, p2, :cond_2

    .line 426
    iget v9, p0, Lcom/color/support/widget/ColorSimpleLock;->mOpacity:I

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move v7, v11

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V

    .line 428
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    add-int/2addr v0, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float p2, p2

    .line 446
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionX:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p4, p4

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 448
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 449
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawOutLinedRectangleShake(Landroid/graphics/Canvas;IIIIFF)V
    .locals 0

    .line 492
    iget-object p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    iput-object p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float p3, p3

    .line 493
    iget p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionX:F

    add-float/2addr p3, p6

    float-to-int p3, p3

    int-to-float p4, p4

    add-float/2addr p4, p6

    float-to-int p4, p4

    .line 495
    iget-object p6, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p6, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 496
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawOutLinedToFilled(Landroid/graphics/Canvas;I)V
    .locals 13

    .line 453
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 455
    iget v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 461
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSimpleLock;->otf_lastDraw:Z

    if-eqz v3, :cond_0

    .line 462
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 463
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    return-void

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->judgeType()I

    move-result v12

    :goto_0
    if-ge v2, v12, :cond_4

    .line 470
    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v10, v0, v3

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v10

    move v8, v1

    .line 472
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    if-ge v2, p2, :cond_1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v10

    move v8, v1

    .line 475
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIII)V

    :cond_1
    if-ne v2, p2, :cond_2

    .line 479
    iget v9, p0, Lcom/color/support/widget/ColorSimpleLock;->mOpacity:I

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move v7, v10

    move v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V

    .line 482
    :cond_2
    iget-boolean v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move v7, v10

    move v8, v1

    move v10, v11

    move v11, v2

    .line 483
    invoke-direct/range {v3 .. v11}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangleShakeAndFall(Landroid/graphics/Canvas;IIIIFFI)V

    .line 486
    :cond_3
    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private drawPreviousState(Landroid/graphics/Canvas;I)V
    .locals 11

    .line 257
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 259
    iget v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 262
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->judgeType()I

    move-result v9

    :goto_0
    if-ge v2, v9, :cond_2

    .line 266
    iget v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    add-int v10, v0, v3

    if-gt v2, p2, :cond_0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v10

    move v8, v1

    .line 268
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIII)V

    :cond_0
    if-le v2, p2, :cond_1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v10

    move v8, v1

    .line 271
    invoke-direct/range {v3 .. v8}, Lcom/color/support/widget/ColorSimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    .line 273
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    add-int/2addr v0, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getDelayFallHeight(IF)F
    .locals 3

    .line 524
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 525
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->DELAY_FOUR:[F

    aget p0, p0, p1

    sub-float p0, p2, p0

    cmpl-float p1, p0, v1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    return p0

    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 528
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->DELAY_SIX:[F

    aget p0, p0, p1

    sub-float p0, p2, p0

    cmpl-float p1, p0, v1

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    return p0

    :cond_3
    return p2
.end method

.method private judgeType()I
    .locals 2

    .line 230
    iget p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    const/4 v0, 0x6

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private performFeedback()V
    .locals 2

    .line 965
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mIsLinearMotorVersion:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/16 v0, 0x130

    .line 966
    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->performHapticFeedback(II)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    .line 969
    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->performHapticFeedback(II)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public createFailedAnimator()Landroid/animation/Animator;
    .locals 4

    .line 886
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    .line 890
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 891
    new-instance v1, Lcom/color/support/widget/ColorSimpleLock$5;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSimpleLock$5;-><init>(Lcom/color/support/widget/ColorSimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x2

    .line 901
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 902
    new-instance v2, Lcom/color/support/widget/ColorSimpleLock$6;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorSimpleLock$6;-><init>(Lcom/color/support/widget/ColorSimpleLock;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 911
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 912
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x320

    .line 914
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 915
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 917
    new-instance v2, Lcom/color/support/widget/ColorSimpleLock$7;

    invoke-direct {v2, p0, v1}, Lcom/color/support/widget/ColorSimpleLock$7;-><init>(Lcom/color/support/widget/ColorSimpleLock;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 960
    iput-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        -0x3e200000    # -28.0f
        0x41600000    # 14.0f
        -0x3f000000    # -8.0f
        0x40800000    # 4.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x437a0000    # 250.0f
    .end array-data
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mTouchHelper:Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSimpleLock$SimpleLockTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 979
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAddAnimator()Landroid/animation/Animator;
    .locals 0

    .line 351
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteAnimator()Landroid/animation/Animator;
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public getFailedAnimator()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mIsVibrator:Z

    .line 343
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSimpleLock;->createFailedAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 205
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 222
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 219
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->drawFailedAnimation(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 216
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->drawAllCodeAnimation(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 213
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->drawClearAllAnimation(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 210
    :cond_3
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->drawOutLinedToFilled(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 207
    :cond_4
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->drawFilledToOutLined(Landroid/graphics/Canvas;I)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 537
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mContentWidth:I

    .line 538
    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mContentWidth:I

    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesWidth:I

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 539
    iget p2, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableHeight:I

    add-int/lit16 p2, p2, 0x96

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorSimpleLock;->setMeasuredDimension(II)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const/4 v0, -0x1

    .line 735
    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    const/4 v0, 0x0

    .line 736
    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 737
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 738
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSimpleLock;->invalidate()V

    return-void
.end method

.method public setAllCode(Z)V
    .locals 5

    .line 602
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 603
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 604
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    return-void

    :cond_1
    if-ne v0, v3, :cond_3

    .line 608
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 609
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_8

    .line 615
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 616
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 618
    :cond_4
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 619
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 621
    :cond_5
    iput v4, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 622
    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesNumber:I

    .line 623
    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    if-ne p1, v4, :cond_6

    .line 624
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_7

    .line 626
    iput v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    .line 628
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 629
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    return-void
.end method

.method public setClearAll(Z)V
    .locals 4

    .line 690
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 691
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_0

    iget-boolean v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v3, :cond_0

    if-gt v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    .line 692
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 696
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_2

    iget-boolean v3, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v3, :cond_2

    const/4 v3, 0x5

    if-gt v0, v3, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    .line 697
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return-void

    .line 701
    :cond_3
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 702
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 704
    :cond_4
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 705
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 710
    :cond_5
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    if-eqz p1, :cond_6

    .line 711
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 715
    :cond_6
    iput v1, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 716
    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesNumber:I

    .line 717
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    .line 718
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 719
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setDeleteLast(Z)V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDecription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    const/16 v1, 0x79

    .line 651
    iget v2, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDecription:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 653
    iget-object v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDecription:Ljava/lang/String;

    const/16 v2, 0x78

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSimpleLock;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 658
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 659
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_1

    iget-boolean v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_4

    .line 660
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 664
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_3

    iget-boolean v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    if-nez v1, :cond_3

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_4

    .line 665
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return-void

    .line 669
    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    .line 670
    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-lt p1, v2, :cond_7

    .line 671
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 672
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 674
    :cond_5
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 675
    iget-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 677
    :cond_6
    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 678
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 679
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 681
    :cond_7
    iput v2, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    :goto_0
    return-void
.end method

.method public setFailed(Z)V
    .locals 0

    .line 638
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawFailedAnimation:Z

    return-void
.end method

.method public setFingerprintRecognition(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSimpleLock;->isFingerprintMode:Z

    return-void
.end method

.method public setInternalTranslationX(F)V
    .locals 0

    .line 774
    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionX:F

    return-void
.end method

.method public setInternalTranslationY(F)V
    .locals 0

    .line 783
    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mTransitionY:F

    return-void
.end method

.method public setOneCode(I)V
    .locals 6

    .line 548
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 549
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-le v0, v2, :cond_1

    return-void

    :cond_0
    if-ne v0, v3, :cond_1

    .line 553
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-le v0, v1, :cond_1

    return-void

    .line 565
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    const/4 v5, -0x1

    if-ne v0, v4, :cond_2

    .line 566
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-ne v0, v2, :cond_3

    .line 567
    iput v5, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 570
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    if-ne v0, v1, :cond_3

    .line 571
    iput v5, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    .line 574
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 577
    :cond_4
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 578
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_5
    const/4 v0, 0x2

    .line 580
    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->animationMode:I

    .line 581
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    .line 582
    invoke-direct {p0}, Lcom/color/support/widget/ColorSimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 583
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 586
    iget-object v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    .line 587
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 588
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeNumber:I

    iget v1, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_6

    .line 589
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 591
    :cond_6
    iget-object p0, p0, Lcom/color/support/widget/ColorSimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_7
    :goto_1
    return-void
.end method

.method public setOpacity(I)V
    .locals 0

    .line 765
    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mOpacity:I

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 747
    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mScaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 756
    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mScaleY:F

    return-void
.end method

.method public setSimpleLockType(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 245
    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    .line 246
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x6

    .line 248
    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectangleNum:I

    .line 249
    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mDrawableWidth:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglePadding:I

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr v0, p1

    iput v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesWidth:I

    .line 251
    :cond_1
    :goto_0
    iget p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mContentWidth:I

    iget v0, p0, Lcom/color/support/widget/ColorSimpleLock;->mRectanglesWidth:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorSimpleLock;->mCodeImageStart:I

    .line 252
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSimpleLock;->invalidate()V

    return-void
.end method
