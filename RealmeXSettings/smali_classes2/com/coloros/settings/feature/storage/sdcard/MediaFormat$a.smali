.class public final Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;
.super Landroid/os/AsyncTask;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

.field private b:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;Ljava/lang/String;)V
    .locals 1

    .line 320
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->b:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->d:Z

    .line 321
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->c:Ljava/lang/String;

    .line 322
    new-instance p2, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-direct {p2, p1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->b:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 12

    .line 328
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 330
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PartitionTask diskId ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    .line 334
    iput-boolean v3, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sd card is remove when format"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-boolean v4, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->d:Z

    :goto_0
    return-object v2

    .line 342
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    move v5, v4

    .line 343
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "Error occur, e = "

    if-ge v5, v6, :cond_2

    .line 344
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 345
    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 346
    iget-object v9, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v9}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Format uuid: "

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 351
    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 352
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "has sd card"

    invoke-static {v1, v5}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    .line 355
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    .line 356
    iput-boolean v3, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->d:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 358
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput-boolean v4, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->d:Z

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-wide/16 v0, 0x3e8

    .line 366
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 368
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v2
.end method

.method private a(Z)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->b:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    .line 405
    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->b:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->dismiss()V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_1

    const p1, 0x7f120f68

    goto :goto_0

    :cond_1
    const p1, 0x7f120f67

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->i(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 413
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->i(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f120f84

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 414
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->i(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 415
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->i(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->j(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->k(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 315
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 315
    check-cast p1, Ljava/lang/Void;

    .line 1386
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1387
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->g(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->d:Z

    :goto_0
    if-nez p1, :cond_2

    .line 1392
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    .line 1393
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "format_fail_settings"

    goto :goto_1

    :cond_1
    const-string v1, "format_fail_others"

    .line 1392
    :goto_1
    invoke-static {p1, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1394
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a(Z)V

    return-void

    .line 1396
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    .line 1397
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "format_success_settings"

    goto :goto_2

    :cond_3
    const-string v0, "format_success_others"

    .line 1396
    :goto_2
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1398
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sd card format finish"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1399
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->a(Z)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .line 375
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 376
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->b:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f121136

    .line 377
    invoke-virtual {v0, v2}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setTitle(I)V

    .line 378
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->b:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v0, v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setCancelable(Z)V

    .line 379
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->b:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->show()V

    .line 381
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;->d:Z

    return-void
.end method
