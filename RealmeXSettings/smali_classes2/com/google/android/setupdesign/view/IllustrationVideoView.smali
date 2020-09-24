.class public Lcom/google/android/setupdesign/view/IllustrationVideoView;
.super Landroid/view/TextureView;
.source "IllustrationVideoView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected a:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Landroid/view/Surface;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:F

.field private d:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->c:F

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->d:I

    .line 83
    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->g:I

    .line 91
    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->h:Z

    .line 95
    sget-object v1, Lcom/google/android/setupdesign/b$g;->SudIllustrationVideoView:[I

    .line 96
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    sget p2, Lcom/google/android/setupdesign/b$g;->SudIllustrationVideoView_sudVideo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResource(I)V

    const p1, 0x3f7ffffe    # 0.9999999f

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setScaleX(F)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setScaleX(F)V

    .line 107
    invoke-virtual {p0, p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->d:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    .line 176
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 182
    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->d:I

    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 188
    :try_start_0
    iget-object p2, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 189
    iget-object p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "IllustrationVideoView"

    const-string v0, "Unable to set data source"

    .line 191
    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private b()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 203
    invoke-direct {p0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    .line 204
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 246
    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->f:Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 251
    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b()V

    .line 266
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a()V

    return-void

    :cond_1
    const-string v0, "IllustrationVideoView"

    const-string v1, "Surface is null"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIsMediaPlayerLoading(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->h:Z

    .line 229
    iget p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->g:I

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getAspectRatio()F
    .locals 1

    .line 377
    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->c:F

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MediaPlayer error. what="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IllustrationVideoView"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    :cond_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 113
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p2

    int-to-float v1, p1

    .line 115
    iget v2, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->c:F

    mul-float v3, v1, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    div-float/2addr v0, v2

    float-to-int p1, v0

    goto :goto_0

    :cond_0
    mul-float/2addr v1, v2

    float-to-int p2, v1

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 124
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 125
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->f:Z

    .line 331
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 334
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected video size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IllustrationVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 339
    :goto_0
    iget p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->c:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_1

    .line 340
    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->c:F

    .line 341
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->requestLayout()V

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getWindowVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    :cond_2
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1362
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->f:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_0
    const-string p1, "IllustrationVideoView"

    const-string v0, "Seek complete but media player not prepared"

    .line 353
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x1

    .line 280
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    .line 281
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->d()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->c()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_1

    .line 1256
    iget-object p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->b:Landroid/view/Surface;

    if-nez p1, :cond_0

    .line 1257
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->d()V

    :cond_0
    return-void

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->c()V

    return-void
.end method

.method public setVideoResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 149
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1135
    iget v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->d:I

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->e:Ljava/lang/String;

    .line 1136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1137
    :cond_0
    iput p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->d:I

    .line 1138
    iput-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->e:Ljava/lang/String;

    .line 1139
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 220
    iput p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->g:I

    .line 221
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->h:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 224
    :cond_0
    invoke-super {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method
