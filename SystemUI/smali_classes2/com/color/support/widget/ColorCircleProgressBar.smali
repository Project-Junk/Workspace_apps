.class public Lcom/color/support/widget/ColorCircleProgressBar;
.super Landroid/view/View;
.source "ColorCircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorCircleProgressBar$ProgressPoint;,
        Lcom/color/support/widget/ColorCircleProgressBar$SavedState;,
        Lcom/color/support/widget/ColorCircleProgressBar$AccessibilityEventSender;
    }
.end annotation


# static fields
.field public static final ACCURACY:I = 0x2

.field private static final ALPHA_SHOW_DURATION:I = 0x168

.field private static final BASE_PROGRESS_POINT_ALPHA:F = 0.215f

.field public static final DEFAULT_TYPE:I = 0x0

.field public static final LARGE_TYPE:I = 0x2

.field public static final MEDIUM_TYPE:I = 0x1

.field private static final ONE_CIRCLE_DEGREE:J = 0x168L

.field public static final ORIGINAL_ANGLE:I = -0x5a

.field private static final PROGRESS_POINT_COUNT:I = 0x168

.field private static final TAG:Ljava/lang/String; = "ColorCircleProgressBar"

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xa


# instance fields
.field private arcRadius:F

.field private mAccessibilityEventSender:Lcom/color/support/widget/ColorCircleProgressBar$AccessibilityEventSender;

.field private mArcRect:Landroid/graphics/RectF;

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mCurrentStepProgress:I

.field private mHalfStrokeWidth:I

.field private mHalfWidth:I

.field private mHeight:I

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mMax:I

.field private mPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ColorCircleProgressBar$ProgressPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPointRadius:I

.field private mPreStepProgress:I

.field private mProgress:I

.field private mProgressBarBgCircleColor:I

.field private mProgressBarColor:I

.field private mProgressBarType:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mStepDegree:F

.field private mStrokeDefaultWidth:I

.field private mStrokeLargeWidth:I

.field private mStrokeMediumWidth:I

.field private mStrokeWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 119
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorCircleProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mWidth:I

    .line 83
    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHeight:I

    .line 84
    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressBarType:I

    .line 85
    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeWidth:I

    .line 86
    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mPointRadius:I

    const/16 v1, 0x64

    .line 87
    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    .line 88
    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    .line 89
    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCurrentStepProgress:I

    const/4 v1, -0x1

    .line 90
    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mPreStepProgress:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStepDegree:F

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mPointList:Ljava/util/ArrayList;

    .line 135
    invoke-static {p0, v0}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 136
    iput-object p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mContext:Landroid/content/Context;

    .line 138
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 140
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_loading_view_default_length:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 141
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarWidth:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mWidth:I

    .line 142
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarHeight:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHeight:I

    .line 144
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressBarType:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$color;->color_loading_view_default_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_loading_view_backgroud_circle__default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 148
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarBgCircleColor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressBarBgCircleColor:I

    .line 149
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgressBarColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressBarColor:I

    .line 151
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleProgress:I

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    .line 152
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorCircleProgressBar_colorCircleMax:I

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    .line 153
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeDefaultWidth:I

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_medium_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeMediumWidth:I

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_large_strokewidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeLargeWidth:I

    .line 158
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeDefaultWidth:I

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeWidth:I

    .line 160
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressBarType:I

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    .line 161
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeMediumWidth:I

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeWidth:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p3, p1, :cond_1

    .line 163
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeLargeWidth:I

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeWidth:I

    .line 166
    :cond_1
    :goto_0
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeWidth:I

    shr-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mPointRadius:I

    .line 167
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mWidth:I

    shr-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCenterX:F

    .line 168
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHeight:I

    shr-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCenterY:F

    .line 173
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->init()V

    return-void
.end method

