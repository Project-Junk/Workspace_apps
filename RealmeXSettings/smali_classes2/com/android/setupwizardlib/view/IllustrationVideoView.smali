.class public Lcom/android/setupwizardlib/view/IllustrationVideoView;
.super Landroid/view/TextureView;
.source "IllustrationVideoView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected a:F

.field protected b:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field c:Landroid/view/Surface;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->a:F

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->d:I

    .line 69
    sget-object v1, Lcom/android/setupwizardlib/b$g;->SuwIllustrationVideoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwIllustrationVideoView_suwVideo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->d:I

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x3f7ffffe    # 0.9999999f

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setScaleX(F)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setScaleX(F)V

    .line 80
    invoke-virtual {p0, p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->c:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->d:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->d:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    .line 137
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->c:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 139
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    .line 144
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 145
    iget v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->a:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    .line 146
    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->a:F

    .line 147
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->requestLayout()V

    goto :goto_0

    :cond_2
    const-string v0, "IllustrationVideoView"

    const-string v1, "Unable to initialize media player for video view"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

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

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    :cond_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p2

    int-to-float v1, p1

    .line 88
    iget v2, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->a:F

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

    .line 97
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 98
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 96
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 244
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x4

    .line 186
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVisibility(I)V

    .line 187
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->c:Landroid/view/Surface;

    .line 188
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->a()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1170
    iget-object p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1171
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1172
    iget-object p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 1173
    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    .line 1175
    :cond_0
    iget-object p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->c:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 1176
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 1177
    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->c:Landroid/view/Surface;

    :cond_1
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

    .line 115
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->stop()V

    return-void
.end method

.method public setVideoResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 107
    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->d:I

    if-eq p1, v0, :cond_0

    .line 108
    iput p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->d:I

    .line 109
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->a()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method
