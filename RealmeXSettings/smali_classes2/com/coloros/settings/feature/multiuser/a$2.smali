.class final Lcom/coloros/settings/feature/multiuser/a$2;
.super Landroid/os/AsyncTask;
.source "ColorEditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/coloros/settings/feature/multiuser/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/multiuser/a;ZLandroid/net/Uri;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/multiuser/a$2;->a:Z

    iput-object p3, p0, Lcom/coloros/settings/feature/multiuser/a$2;->b:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Cannot close image stream"

    .line 399
    iget-boolean v1, p0, Lcom/coloros/settings/feature/multiuser/a$2;->a:Z

    const/4 v2, 0x0

    const-string v3, "ColorEditUserPhotoController"

    if-eqz v1, :cond_3

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 1072
    iget-object v1, v1, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    .line 402
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/settings/feature/multiuser/a$2;->b:Landroid/net/Uri;

    .line 403
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 411
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 413
    invoke-static {v3, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v2

    :catch_1
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v5, "Cannot find image file"

    .line 406
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 411
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 413
    invoke-static {v3, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-object v2

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_3
    if-eqz v2, :cond_2

    .line 411
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 413
    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :cond_2
    :goto_4
    throw v1

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 2072
    iget v0, v0, Lcom/coloros/settings/feature/multiuser/a;->a:I

    .line 419
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 3072
    iget v1, v1, Lcom/coloros/settings/feature/multiuser/a;->a:I

    .line 419
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 424
    :try_start_6
    iget-object v4, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 4072
    iget-object v4, v4, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    .line 424
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/settings/feature/multiuser/a$2;->b:Landroid/net/Uri;

    .line 425
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 426
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v4, :cond_4

    .line 429
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_5
    move-exception v4

    .line 431
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error occur, e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 438
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 439
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 438
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 440
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 441
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 442
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v2

    add-int/2addr v2, v4

    invoke-direct {v6, v3, v4, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 444
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 5072
    iget v3, v3, Lcom/coloros/settings/feature/multiuser/a;->a:I

    .line 444
    iget-object v4, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 6072
    iget v4, v4, Lcom/coloros/settings/feature/multiuser/a;->a:I

    const/4 v7, 0x0

    .line 444
    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 445
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 446
    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    :catch_6
    :cond_5
    return-object v2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/a$2;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 12

    .line 396
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 6458
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 7072
    iput-object p1, v0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    .line 8472
    iget-object p1, v0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 8475
    iget-object p1, v0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 8476
    iget-object v1, v0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 8477
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x2d0

    .line 8478
    invoke-static {v3, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v2, v4, :cond_2

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x44340000    # 720.0f

    if-ne v2, p1, :cond_0

    if-le v2, v3, :cond_0

    int-to-float p1, p1

    :goto_0
    div-float v4, v5, p1

    goto :goto_1

    :cond_0
    if-ne v2, v1, :cond_1

    if-le v2, v3, :cond_1

    int-to-float p1, v1

    goto :goto_0

    .line 8485
    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v1, "compressIfNeeded: scale: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ColorEditUserPhotoController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    cmpl-float p1, v4, p1

    if-lez p1, :cond_2

    .line 8487
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 8488
    invoke-virtual {v10, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 8489
    iget-object v5, v0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p1, v0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    .line 8490
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object p1, v0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    .line 8489
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    :cond_2
    const/4 p1, 0x1

    const v0, 0x410547ae    # 8.33f

    .line 6460
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 9072
    iget-object v1, v1, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    .line 6460
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 6461
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 10072
    iget-object v1, v0, Lcom/coloros/settings/feature/multiuser/a;->d:Landroid/widget/ImageView;

    .line 6462
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 11072
    iget-object v2, v2, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    .line 6462
    invoke-static {v1, v2, p1}, Lcom/coloros/settings/feature/multiuser/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Lcom/coloros/settings/feature/multiuser/b;

    move-result-object p1

    .line 12072
    iput-object p1, v0, Lcom/coloros/settings/feature/multiuser/a;->g:Landroid/graphics/drawable/Drawable;

    .line 6463
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 13072
    iget-object p1, p1, Lcom/coloros/settings/feature/multiuser/a;->d:Landroid/widget/ImageView;

    .line 6463
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    .line 14072
    iget-object v0, v0, Lcom/coloros/settings/feature/multiuser/a;->g:Landroid/graphics/drawable/Drawable;

    .line 6463
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6464
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a$2;->c:Lcom/coloros/settings/feature/multiuser/a;

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a$2;->b:Landroid/net/Uri;

    .line 15072
    iput-object v0, p1, Lcom/coloros/settings/feature/multiuser/a;->h:Landroid/net/Uri;

    .line 6465
    iget-boolean v0, p0, Lcom/coloros/settings/feature/multiuser/a$2;->a:Z

    .line 16072
    iput-boolean v0, p1, Lcom/coloros/settings/feature/multiuser/a;->i:Z

    :cond_3
    return-void
.end method
