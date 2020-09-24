.class public Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;
.super Landroid/view/View;
.source "AnimatedSvgView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;,
        Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$OnStateChangeListener;,
        Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$UIHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:F = 1.0f

.field private static final DEFAULT_VALUE_INT:I = 0x1

.field private static final DELAY_TIME:I = 0x32

.field private static final FP_SUCCESS_VIBRATE_PATTERN_ENHANCED:J = 0x32L

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MSG_PLAY_VIBRATOR:I = 0x2

.field private static final MSG_START_ANIMATION:I = 0x3

.field public static final STATE_FILL_STARTED:I = 0x2

.field public static final STATE_FINISHED:I = 0x3

.field public static final STATE_NOT_STARTED:I = 0x0

.field public static final STATE_TRACE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FingerAnimatedSvgView"

.field private static final TOTAL_PROGRESS:I = 0x64


# instance fields
.field private mCurrentIndex:I

.field private mEnrollAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

.field private mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

.field private mGlyphStrings:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsDrawing:Z

.field private mMessageStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStateChangeListener:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$OnStateChangeListener;

.field private mScale:F

.field private mShader:Landroid/graphics/Shader;

.field private mStartTime:J

.field private mState:I

.field private mTargetIndex:I

.field private mTraceColor:I

.field private mTraceTime:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mViewportHeight:F

.field private mViewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 116
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mState:I

    const/16 v1, 0x1f4

    .line 61
    iput v1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTraceTime:I

    .line 62
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    .line 63
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mScale:F

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mState:I

    const/16 v1, 0x1f4

    .line 61
    iput v1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTraceTime:I

    .line 62
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    .line 63
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mScale:F

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mState:I

    const/16 v0, 0x1f4

    .line 61
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTraceTime:I

    .line 62
    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    .line 63
    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 66
    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mScale:F

    .line 74
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p3, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;Landroid/os/Message;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private changeState(I)V
    .locals 1

    .line 357
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 361
    :cond_0
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mState:I

    .line 362
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mOnStateChangeListener:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$OnStateChangeListener;

    if-eqz v0, :cond_1

    .line 363
    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$OnStateChangeListener;->onStateChange(I)V

    :cond_1
    return-void
.end method

