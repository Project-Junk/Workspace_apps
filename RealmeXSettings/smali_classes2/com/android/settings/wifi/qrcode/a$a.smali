.class final Lcom/android/settings/wifi/qrcode/a$a;
.super Landroid/os/AsyncTask;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/qrcode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/qrcode/a;

.field private b:Lcom/android/settings/wifi/qrcode/c;

.field private c:Landroid/graphics/SurfaceTexture;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/qrcode/a;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/a$a;->c:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/qrcode/a;Landroid/graphics/SurfaceTexture;B)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/qrcode/a$a;-><init>(Lcom/android/settings/wifi/qrcode/a;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a$a;->c:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/qrcode/a$a;->a(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 241
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;)Landroid/hardware/Camera;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/qrcode/-$$Lambda$a$a$SUdvqh_2jeAFgqec7dnqrQSzm60;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/qrcode/-$$Lambda$a$a$SUdvqh_2jeAFgqec7dnqrQSzm60;-><init>(Lcom/android/settings/wifi/qrcode/a$a;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 253
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    .line 257
    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/a;->b(Lcom/android/settings/wifi/qrcode/a;)Lcom/google/c/j;

    move-result-object v2

    new-instance v3, Lcom/google/c/c;

    new-instance v4, Lcom/google/c/b/j;

    iget-object v5, p0, Lcom/android/settings/wifi/qrcode/a$a;->b:Lcom/android/settings/wifi/qrcode/c;

    invoke-direct {v4, v5}, Lcom/google/c/b/j;-><init>(Lcom/google/c/i;)V

    invoke-direct {v3, v4}, Lcom/google/c/c;-><init>(Lcom/google/c/b;)V

    .line 1082
    iget-object v4, v2, Lcom/google/c/j;->a:[Lcom/google/c/m;

    if-nez v4, :cond_2

    .line 1083
    invoke-virtual {v2, v1}, Lcom/google/c/j;->a(Ljava/util/Map;)V

    .line 1085
    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/c/j;->a(Lcom/google/c/c;)Lcom/google/c/o;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/c/n; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {v3}, Lcom/android/settings/wifi/qrcode/a;->b(Lcom/android/settings/wifi/qrcode/a;)Lcom/google/c/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/c/j;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/a;->b(Lcom/android/settings/wifi/qrcode/a;)Lcom/google/c/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/c/j;->a()V

    .line 264
    throw v0

    .line 263
    :catch_0
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/a;->b(Lcom/android/settings/wifi/qrcode/a;)Lcom/google/c/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/c/j;->a()V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 266
    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {v3}, Lcom/android/settings/wifi/qrcode/a;->c(Lcom/android/settings/wifi/qrcode/a;)Lcom/android/settings/wifi/qrcode/a$b;

    move-result-object v3

    .line 2060
    iget-object v4, v2, Lcom/google/c/o;->a:Ljava/lang/String;

    .line 266
    invoke-interface {v3, v4}, Lcom/android/settings/wifi/qrcode/a$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3060
    iget-object v0, v2, Lcom/google/c/o;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 271
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-object v1
.end method

.method private synthetic a(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V
    .locals 0

    .line 247
    iget-object p3, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p3, p2}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;[B)Lcom/android/settings/wifi/qrcode/c;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/a$a;->b:Lcom/android/settings/wifi/qrcode/c;

    .line 248
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;)Z
    .locals 8

    .line 285
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 286
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    const-string v5, "Error to init Camera"

    const-string v6, "QrCamera"

    if-ge v3, v0, :cond_1

    .line 289
    :try_start_0
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 290
    iget v7, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v7, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 293
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {p1, v0}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;I)I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;)Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Cannot find available back camera."

    .line 298
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/a;->c(Lcom/android/settings/wifi/qrcode/a;)Lcom/android/settings/wifi/qrcode/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/a$b;->e()V

    return v2

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/a;->d(Lcom/android/settings/wifi/qrcode/a;)V

    .line 303
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/a;->c(Lcom/android/settings/wifi/qrcode/a;)Lcom/android/settings/wifi/qrcode/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/wifi/qrcode/a$b;->c()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;Landroid/util/Size;)V

    .line 304
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/a;->e(Lcom/android/settings/wifi/qrcode/a;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 305
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1, v4}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 307
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/a;->c(Lcom/android/settings/wifi/qrcode/a;)Lcom/android/settings/wifi/qrcode/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/a$b;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 312
    :catch_0
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1, v4}, Lcom/android/settings/wifi/qrcode/a;->a(Lcom/android/settings/wifi/qrcode/a;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 314
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/a;->c(Lcom/android/settings/wifi/qrcode/a;)Lcom/android/settings/wifi/qrcode/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/a$b;->e()V

    return v2
.end method

.method public static synthetic lambda$SUdvqh_2jeAFgqec7dnqrQSzm60(Lcom/android/settings/wifi/qrcode/a$a;Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/qrcode/a$a;->a(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/android/settings/wifi/qrcode/a$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 227
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3280
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/a$a;->a:Lcom/android/settings/wifi/qrcode/a;

    invoke-static {p1}, Lcom/android/settings/wifi/qrcode/a;->c(Lcom/android/settings/wifi/qrcode/a;)Lcom/android/settings/wifi/qrcode/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/wifi/qrcode/a$b;->d()V

    :cond_0
    return-void
.end method
