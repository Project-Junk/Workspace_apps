.class final Lcom/coloros/settings/feature/multiuser/a$1;
.super Landroid/os/AsyncTask;
.source "ColorEditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/multiuser/a;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/coloros/settings/feature/multiuser/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/multiuser/a;Landroid/net/Uri;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/a$1;->b:Lcom/coloros/settings/feature/multiuser/a;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/a$1;->a:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 6

    .line 337
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/a$1;->b:Lcom/coloros/settings/feature/multiuser/a;

    .line 1072
    iget-object v0, v0, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    .line 337
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/multiuser/a$1;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 339
    :try_start_1
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/a$1;->b:Lcom/coloros/settings/feature/multiuser/a;

    .line 2072
    iget-object v3, v3, Lcom/coloros/settings/feature/multiuser/a;->e:Landroid/net/Uri;

    .line 339
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 340
    :try_start_2
    invoke-static {v2, v0}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 341
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 338
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v4, :cond_1

    .line 341
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2
    :goto_1
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :catch_2
    move-exception v0

    .line 338
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_3

    .line 341
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_3
    move-exception v2

    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    const-string v2, "ColorEditUserPhotoController"

    const-string v3, "Failed to copy photo"

    .line 342
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-object v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/a$1;->a()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2349
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a$1;->b:Lcom/coloros/settings/feature/multiuser/a;

    .line 3072
    iget-object p1, p1, Lcom/coloros/settings/feature/multiuser/a;->c:Landroidx/fragment/app/Fragment;

    .line 2349
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2350
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/a$1;->b:Lcom/coloros/settings/feature/multiuser/a;

    .line 4072
    invoke-virtual {p1}, Lcom/coloros/settings/feature/multiuser/a;->b()V

    :cond_0
    return-void
.end method