.method private getDashPathEffect([F)Landroid/graphics/DashPathEffect;
    .locals 2

    .line 292
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object v0
.end method

.method public static getTraceColor(Landroid/content/Context;)I
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x7f060004

    .line 388
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerAnimatedSvgView"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    .line 97
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->start()V

    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->performFeedbackVibrate()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 131
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$UIHandler;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$UIHandler;-><init>(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 133
    sget-object v0, Lcom/android/settings/g$a;->OppoFingerAnimatedSvgView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    const/high16 v1, 0x43d20000    # 420.0f

    .line 134
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mViewportWidth:F

    const/4 v0, 0x3

    const v1, 0x43fa8000    # 501.0f

    .line 135
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mViewportHeight:F

    .line 136
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const-string p2, "vibrator"

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mVibrator:Landroid/os/Vibrator;

    .line 139
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->getTraceColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTraceColor:I

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "init : mViewportWidth = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mViewportWidth:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " mViewportHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mViewportHeight:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerAnimatedSvgView"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mIsDrawing:Z

    return-void
.end method

.method private performFeedbackVibrate()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x32

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method private rebuildGlyphData()V
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphStrings:[Ljava/lang/String;

    array-length v0, v0

    .line 164
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rebuildGlyphData : mGlyphStrings.length = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerAnimatedSvgView"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_2

    .line 167
    new-array v1, v0, [Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    .line 168
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 169
    iget v3, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mScale:F

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const v3, 0x40066666    # 2.1f

    .line 171
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    .line 170
    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 173
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mShader:Landroid/graphics/Shader;

    if-nez v4, :cond_0

    const v4, 0x7f0602b6

    const v6, 0x7f0602b5

    .line 177
    invoke-static {p0, v4, v6}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->getShader(Landroid/view/View;II)Landroid/graphics/Shader;

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mShader:Landroid/graphics/Shader;

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 182
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    new-instance v7, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;-><init>(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$1;)V

    aput-object v7, v6, v4

    .line 183
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v6, v6, v4

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v6, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    .line 185
    :try_start_0
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphStrings:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    .line 186
    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "Couldn\'t parse path"

    .line 188
    invoke-static {v2, v7, v6}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :goto_1
    new-instance v6, Landroid/graphics/PathMeasure;

    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    invoke-direct {v6, v7, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 191
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    .line 192
    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v8, v7, v4

    aget-object v7, v7, v4

    iget v7, v7, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mLength:F

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v8, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mLength:F

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "GlyphData length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mLength:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 195
    iget v7, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTraceColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 199
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mShader:Landroid/graphics/Shader;

    if-eqz v7, :cond_1

    .line 201
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 203
    :cond_1
    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v7, v7, v4

    iput-object v6, v7, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private setDefaultValue(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;)V
    .locals 4

    const/4 v0, 0x1

    .line 283
    iput v0, p1, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPhase:I

    .line 284
    sget-object v1, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p1, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mLength:F

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    .line 286
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    iget v1, p1, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mLength:F

    aput v1, v2, v0

    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->getDashPathEffect([F)Landroid/graphics/DashPathEffect;

    move-result-object v0

    .line 288
    iget-object p1, p1, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private start()V
    .locals 2

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mStartTime:J

    const/4 v0, 0x1

    .line 335
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->changeState(I)V

    .line 336
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->postInvalidateOnAnimation()V

    return-void
.end method

.method private updateMessage(I)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 321
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 322
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mIsDrawing:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    .line 328
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public enrollCompleted()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->updateProgress(II)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 213
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mState:I

    const-string v1, ", mTargetIndex = "

    const-string v2, "FingerAnimatedSvgView"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 219
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mStartTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_1

    const-wide/16 v5, 0xa

    :cond_1
    long-to-float v0, v5

    .line 224
    iget v5, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTraceTime:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 225
    iput-boolean v3, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mIsDrawing:Z

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDraw mCurrentIndex = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 229
    :goto_0
    iget v5, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    if-ge v1, v5, :cond_4

    .line 230
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v5, v5, v1

    .line 232
    iget-object v6, v5, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v6

    if-nez v6, :cond_2

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", PathEffect is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setDefaultValue(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;)V

    goto :goto_1

    .line 235
    :cond_2
    iget v6, v5, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPhase:I

    if-gtz v6, :cond_3

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", phase less than 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->setDefaultValue(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;)V

    .line 240
    :cond_3
    :goto_1
    iget-object v6, v5, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    iget-object v5, v5, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_4
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mState:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 244
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->changeState(I)V

    .line 247
    :cond_5
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    :goto_2
    iget v5, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v1, v5, :cond_7

    .line 248
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v5, v5, v1

    float-to-int v7, v0

    iput v7, v5, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPhase:I

    cmpl-float v5, v0, v6

    if-lez v5, :cond_6

    goto :goto_3

    :cond_6
    move v6, v0

    .line 253
    :goto_3
    sget-object v5, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mLength:F

    mul-float/2addr v5, v6

    .line 256
    new-array v6, v2, [F

    aput v5, v6, v4

    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mLength:F

    aput v5, v6, v3

    invoke-direct {p0, v6}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->getDashPathEffect([F)Landroid/graphics/DashPathEffect;

    move-result-object v5

    .line 257
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 258
    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_8

    cmpg-float p1, v0, v6

    if-gez p1, :cond_8

    .line 261
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->postInvalidateOnAnimation()V

    return-void

    .line 263
    :cond_8
    iput-boolean v4, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mIsDrawing:Z

    .line 264
    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    const/4 p1, 0x3

    .line 265
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->changeState(I)V

    .line 266
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 268
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    .line 272
    :cond_9
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mEnrollAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    if-eqz p1, :cond_a

    .line 273
    invoke-interface {p1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;->onAnimationEnd()V

    .line 274
    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    array-length v0, v0

    if-ne p1, v0, :cond_a

    .line 276
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mEnrollAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    invoke-interface {p1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;->onAnimationCompleted()V

    :cond_a
    return-void

    .line 214
    :cond_b
    :goto_4
    iput-boolean v4, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mIsDrawing:Z

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDraw mState "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mGlyphData is null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move v3, v4

    :goto_5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 148
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->rebuildGlyphData()V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mMessageStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const-wide/16 v0, 0x0

    .line 342
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mStartTime:J

    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mCurrentIndex:I

    .line 344
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    .line 345
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->changeState(I)V

    .line 347
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setEnrollAnimationListener(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mEnrollAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    return-void
.end method

.method public setGlyphStrings([Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphStrings:[Ljava/lang/String;

    return-void
.end method

.method public setOnStateChangeListener(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$OnStateChangeListener;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mOnStateChangeListener:Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$OnStateChangeListener;

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 158
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mScale:F

    :cond_0
    return-void
.end method

.method public setToFinishedFrame()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 351
    iput-wide v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mStartTime:J

    const/4 v0, 0x3

    .line 352
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->changeState(I)V

    .line 353
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public updateProgress(II)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    if-eqz v0, :cond_1

    if-lez p2, :cond_1

    .line 305
    array-length v0, v0

    sub-int p1, p2, p1

    mul-int/2addr v0, p1

    div-int/2addr v0, p2

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updateProgress target = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mTargetIndex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerAnimatedSvgView"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mTargetIndex:I

    if-le v0, p1, :cond_0

    .line 308
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->updateMessage(I)V

    return-void

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    const-wide/16 v1, 0x32

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 311
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mEnrollAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    invoke-interface {p1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;->onAnimationEnd()V

    .line 312
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$GlyphData;

    array-length p1, p1

    if-ne v0, p1, :cond_1

    .line 313
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->mEnrollAnimationListener:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;

    invoke-interface {p1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationListener;->onAnimationCompleted()V

    :cond_1
    return-void
.end method
