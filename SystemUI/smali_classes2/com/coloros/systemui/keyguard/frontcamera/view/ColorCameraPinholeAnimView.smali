.class public Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;
.super Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;
.source "ColorCameraPinholeAnimView.java"


# static fields
.field private static final CAMERA_PINHOLE_ANIM_DURATION:I = 0x384

.field private static final CAMERA_PINHOLE_BLUE_ANIM_ROTATION:F = 360.0f

.field private static final CAMERA_PINHOLE_COLOR_ANIM_DURATION:I = 0x15e

.field private static final CAMERA_PINHOLE_COLOR_ANIM_START_DELAY:I = 0x14a

.field private static final CAMERA_PINHOLE_CYAN_ANIM_ROTATION:F = 540.0f

.field private static final CAMERA_PINHOLE_FADEIN_ANIM_DURATION:I = 0x1e3

.field private static final CAMERA_PINHOLE_FADEOUT_ANIM_DURATION:I = 0x10b

.field private static final CAMERA_PINHOLE_FADEOUT_ANIM_START_DELAY:I = 0x279

.field private static final DEFAULT_PINHOLE_SIZE:F = 63.0f

.field private static final INTERPOLATOR_PARAM_1:F = 0.3f

.field private static final INTERPOLATOR_PARAM_2:F = 0.27f

.field private static final INTERPOLATOR_PARAM_3:F = 0.34f

.field private static final INTERPOLATOR_PARAM_4:F = 0.17f

.field private static final INTERPOLATOR_PARAM_5:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "ColorCameraPinholeAnimView"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBlueColorAnimator:Landroid/animation/ObjectAnimator;

.field private mBlueRotationAnimator:Landroid/animation/ObjectAnimator;

.field private mBlueView:Landroid/widget/ImageView;

.field private mCyanColorAnimator:Landroid/animation/ObjectAnimator;

.field private mCyanRotationAnimator:Landroid/animation/ObjectAnimator;

.field private mCyanView:Landroid/widget/ImageView;

.field private mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mHeight:I

.field private mLeft:I

.field private mPinholeSize:I

.field private mPinholeStableSize:F

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x43

    .line 65
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLeft:I

    const/16 p1, 0x25

    .line 66
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mTop:I

    const/16 p1, 0x3f

    .line 67
    iput p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 175
    iget p2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeStableSize:F

    const/high16 v0, 0x427c0000    # 63.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    .line 176
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getDisplayChangeProportion()F

    move-result p2

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_0

    move p2, v3

    .line 180
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeStableSize:F

    div-float/2addr p0, v0

    cmpg-float v0, p0, v1

    if-gtz v0, :cond_1

    move p0, v3

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBitmapSize, displayChangeProportion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",pinholeSizeProportion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorCameraPinholeAnimView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p0

    mul-float/2addr v1, p2

    float-to-int p0, v1

    const/4 p2, 0x1

    .line 190
    invoke-static {p1, v0, p0, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public addToWindow()V
    .locals 5

    const-string v0, "ColorCameraPinholeAnimView"

    const-string v1, "addToWindow"

    .line 199
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 201
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLeft:I

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mWidth:I

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 202
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mTop:I

    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mHeight:I

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 203
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 204
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 205
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 206
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7df

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 207
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 208
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x718

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 214
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->setAlpha(F)V

    .line 281
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 282
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ColorCameraPinholeAnimView"

    const-string v0, "remove fails"

    .line 286
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 14

    const-string v0, "ColorCameraPinholeAnimView"

    const-string v1, "initView"

    .line 96
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->getPinholeFrontCameraPositon()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    aget-object v4, v3, v2

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 102
    aget-object v3, v3, v1

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 104
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLeft:I

    .line 105
    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mTop:I

    .line 106
    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLeft:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeSize:I

    .line 107
    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeSize:I

    int-to-float v3, v3

    iput v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeStableSize:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "get positon fails"

    .line 109
    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->getDisplayChangeProportion()F

    move-result v0

    .line 114
    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLeft:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mLeft:I

    .line 115
    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mTop:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mTop:I

    .line 116
    iget v3, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mPinholeSize:I

    const v0, 0x7f080c54

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const v3, 0x7f080c53

    .line 120
    invoke-direct {p0, p1, v3}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mWidth:I

    .line 123
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mHeight:I

    .line 125
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanView:Landroid/widget/ImageView;

    .line 126
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanView:Landroid/widget/ImageView;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 129
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueView:Landroid/widget/ImageView;

    .line 130
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p1, 0x2

    .line 133
    new-array v0, p1, [F

    fill-array-data v0, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e8a3d71    # 0.27f

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v6, v5, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1e3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 137
    new-array v0, p1, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3eae147b    # 0.34f

    invoke-direct {v3, v7, v6, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x279

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 140
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x10b

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanView:Landroid/widget/ImageView;

    new-array v3, p1, [F

    fill-array-data v3, :array_2

    const-string v4, "rotation"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanRotationAnimator:Landroid/animation/ObjectAnimator;

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanRotationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e2e147b    # 0.17f

    invoke-direct {v3, v5, v5, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanRotationAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x384

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanView:Landroid/widget/ImageView;

    new-array v3, p1, [I

    fill-array-data v3, :array_3

    const-string v9, "ColorFilter"

    invoke-static {v0, v9, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanColorAnimator:Landroid/animation/ObjectAnimator;

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanColorAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanColorAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x14a

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanColorAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v12, 0x15e

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueView:Landroid/widget/ImageView;

    new-array v3, p1, [F

    fill-array-data v3, :array_4

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueRotationAnimator:Landroid/animation/ObjectAnimator;

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueRotationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v5, v5, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueRotationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueView:Landroid/widget/ImageView;

    new-array v3, p1, [I

    fill-array-data v3, :array_5

    invoke-static {v0, v9, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueColorAnimator:Landroid/animation/ObjectAnimator;

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueColorAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueColorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueColorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x6

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanRotationAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v3, p1

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanColorAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v3, p1

    const/4 p1, 0x4

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueRotationAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v3, p1

    const/4 p1, 0x5

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueColorAnimator:Landroid/animation/ObjectAnimator;

    aput-object v1, v3, p1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 166
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 168
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mCyanView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mBlueView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x44070000    # 540.0f
    .end array-data

    :array_3
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_5
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 220
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->onAttachedToWindow()V

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    new-instance v1, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView$1;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 256
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 257
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateCircleProgressAnimation(Z)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->onDetachedFromWindow()V

    .line 268
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 269
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->updateCircleProgressAnimation(Z)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 293
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;->updateScreenRotation()V

    return-void
.end method
