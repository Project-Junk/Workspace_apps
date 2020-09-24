.class public Lcom/coloros/anim/manager/ImageAssetManager;
.super Ljava/lang/Object;
.source "ImageAssetManager.java"


# static fields
.field private static final bitmapHashLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private delegate:Lcom/coloros/anim/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/EffectiveImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private imagesFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coloros/anim/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/coloros/anim/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/ImageAssetDelegate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/EffectiveImageAsset;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_0

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 40
    :cond_0
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_1

    const-string p1, "EffectiveAnimation"

    const-string p2, "EffectiveAnimationDrawable must be inside of a view for images to work."

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/coloros/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    return-void

    .line 47
    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 48
    iput-object p4, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 49
    invoke-virtual {p0, p3}, Lcom/coloros/anim/manager/ImageAssetManager;->setDelegate(Lcom/coloros/anim/ImageAssetDelegate;)V

    return-void
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    sget-object v0, Lcom/coloros/anim/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object p0, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/EffectiveImageAsset;

    invoke-virtual {p0, p2}, Lcom/coloros/anim/EffectiveImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/EffectiveImageAsset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/coloros/anim/manager/ImageAssetManager;->delegate:Lcom/coloros/anim/ImageAssetDelegate;

    if-eqz v2, :cond_3

    .line 84
    invoke-interface {v2, v0}, Lcom/coloros/anim/ImageAssetDelegate;->fetchBitmap(Lcom/coloros/anim/EffectiveImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    return-object v0

    .line 91
    :cond_3
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 93
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v4, 0xa0

    .line 94
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v4, "data:"

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "EffectiveAnimation"

    if-eqz v4, :cond_4

    const-string v4, "base64,"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    const/16 v4, 0x2c

    .line 100
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    array-length v1, v0

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "data URL did not have correct base64 format."

    .line 102
    invoke-static {v5, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 111
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 115
    iget-object v3, p0, Lcom/coloros/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/coloros/anim/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 112
    :cond_5
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must set an images folder before loading an image. Set it with EffectiveAnimationComposition#setImagesFolder or EffectiveAnimationDrawable#setImagesFolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "Unable to open asset."

    .line 117
    invoke-static {v5, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/coloros/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDelegate(Lcom/coloros/anim/ImageAssetDelegate;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/ImageAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    iput-object p1, p0, Lcom/coloros/anim/manager/ImageAssetManager;->delegate:Lcom/coloros/anim/ImageAssetDelegate;

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p2, :cond_0

    .line 62
    iget-object p0, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/EffectiveImageAsset;

    .line 63
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p0, p2}, Lcom/coloros/anim/EffectiveImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/EffectiveImageAsset;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object v0
.end method
