.class public Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "FaceEnrollPreviewFragment.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;


# instance fields
.field a:Lcom/android/settings/biometrics/face/c$a;

.field private b:Landroid/os/Handler;

.field private c:Landroid/hardware/camera2/CameraManager;

.field private d:Ljava/lang/String;

.field private e:Landroid/hardware/camera2/CameraDevice;

.field private f:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private g:Landroid/hardware/camera2/CameraCaptureSession;

.field private h:Landroid/hardware/camera2/CaptureRequest;

.field private i:Landroid/util/Size;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/android/settings/biometrics/face/b;

.field private l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

.field private final m:Lcom/android/settings/biometrics/face/c$a;

.field private final n:Landroid/view/TextureView$SurfaceTextureListener;

.field private final o:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->b:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->m:Lcom/android/settings/biometrics/face/c$a;

    .line 86
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->n:Landroid/view/TextureView$SurfaceTextureListener;

    .line 113
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->o:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->g:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->e:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->f:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->h:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/android/settings/biometrics/face/c$a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->a:Lcom/android/settings/biometrics/face/c$a;

    return-object p0
.end method

.method private a()V
    .locals 8

    const-string v0, "FaceEnrollPreviewFragment"

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->c:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 247
    iget-object v6, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->c:Landroid/hardware/camera2/CameraManager;

    .line 248
    invoke-virtual {v6, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 251
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 252
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_2

    .line 255
    iput-object v5, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->d:Ljava/lang/String;

    .line 258
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 260
    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    move v2, v3

    .line 3287
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 3288
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v5, 0x438

    if-ne v4, v5, :cond_0

    aget-object v4, v1, v2

    .line 3289
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    const/16 v5, 0x780

    if-ne v4, v5, :cond_0

    .line 3290
    aget-object v1, v1, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "Unable to find a good resolution"

    .line 3293
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    aget-object v1, v1, v3

    .line 260
    :goto_2
    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->i:Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unable to access camera"

    .line 264
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->b(II)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/android/settings/biometrics/face/FaceSquareTextureView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    return-object p0
.end method

.method private b(II)V
    .locals 4

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->a()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->c:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->o:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->c(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "FaceEnrollPreviewFragment"

    const-string v0, "Unable to open camera"

    .line 279
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic b(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->c(II)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/util/Size;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->i:Landroid/util/Size;

    return-object p0
.end method

.method private c(II)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    .line 311
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->i:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 312
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->i:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 315
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    .line 320
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setTranslationX(F)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setTranslationY(F)V

    .line 323
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703b4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    mul-float/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setScaleX(F)V

    .line 326
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setScaleY(F)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->e:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->f:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic f(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->h:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic g(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->g:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->k:Lcom/android/settings/biometrics/face/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/b;->a(II)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x612

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a06ea

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a0144

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->j:Landroid/widget/ImageView;

    .line 193
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->j:Landroid/widget/ImageView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 195
    new-instance p1, Lcom/android/settings/biometrics/face/b;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->m:Lcom/android/settings/biometrics/face/c$a;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/biometrics/face/b;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/c$a;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->k:Lcom/android/settings/biometrics/face/b;

    .line 196
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->k:Lcom/android/settings/biometrics/face/b;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->c:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 218
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 1330
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->g:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1332
    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->g:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->e:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1336
    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->e:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->b(II)V

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->l:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->n:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method
