.class final Lcom/android/settings/users/d$6;
.super Landroid/os/AsyncTask;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/d;->a(Landroid/net/Uri;Z)V
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

.field final synthetic c:Lcom/android/settings/users/d;


# direct methods
.method constructor <init>(Lcom/android/settings/users/d;ZLandroid/net/Uri;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    iput-boolean p2, p0, Lcom/android/settings/users/d$6;->a:Z

    iput-object p3, p0, Lcom/android/settings/users/d$6;->b:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Cannot close image stream"

    const-string v1, "EditUserPhotoController"

    .line 290
    iget-boolean v2, p0, Lcom/android/settings/users/d$6;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 1070
    iget-object v2, v2, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    .line 293
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/d$6;->b:Landroid/net/Uri;

    .line 294
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 302
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 304
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v3

    :catch_1
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v2, v3

    :goto_1
    :try_start_3
    const-string v5, "Cannot find image file"

    .line 297
    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 302
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .line 304
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-object v3

    :catchall_1
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_3
    if-eqz v3, :cond_2

    .line 302
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 304
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    :cond_2
    :goto_4
    throw v2

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 2070
    iget v0, v0, Lcom/android/settings/users/d;->a:I

    .line 310
    iget-object v1, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 3070
    iget v1, v1, Lcom/android/settings/users/d;->a:I

    .line 310
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 315
    :try_start_6
    iget-object v2, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 4070
    iget-object v2, v2, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    .line 315
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/d$6;->b:Landroid/net/Uri;

    .line 316
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 317
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v2, :cond_4

    .line 322
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 323
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 322
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 324
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 325
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 326
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v4, v3

    add-int/2addr v3, v5

    invoke-direct {v6, v4, v5, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 5070
    iget v4, v4, Lcom/android/settings/users/d;->a:I

    .line 328
    iget-object v5, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 6070
    iget v5, v5, Lcom/android/settings/users/d;->a:I

    const/4 v7, 0x0

    .line 328
    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 330
    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    :catch_5
    :cond_4
    return-object v3
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/android/settings/users/d$6;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 287
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 6342
    iget-object v0, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 7070
    iput-object p1, v0, Lcom/android/settings/users/d;->f:Landroid/graphics/Bitmap;

    .line 8070
    iget-object p1, v0, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    .line 6344
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 9070
    iget-object v1, v1, Lcom/android/settings/users/d;->f:Landroid/graphics/Bitmap;

    .line 6344
    invoke-static {p1, v1}, Lcom/android/settingslib/g/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/g/a;

    move-result-object p1

    .line 10070
    iput-object p1, v0, Lcom/android/settings/users/d;->g:Landroid/graphics/drawable/Drawable;

    .line 6345
    iget-object p1, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 11070
    iget-object p1, p1, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    .line 6345
    iget-object v0, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 12070
    iget-object v0, v0, Lcom/android/settings/users/d;->g:Landroid/graphics/drawable/Drawable;

    .line 6345
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6347
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 13070
    iget-object v0, v0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    .line 6347
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "TakeEditUserPhoto2.jpg"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6348
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings/users/d$6;->c:Lcom/android/settings/users/d;

    .line 14070
    iget-object v0, v0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    .line 6348
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "CropEditUserPhoto.jpg"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method
