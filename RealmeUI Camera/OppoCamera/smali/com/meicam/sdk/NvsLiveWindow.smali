.class public Lcom/meicam/sdk/NvsLiveWindow;
.super Landroid/view/TextureView;
.source "NvsLiveWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final FILLMODE_PRESERVEASPECTCROP:I = 0x0

.field public static final FILLMODE_PRESERVEASPECTFIT:I = 0x1

.field public static final FILLMODE_STRETCH:I = 0x2


# instance fields
.field protected m_fillMode:I

.field protected m_internalObject:J

.field private m_surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 64
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 65
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 56
    iput-wide p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 71
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 72
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 56
    iput-wide p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 78
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 79
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 p1, 0x0

    .line 56
    iput-wide p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 85
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 86
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    return-void
.end method

.method private destroyCurrentSurface()V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSurfaceDestroyed(J)V

    .line 288
    iget-object v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 276
    invoke-virtual {p0, p0}, Lcom/meicam/sdk/NvsLiveWindow;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 278
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->nativeInit()V

    :cond_0
    return-void
.end method

.method private native nativeClearVideoFrame(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeInit()V
.end method

.method private native nativeMapCanonicalToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapNormalizedToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapViewToCanonical(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMapViewToNormalized(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeOnSizeChanged(JII)V
.end method

.method private native nativeRepaintVideoFrame(J)V
.end method

.method private native nativeSetBackgroundColor(JFFF)V
.end method

.method private native nativeSetFillMode(JI)V
.end method

.method private native nativeSurfaceChanged(JLandroid/view/Surface;II)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private native nativeTakeScreenshot(J)Landroid/graphics/Bitmap;
.end method


# virtual methods
.method public clearVideoFrame()V
    .locals 2

    .line 181
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 182
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeClearVideoFrame(J)V

    return-void
.end method

.method public getFillMode()I
    .locals 1

    .line 114
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 115
    iget v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    return v0
.end method

.method public mapCanonicalToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 126
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 127
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeMapCanonicalToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public mapNormalizedToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 150
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 151
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeMapNormalizedToView(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 138
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 139
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeMapViewToCanonical(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public mapViewToNormalized(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 162
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 163
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeMapViewToNormalized(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 209
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 210
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->init()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 216
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->destroyCurrentSurface()V

    .line 218
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 219
    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeClose(J)V

    .line 220
    iput-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    :cond_0
    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsLiveWindow;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 226
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsLiveWindow;->nativeOnSizeChanged(JII)V

    .line 234
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7

    .line 240
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->destroyCurrentSurface()V

    .line 241
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    .line 242
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    .line 243
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    iget-object v4, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSurfaceChanged(JLandroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->destroyCurrentSurface()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 7

    .line 250
    invoke-direct {p0}, Lcom/meicam/sdk/NvsLiveWindow;->destroyCurrentSurface()V

    .line 251
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsLiveWindow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    .line 252
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    .line 253
    iget-wide v2, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    iget-object v4, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_surface:Landroid/view/Surface;

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSurfaceChanged(JLandroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public repaintVideoFrame()V
    .locals 2

    .line 172
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 173
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeRepaintVideoFrame(J)V

    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 6

    .line 200
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 201
    iget-wide v1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSetBackgroundColor(JFFF)V

    return-void
.end method

.method public setFillMode(I)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 101
    :cond_0
    iget v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    if-ne p1, v0, :cond_1

    return-void

    .line 104
    :cond_1
    iput p1, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_fillMode:I

    .line 105
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeSetFillMode(JI)V

    return-void
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 2

    .line 190
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 191
    iget-wide v0, p0, Lcom/meicam/sdk/NvsLiveWindow;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsLiveWindow;->nativeTakeScreenshot(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
