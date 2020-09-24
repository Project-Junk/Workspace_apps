.class public Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;
.super Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;
.source "ColorCameraMotorUpAnimView.java"


# static fields
.field private static final ANIM_DURATION:I = 0x230

.field private static final INIT_TRANSLATION_Y:I = 0x640

.field private static final OFFSET:I = 0x5

.field private static final PATH_INTERPOLATOR_PARAM_3:F = 0.07f

.field private static final PATH_INTERPOLATOR_PARAM_4:F = 0.89f

.field private static final SCREEN_ROTATION_IN_ROTATION_270:F = 90.0f

.field private static final SCREEN_ROTATION_IN_ROTATION_90:F = 270.0f

.field private static final TAG:Ljava/lang/String; = "ColorCameraMotorUpAnimView"

.field private static final TRANSLATION_Y:I = 0xcbc


# instance fields
.field private mMaskCenter:Landroid/graphics/Bitmap;

.field private mMaskLeft:Landroid/graphics/Bitmap;

.field private mMaskRight:Landroid/graphics/Bitmap;

.field private mMaskSideHeight:I

.field private mPDXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mPaint:Landroid/graphics/Paint;

.field private mScreenRotation:I

.field private mTranslationY:F

.field private mViewLeft:Landroid/graphics/Bitmap;

.field private mViewRight:Landroid/graphics/Bitmap;

.field private mViewRightX:I

.field private mViewSideHeight:I

.field private mViewSideWidth:I

.field private mViewTop:Landroid/graphics/Bitmap;

.field private mViewTopHeight:I

.field private mViewTopWidth:I

.field private mViewTopX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 79
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    const/high16 p1, 0x44c80000    # 1600.0f

    .line 80
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    return-void
.end method


# virtual methods
.method public addToWindow()V
    .locals 3

    .line 110
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x2

    .line 111
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x7df

    .line 112
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "ColorCameraMotorUpAnimView"

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 118
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 119
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 0

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080bba

    .line 86
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewLeft:Landroid/graphics/Bitmap;

    const v0, 0x7f080bbb

    .line 87
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRight:Landroid/graphics/Bitmap;

    const v0, 0x7f080bbc

    .line 88
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTop:Landroid/graphics/Bitmap;

    const v0, 0x7f080bbe

    .line 89
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskLeft:Landroid/graphics/Bitmap;

    const v0, 0x7f080bbf

    .line 90
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskRight:Landroid/graphics/Bitmap;

    const v0, 0x7f080bbd

    .line 91
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskCenter:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTop:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopX:I

    .line 95
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRightX:I

    .line 96
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewLeft:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewSideWidth:I

    .line 97
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewLeft:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewSideHeight:I

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTop:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopWidth:I

    .line 99
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTop:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopHeight:I

    .line 100
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskLeft:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskSideHeight:I

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$0$ColorCameraMotorUpAnimView(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x454bc000    # 3260.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44c80000    # 1600.0f

    sub-float/2addr v1, v0

    .line 140
    iput v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    .line 141
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->invalidate()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string p0, "ColorCameraMotorUpAnimView"

    const-string p1, "remove window"

    .line 145
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 129
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->onAttachedToWindow()V

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mScreenRotation:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow Orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mScreenRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorCameraMotorUpAnimView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    .line 134
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 135
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3d8f5c29    # 0.07f

    const v4, 0x3f63d70a    # 0.89f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x230

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    new-instance v1, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraMotorUpAnimView$t3n73IRLeiVx_FcFq1ldjxn1ebE;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraMotorUpAnimView$t3n73IRLeiVx_FcFq1ldjxn1ebE;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 153
    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mScreenRotation:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result v1

    .line 162
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenHeight()I

    move-result v0

    int-to-float v4, v1

    div-float/2addr v4, v2

    float-to-int v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    int-to-float v2, v2

    .line 164
    invoke-virtual {p1, v4, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 165
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v1, 0x43870000    # 270.0f

    int-to-float v0, v0

    .line 156
    invoke-virtual {p1, v1, v0, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 173
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewSideHeight:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    return-void

    .line 176
    :cond_2
    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopHeight:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v2, :cond_3

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    float-to-int v2, v0

    add-int/lit8 v2, v2, 0x5

    int-to-float v1, v1

    .line 180
    iget v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskSideHeight:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 182
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewSideWidth:I

    invoke-direct {v1, v4, v2, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 186
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewLeft:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskLeft:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 191
    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRightX:I

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRight:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRightX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskRight:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRightX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 202
    :cond_3
    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 203
    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewSideHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    iget v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskSideHeight:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 205
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewSideWidth:I

    invoke-direct {v2, v4, v0, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 206
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 209
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewLeft:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 210
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 211
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskLeft:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 214
    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRightX:I

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 215
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 217
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 218
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRight:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRightX:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 219
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 220
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskRight:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewRightX:I

    int-to-float v2, v2

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    iget-object v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 224
    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskSideHeight:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 226
    new-instance v2, Landroid/graphics/Rect;

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopX:I

    iget v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopWidth:I

    add-int/2addr v6, v4

    invoke-direct {v2, v4, v0, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 227
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 230
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTop:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 232
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mMaskCenter:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mViewTopX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mTranslationY:F

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
