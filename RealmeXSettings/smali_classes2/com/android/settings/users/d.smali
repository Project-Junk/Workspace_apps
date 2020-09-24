.class public final Lcom/android/settings/users/d;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/d$b;,
        Lcom/android/settings/users/d$a;
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/content/Context;

.field final c:Landroidx/fragment/app/Fragment;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/net/Uri;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/graphics/drawable/Drawable;

.field private final h:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    .line 98
    iput-object p1, p0, Lcom/android/settings/users/d;->c:Landroidx/fragment/app/Fragment;

    .line 99
    iput-object p2, p0, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    .line 100
    iget-object p1, p0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    xor-int/lit8 p2, p5, 0x1

    const-string v0, "CropEditUserPhoto.jpg"

    invoke-static {p1, v0, p2}, Lcom/android/settings/users/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/d;->h:Landroid/net/Uri;

    .line 101
    iget-object p1, p0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    xor-int/lit8 p2, p5, 0x1

    const-string p5, "TakeEditUserPhoto2.jpg"

    invoke-static {p1, p5, p2}, Lcom/android/settings/users/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/d;->e:Landroid/net/Uri;

    .line 102
    iget-object p1, p0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/users/d;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/users/d;->a:I

    .line 103
    iget-object p1, p0, Lcom/android/settings/users/d;->d:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/settings/users/d$1;

    invoke-direct {p2, p0}, Lcom/android/settings/users/d$1;-><init>(Lcom/android/settings/users/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object p3, p0, Lcom/android/settings/users/d;->f:Landroid/graphics/Bitmap;

    .line 110
    iput-object p4, p0, Lcom/android/settings/users/d;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 6

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const-string p0, "display_max_dim"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 358
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 359
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 362
    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 368
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const-string p1, "com.android.settings.files"

    .line 372
    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "crop"

    const-string v1, "true"

    .line 277
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "scale"

    .line 278
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "scaleUpIfNeeded"

    .line 279
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "aspectX"

    .line 280
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    .line 281
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    iget v0, p0, Lcom/android/settings/users/d;->a:I

    const-string v1, "outputX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    iget v0, p0, Lcom/android/settings/users/d;->a:I

    const-string v1, "outputY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method static a(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "output"

    .line 270
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 271
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    invoke-static {v0, p1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/users/d;->e:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/android/settings/users/d;->h:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/settings/users/d;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 256
    invoke-direct {p0, v0}, Lcom/android/settings/users/d;->a(Landroid/content/Intent;)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 260
    iget-object v1, p0, Lcom/android/settings/users/d;->c:Landroidx/fragment/app/Fragment;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 263
    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/d;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/d;->a(Landroid/net/Uri;Z)V

    return-void
.end method

.method final a(Landroid/net/Uri;Z)V
    .locals 1

    .line 287
    new-instance v0, Lcom/android/settings/users/d$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/users/d$6;-><init>(Lcom/android/settings/users/d;ZLandroid/net/Uri;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    .line 350
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/users/d$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method final b()Ljava/io/File;
    .locals 6

    .line 377
    iget-object v0, p0, Lcom/android/settings/users/d;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 381
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/users/d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "NewUserPhoto.png"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 383
    iget-object v3, p0, Lcom/android/settings/users/d;->f:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 384
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 385
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "EditUserPhotoController"

    const-string v3, "Cannot create temp file"

    .line 388
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