.method private drawBackgroudCicle(Landroid/graphics/Canvas;)V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 254
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHalfWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->arcRadius:F

    iget-object p0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->setImportantForAccessibility(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x168

    if-ge v0, v1, :cond_1

    .line 189
    new-instance v1, Lcom/color/support/widget/ColorCircleProgressBar$ProgressPoint;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorCircleProgressBar$ProgressPoint;-><init>(Lcom/color/support/widget/ColorCircleProgressBar;)V

    .line 190
    iget-object v2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mPointList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->initBackgroundPaint()V

    .line 193
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->initProgressPaint()V

    .line 194
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->setProgress(I)V

    .line 195
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->setMax(I)V

    .line 196
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private initBackgroundPaint()V
    .locals 2

    .line 215
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    .line 216
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressBarBgCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object p0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initProgressPaint()V
    .locals 2

    .line 203
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 204
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 208
    iget-object p0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mAccessibilityEventSender:Lcom/color/support/widget/ColorCircleProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/color/support/widget/ColorCircleProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/ColorCircleProgressBar$AccessibilityEventSender;-><init>(Lcom/color/support/widget/ColorCircleProgressBar;Lcom/color/support/widget/ColorCircleProgressBar$1;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mAccessibilityEventSender:Lcom/color/support/widget/ColorCircleProgressBar$AccessibilityEventSender;

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mAccessibilityEventSender:Lcom/color/support/widget/ColorCircleProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/ColorCircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private verifyProgress()V
    .locals 3

    .line 224
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    if-lez v0, :cond_1

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    .line 226
    iget v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCurrentStepProgress:I

    .line 227
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCurrentStepProgress:I

    const/16 v1, 0x168

    rsub-int v0, v0, 0x168

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 228
    iput v1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCurrentStepProgress:I

    .line 230
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCurrentStepProgress:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mPreStepProgress:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCurrentStepProgress:I

    iput v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mPreStepProgress:I

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->invalidate()V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 0

    .line 331
    iget p0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 294
    iget p0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mAccessibilityEventSender:Lcom/color/support/widget/ColorCircleProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorCircleProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 377
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 240
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorCircleProgressBar;->drawBackgroudCicle(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 242
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHalfWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 243
    iget-object v4, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mCurrentStepProgress:I

    int-to-float v6, v0

    iget-object v8, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 366
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mWidth:I

    iget p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorCircleProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method onProgressRefresh()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 342
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->scheduleAccessibilityEventSender()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 400
    check-cast p1, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;

    .line 401
    invoke-virtual {p1}, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 402
    iget p1, p1, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorCircleProgressBar;->setProgress(I)V

    .line 403
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 383
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 384
    new-instance v1, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 385
    iget p0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    iput p0, v1, Lcom/color/support/widget/ColorCircleProgressBar$SavedState;->mProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 391
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 392
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mStrokeWidth:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHalfStrokeWidth:I

    .line 393
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHalfWidth:I

    .line 394
    iget p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHalfWidth:I

    iget p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mHalfStrokeWidth:I

    sub-int p2, p1, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->arcRadius:F

    .line 395
    new-instance p2, Landroid/graphics/RectF;

    int-to-float p3, p1

    iget p4, p0, Lcom/color/support/widget/ColorCircleProgressBar;->arcRadius:F

    sub-float/2addr p3, p4

    int-to-float v0, p1

    sub-float/2addr v0, p4

    int-to-float v1, p1

    add-float/2addr v1, p4

    int-to-float p1, p1

    add-float/2addr p1, p4

    invoke-direct {p2, p3, v0, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 310
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 311
    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    .line 312
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 313
    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->verifyProgress()V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorCircleProgressBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 271
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 274
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 275
    iput p1, p0, Lcom/color/support/widget/ColorCircleProgressBar;->mProgress:I

    .line 280
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->verifyProgress()V

    .line 281
    invoke-virtual {p0}, Lcom/color/support/widget/ColorCircleProgressBar;->onProgressRefresh()V

    return-void
.end method
