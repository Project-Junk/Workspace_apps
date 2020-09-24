.class public final Lcom/coloros/settings/feature/multiuser/a;
.super Ljava/lang/Object;
.source "ColorEditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/multiuser/a$a;
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

.field h:Landroid/net/Uri;

.field i:Z

.field private final j:Landroid/net/Uri;

.field private k:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->c:Landroidx/fragment/app/Fragment;

    .line 111
    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/a;->d:Landroid/widget/ImageView;

    .line 112
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    xor-int/lit8 p2, p5, 0x1

    const-string v0, "CropEditUserPhoto.jpg"

    invoke-static {p1, v0, p2}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->j:Landroid/net/Uri;

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    xor-int/lit8 p2, p5, 0x1

    const-string p5, "TakeEditUserPhoto2.jpg"

    invoke-static {p1, p5, p2}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/multiuser/a;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/multiuser/a;->a:I

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->d:Landroid/widget/ImageView;

    new-instance p2, Lcom/coloros/settings/feature/multiuser/-$$Lambda$a$lan2FecVXmTYVIB12PgwR0m2dII;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$a$lan2FecVXmTYVIB12PgwR0m2dII;-><init>(Lcom/coloros/settings/feature/multiuser/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object p4, p0, Lcom/coloros/settings/feature/multiuser/a;->k:Landroid/graphics/drawable/Drawable;

    .line 121
    iput-object p3, p0, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->k:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 4

    const-string v0, "com.android.settings.files"

    .line 511
    invoke-static {p0}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 513
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 515
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p1, 0x0

    .line 519
    :try_start_0
    invoke-static {p0, v0, v2}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "createTempImageUri e: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ColorEditUserPhotoController"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :try_start_1
    invoke-static {}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a()V

    .line 528
    invoke-static {p0, v0, v2}, Lcom/coloros/settings/feature/multiuser/fileprovider/MultiUserFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "createTempImageUri ex : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 538
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "user_photo"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "crop"

    const-string v1, "true"

    .line 384
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "scale"

    .line 385
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "scaleUpIfNeeded"

    .line 386
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "aspectX"

    .line 387
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    .line 388
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/a;->a:I

    const-string v1, "outputX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/a;->a:I

    const-string v1, "outputY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "return-data"

    const/4 v1, 0x0

    .line 391
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputFormat"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "output"

    .line 377
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 378
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 380
    invoke-static {v0, p1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 8

    .line 5283
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 5285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 5289
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/*"

    .line 5290
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5291
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5292
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez p1, :cond_2

    if-eqz v2, :cond_6

    .line 5206
    :cond_2
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "no_set_user_icon"

    if-eqz p1, :cond_3

    const p1, 0x7f121835

    .line 5210
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5211
    new-instance v6, Lcom/coloros/settings/feature/multiuser/-$$Lambda$a$qwZG2qXQlPug_kD6rb-sjkVY2Fw;

    invoke-direct {v6, p0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$a$qwZG2qXQlPug_kD6rb-sjkVY2Fw;-><init>(Lcom/coloros/settings/feature/multiuser/a;)V

    .line 5212
    new-instance v7, Lcom/coloros/settings/feature/multiuser/a$a;

    invoke-direct {v7, v3, p1, v5, v6}, Lcom/coloros/settings/feature/multiuser/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    const p1, 0x7f121832

    .line 5217
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5218
    new-instance v2, Lcom/coloros/settings/feature/multiuser/-$$Lambda$a$bzrPwSP9P3fUMA-ZZ4CDKsINNuk;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$a$bzrPwSP9P3fUMA-ZZ4CDKsINNuk;-><init>(Lcom/coloros/settings/feature/multiuser/a;)V

    .line 5219
    new-instance v6, Lcom/coloros/settings/feature/multiuser/a$a;

    invoke-direct {v6, v3, p1, v5, v2}, Lcom/coloros/settings/feature/multiuser/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5223
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 5224
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 5225
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/multiuser/a$a;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/multiuser/a$a;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5227
    :cond_5
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5228
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/multiuser/-$$Lambda$a$uSLBaPT5Z1Ih7ppLT39QgR0s0bc;

    invoke-direct {v1, v4}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$a$uSLBaPT5Z1Ih7ppLT39QgR0s0bc;-><init>(Ljava/util/List;)V

    .line 5229
    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    const/4 v1, 0x0

    .line 5230
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 5231
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 5232
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_6
    return-void
.end method

.method private static synthetic a(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 229
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/multiuser/a$a;

    .line 1594
    iget-boolean p1, p0, Lcom/coloros/settings/feature/multiuser/a$a;->d:Z

    if-nez p1, :cond_2

    .line 2590
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a$a;->c:Lcom/android/settingslib/g$a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1582
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a$a;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/a$a;->c:Lcom/android/settingslib/g$a;

    invoke-static {p1, p0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 1586
    :cond_1
    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/a$a;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .locals 6

    .line 496
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

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 501
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 502
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 505
    throw v0

    :cond_0
    return v0
.end method

.method private synthetic c()V
    .locals 3

    .line 3305
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3308
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 3309
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3310
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    const-string v1, "com.coloros.gallery3d"

    const-string v2, "com.oppo.gallery3d.app.Gallery"

    .line 3312
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "open_from_dialog"

    .line 3313
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3315
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->c:Landroidx/fragment/app/Fragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3316
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01006b

    const v2, 0x7f010074

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private synthetic d()V
    .locals 3

    .line 4296
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 4299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4300
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 4301
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->c:Landroidx/fragment/app/Fragment;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bzrPwSP9P3fUMA-ZZ4CDKsINNuk(Lcom/coloros/settings/feature/multiuser/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/a;->c()V

    return-void
.end method

.method public static synthetic lambda$lan2FecVXmTYVIB12PgwR0m2dII(Lcom/coloros/settings/feature/multiuser/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$qwZG2qXQlPug_kD6rb-sjkVY2Fw(Lcom/coloros/settings/feature/multiuser/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/a;->d()V

    return-void
.end method

.method public static synthetic lambda$uSLBaPT5Z1Ih7ppLT39QgR0s0bc(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/feature/multiuser/a;->a(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->k:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    instance-of v1, v0, Lcom/coloros/settings/feature/multiuser/b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Landroid/net/Uri;Z)V
    .locals 1

    .line 396
    new-instance v0, Lcom/coloros/settings/feature/multiuser/a$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/coloros/settings/feature/multiuser/a$2;-><init>(Lcom/coloros/settings/feature/multiuser/a;ZLandroid/net/Uri;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    .line 468
    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/multiuser/a$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    .line 155
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 156
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    :goto_0
    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 159
    :pswitch_0
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->j:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0, p1, p3}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/net/Uri;Z)V

    :cond_2
    return p3

    .line 165
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/a;->b()V

    goto :goto_1

    .line 1331
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    if-eqz p1, :cond_4

    .line 1334
    new-instance p1, Lcom/coloros/settings/feature/multiuser/a$1;

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/multiuser/a$1;-><init>(Lcom/coloros/settings/feature/multiuser/a;Landroid/net/Uri;)V

    new-array p2, v0, [Ljava/lang/Void;

    .line 1352
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/multiuser/a$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_1
    return p3

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final b()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a;->j:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->j:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 363
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Intent;)V

    .line 364
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 366
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 367
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/a;->c:Landroidx/fragment/app/Fragment;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 370
    throw v0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/net/Uri;Z)V

    :cond_2
    :goto_0
    return-void
.end method
