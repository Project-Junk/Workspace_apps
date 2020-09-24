.class public Lcom/oppo/camera/d/n;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/n$a;,
        Lcom/oppo/camera/d/n$b;,
        Lcom/oppo/camera/d/n$c;,
        Lcom/oppo/camera/d/n$d;,
        Lcom/oppo/camera/d/n$e;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/media/MediaRecorder;

.field private c:Lcom/oppo/camera/d/c;

.field private d:Lcom/oppo/camera/d/n$e;

.field private e:Lcom/oppo/camera/d/n$d;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    .line 22
    iput-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    .line 23
    iput-object v0, p0, Lcom/oppo/camera/d/n;->d:Lcom/oppo/camera/d/n$e;

    .line 24
    iput-object v0, p0, Lcom/oppo/camera/d/n;->e:Lcom/oppo/camera/d/n$d;

    .line 27
    iput-boolean p1, p0, Lcom/oppo/camera/d/n;->a:Z

    .line 29
    invoke-direct {p0}, Lcom/oppo/camera/d/n;->h()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/n;)Lcom/oppo/camera/d/n$e;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oppo/camera/d/n;->d:Lcom/oppo/camera/d/n$e;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/d/n;)Lcom/oppo/camera/d/n$d;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oppo/camera/d/n;->e:Lcom/oppo/camera/d/n$d;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 33
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/oppo/camera/d/c;

    invoke-direct {v0}, Lcom/oppo/camera/d/c;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    .line 35
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    new-instance v2, Lcom/oppo/camera/d/n$a;

    invoke-direct {v2, p0, v1}, Lcom/oppo/camera/d/n$a;-><init>(Lcom/oppo/camera/d/n;Lcom/oppo/camera/d/n$1;)V

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/c;->a(Lcom/oppo/camera/d/d;)V

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    .line 38
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/oppo/camera/d/n$c;

    invoke-direct {v2, p0, v1}, Lcom/oppo/camera/d/n$c;-><init>(Lcom/oppo/camera/d/n;Lcom/oppo/camera/d/n$1;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 39
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/oppo/camera/d/n$b;

    invoke-direct {v2, p0, v1}, Lcom/oppo/camera/d/n$b;-><init>(Lcom/oppo/camera/d/n;Lcom/oppo/camera/d/n$1;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/c;->a(FF)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/c;->a(II)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/c;->b(J)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :goto_0
    return-void
.end method

.method public a(Landroid/media/CamcorderProfile;)V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->a(Landroid/media/CamcorderProfile;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/d/n$d;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/oppo/camera/d/n;->e:Lcom/oppo/camera/d/n$d;

    return-void
.end method

.method public a(Lcom/oppo/camera/d/n$e;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/oppo/camera/d/n;->d:Lcom/oppo/camera/d/n$e;

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/q;)V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->a(Lcom/oppo/camera/gl/q;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->a(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->b()Z

    move-result v0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->f(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_0
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeExifTag, exifInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setParameter"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 337
    iget-object v1, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "set-title="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 343
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 341
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 100
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/c;->a(Lcom/oppo/camera/d/d;)V

    .line 102
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->c()Z

    move-result v0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 105
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 106
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public c(I)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->g(I)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object p2, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/d/c;->a(I)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-static {p2, p1}, Lcom/oppo/camera/e/a;->b(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 113
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    iput-object v1, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 117
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 118
    iput-object v1, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 6

    .line 349
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setParameter"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 356
    iget-object v1, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "set-author=realme_"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->h(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->a()V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->i(I)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 3

    .line 376
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->e()V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "VideoRecorder"

    const-string v2, "resume, Could not resume video recorder"

    .line 382
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public g(I)V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->b(I)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 2

    .line 393
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0}, Lcom/oppo/camera/d/c;->d()V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "VideoRecorder"

    const-string v1, "pause, Could not pause video recorder"

    .line 401
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public h(I)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->d(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->c(I)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/c;->e(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_0
    return-void
.end method

.method public k(I)V
    .locals 3

    .line 239
    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oppo/camera/d/n;->c:Lcom/oppo/camera/d/c;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/c;->a(J)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :goto_0
    return-void
.end method

.method public l(I)V
    .locals 7

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoMirror, mirrorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v2, "setParameter"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 259
    iget-object v2, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set-video-mirror="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string v0, "setVideoMirror, IllegalAccessException"

    .line 271
    invoke-static {v1, v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string v0, "setVideoMirror, InvocationTargetException"

    .line 267
    invoke-static {v1, v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string v0, "setVideoMirror, NoSuchMethodException"

    .line 263
    invoke-static {v1, v0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 250
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoMirror, mMediaRecorder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/n;->b:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mbUseCameraMediaCodec: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/d/n;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
