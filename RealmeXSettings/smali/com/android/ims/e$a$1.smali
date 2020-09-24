.class final Lcom/android/ims/e$a$1;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/e$a;


# direct methods
.method constructor <init>(Lcom/android/ims/e$a;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->b(Lcom/android/ims/e$a;)V

    .line 268
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->c(Lcom/android/ims/e$a;)V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    const/4 v0, 0x0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v1}, Lcom/android/ims/e$a;->d(Lcom/android/ims/e$a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v2}, Lcom/android/ims/e$a;->e(Lcom/android/ims/e$a;)Lcom/android/ims/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->e(Lcom/android/ims/e$a;)Lcom/android/ims/e;

    move-result-object v0

    .line 3325
    iget-object v0, v0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0}, Lcom/android/ims/h;->i()I

    move-result v0

    .line 240
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :try_start_2
    const-string v0, "ImsManager"

    const-string v1, "Unexpected State!"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->f(Lcom/android/ims/e$a;)V

    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->b(Lcom/android/ims/e$a;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 240
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 258
    :catch_0
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->b(Lcom/android/ims/e$a;)V

    .line 259
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->c(Lcom/android/ims/e$a;)V

    return-void
.end method

.method public static synthetic lambda$FPQdXZpw1Vu-MuK6H5CKDbNYjrk(Lcom/android/ims/e$a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/e$a$1;->c()V

    return-void
.end method

.method public static synthetic lambda$p6wVxSOIm60Bi97HgqTdJz4LXxM(Lcom/android/ims/e$a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/e$a$1;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->a(Lcom/android/ims/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$e$a$1$p6wVxSOIm60Bi97HgqTdJz4LXxM;

    invoke-direct {v1, p0}, Lcom/android/ims/-$$Lambda$e$a$1$p6wVxSOIm60Bi97HgqTdJz4LXxM;-><init>(Lcom/android/ims/e$a$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/ims/e$a$1;->a:Lcom/android/ims/e$a;

    invoke-static {v0}, Lcom/android/ims/e$a;->a(Lcom/android/ims/e$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$e$a$1$FPQdXZpw1Vu-MuK6H5CKDbNYjrk;

    invoke-direct {v1, p0}, Lcom/android/ims/-$$Lambda$e$a$1$FPQdXZpw1Vu-MuK6H5CKDbNYjrk;-><init>(Lcom/android/ims/e$a$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
