.class public Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;
.super Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;
.source "ColorCameraDoublePinholeAnimView.java"


# static fields
.field private static final CAMERA_DOUBLE_PINHOLE_FADEIN_ANIM_DELAY:I = 0x39a

.field private static final CAMERA_DOUBLE_PINHOLE_FADEIN_ANIM_DURATION:I = 0x132

.field private static final CAMERA_DOUBLE_PINHOLE_FADEOUT_ANIM_DURATION:I = 0x237

.field private static final CAMERA_DOUBLE_PINHOLE_MOTION_ANIM_DURATION:I = 0x9eb

.field private static final INTERPOLATOR_PARAM_1:F = 0.17f

.field private static final INTERPOLATOR_PARAM_2:F = 0.33f

.field private static final INTERPOLATOR_PARAM_3:F = 0.67f

.field private static final PATH_SIZE:I = 0x6

.field private static final SCREEN_ROTATION_IN_ROTATION_270:F = 90.0f

.field private static final SCREEN_ROTATION_IN_ROTATION_90:F = 270.0f

.field private static final TAG:Ljava/lang/String; = "ColorCameraDoublePinholeAnimView"


# instance fields
.field private mAlpha:I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAntiMovingBitmap:Landroid/graphics/Bitmap;

.field private mAntiMovingPosition:[F

.field private mAntiPathMeasure:Landroid/graphics/PathMeasure;

.field private mBottom:I

.field private mHeight:I

.field private mLeft:I

.field private mMotionAntiPath:Landroid/graphics/Path;

.field private mMotionPath:Landroid/graphics/Path;

.field private mMotionRectF:Landroid/graphics/RectF;

.field private mMotionYRadius:I

.field private mMovingBitmap:Landroid/graphics/Bitmap;

.field private mMovingPosition:[F

.field private mPDXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private mPinholeActualPath:Landroid/graphics/Path;

.field private mPinholeActualRectF:Landroid/graphics/RectF;

.field private mPinholeYRadius:I

.field private mRight:I

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x3c

    .line 57
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLeft:I

    const/16 p1, 0x24

    .line 58
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mTop:I

    const/16 p1, 0x108

    .line 59
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mRight:I

    const/16 p1, 0x6b

    .line 60
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mBottom:I

    const/4 p1, 0x2

    .line 61
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMovingPosition:[F

    .line 62
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiMovingPosition:[F

    return-void
.end method


# virtual methods
.method public addToWindow()V
    .locals 4

    const-string v0, "ColorCameraDoublePinholeAnimView"

    const-string v1, "addToWindow"

    .line 197
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 199
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLeft:I

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mRight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 200
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mTop:I

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mBottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 201
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 202
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 203
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 204
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7df

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 205
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 206
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x718

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 213
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ColorCameraDoublePinholeAnimView"

    const-string v0, "remove fails"

    .line 258
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 12

    const-string p1, ","

    const-string v0, "ColorCameraDoublePinholeAnimView"

    const-string v1, "initView"

    .line 97
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v2, v1}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->getPinholeFrontCameraPositon()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    aget-object v4, v3, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 106
    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 108
    aget-object v3, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLeft:I

    .line 109
    aget-object v3, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mTop:I

    .line 110
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mRight:I

    .line 111
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mBottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "get positon fails"

    .line 113
    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080958

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMovingBitmap:Landroid/graphics/Bitmap;

    .line 117
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiMovingBitmap:Landroid/graphics/Bitmap;

    .line 118
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMovingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    .line 119
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMovingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    .line 120
    iget p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mRight:I

    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mLeft:I

    sub-int/2addr p1, v0

    .line 121
    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mBottom:I

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mTop:I

    sub-int/2addr v0, v3

    .line 124
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeActualPath:Landroid/graphics/Path;

    .line 125
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    sub-int v5, v4, p1

    const/4 v6, 0x2

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    sub-int v8, v7, v0

    div-int/2addr v8, v6

    int-to-float v8, v8

    add-int/2addr v4, p1

    div-int/2addr v4, v6

    int-to-float v4, v4

    add-int/2addr v7, v0

    div-int/2addr v7, v6

    int-to-float v7, v7

    invoke-direct {v3, v5, v8, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeActualRectF:Landroid/graphics/RectF;

    .line 129
    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mBottom:I

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mTop:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v6

    iput v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeYRadius:I

    .line 130
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeActualPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeActualRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeYRadius:I

    int-to-float v7, v5

    int-to-float v5, v5

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v7, v5, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 133
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionPath:Landroid/graphics/Path;

    .line 134
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    sub-int v5, v4, p1

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x6

    int-to-float v5, v5

    iget v7, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    sub-int v8, v7, v0

    div-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x6

    int-to-float v8, v8

    add-int/2addr v4, p1

    div-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x6

    int-to-float p1, v4

    add-int/2addr v7, v0

    div-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x6

    int-to-float v0, v7

    invoke-direct {v3, v5, v8, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionRectF:Landroid/graphics/RectF;

    .line 138
    iget p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mBottom:I

    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mTop:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xc

    div-int/2addr p1, v6

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionYRadius:I

    .line 139
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionYRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 140
    new-instance p1, Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionPath:Landroid/graphics/Path;

    invoke-direct {p1, v0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 143
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionAntiPath:Landroid/graphics/Path;

    .line 144
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionAntiPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionYRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 145
    new-instance p1, Landroid/graphics/PathMeasure;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionAntiPath:Landroid/graphics/Path;

    invoke-direct {p1, v0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiPathMeasure:Landroid/graphics/PathMeasure;

    .line 148
    new-array p1, v6, [F

    const/4 v0, 0x0

    aput v0, p1, v1

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const v4, 0x3fe3d70a    # 1.78f

    mul-float/2addr v3, v4

    aput v3, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v3, 0x9eb

    .line 149
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e2e147b    # 0.17f

    invoke-direct {v5, v8, v8, v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    new-instance v5, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraDoublePinholeAnimView$Vm6kDfYYcbZHADrxn7vOgk-V-Lc;

    invoke-direct {v5, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraDoublePinholeAnimView$Vm6kDfYYcbZHADrxn7vOgk-V-Lc;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    new-array v5, v6, [F

    aput v0, v5, v1

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    aput v9, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 164
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v8, v8, v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    new-instance v3, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraDoublePinholeAnimView$TrtMH21BZE04AyeuL_FAgJybTH0;

    invoke-direct {v3, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraDoublePinholeAnimView$TrtMH21BZE04AyeuL_FAgJybTH0;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v8, 0x132

    .line 175
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v8, 0x3f2b851f    # 0.67f

    const v9, 0x3ea8f5c3    # 0.33f

    invoke-direct {v4, v9, v0, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    new-instance v4, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraDoublePinholeAnimView$BtzVZzatxURzrTnQUHJqkhjpLIo;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraDoublePinholeAnimView$BtzVZzatxURzrTnQUHJqkhjpLIo;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 182
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v10, 0x39a

    .line 183
    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v10, 0x237

    .line 184
    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v9, v0, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    new-instance v0, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraDoublePinholeAnimView$PzUsQuuZf0ECBXyGy6w-9HLSV00;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/-$$Lambda$ColorCameraDoublePinholeAnimView$PzUsQuuZf0ECBXyGy6w-9HLSV00;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 191
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object p1, v7, v1

    aput-object v5, v7, v2

    aput-object v3, v7, v6

    const/4 p1, 0x3

    aput-object v4, v7, p1

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 192
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->setBackgroundColor(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public synthetic lambda$initView$0$ColorCameraDoublePinholeAnimView(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    sub-float/2addr p1, v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMovingPosition:[F

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 157
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMovingPosition:[F

    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aget v2, p1, v1

    sub-float/2addr v0, v2

    aput v0, p1, v1

    .line 158
    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v2, p1, v1

    sub-float/2addr v0, v2

    aput v0, p1, v1

    .line 159
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->postInvalidate()V

    return-void
.end method

.method public synthetic lambda$initView$1$ColorCameraDoublePinholeAnimView(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 167
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiMovingPosition:[F

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 169
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiMovingPosition:[F

    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aget v2, p1, v1

    sub-float/2addr v0, v2

    aput v0, p1, v1

    .line 170
    iget p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    int-to-float p0, p0

    const/4 v0, 0x1

    aget v1, p1, v0

    sub-float/2addr p0, v1

    aput p0, p1, v0

    return-void
.end method

.method public synthetic lambda$initView$2$ColorCameraDoublePinholeAnimView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 178
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAlpha:I

    return-void
.end method

.method public synthetic lambda$initView$3$ColorCameraDoublePinholeAnimView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAlpha:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 218
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->onAttachedToWindow()V

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v1, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView$1;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 265
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->updateScreenRotation()V

    .line 266
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 267
    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mCurScreenRotation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x43870000    # 270.0f

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 281
    iget-object v5, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionYRadius:I

    int-to-float v6, v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeActualRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeYRadius:I

    int-to-float v9, v0

    int-to-float v10, v0

    iget-object v11, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 283
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMovingBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMovingPosition:[F

    aget v4, v1, v2

    iget v5, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aget v1, v1, v3

    iget v5, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 285
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 286
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 287
    iget-object v6, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mMotionYRadius:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeActualRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPinholeYRadius:I

    int-to-float v10, v0

    int-to-float v11, v0

    iget-object v12, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 289
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPDXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 290
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiMovingBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mAntiMovingPosition:[F

    aget v2, v4, v2

    iget v5, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    aget v3, v4, v3

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 291
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
