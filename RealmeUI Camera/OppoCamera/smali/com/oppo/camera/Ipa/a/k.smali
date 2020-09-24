.class public Lcom/oppo/camera/Ipa/a/k;
.super Lcom/oppo/camera/Ipa/a/b;
.source "WatermarkProcessor.java"


# instance fields
.field private a:Lcom/oppo/camera/watermark/OppoWatermark;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/oppo/camera/Ipa/a/b;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/k;->a:Lcom/oppo/camera/watermark/OppoWatermark;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "WatermarkProcessor"

    const-string v1, "unInit"

    .line 54
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/oppo/camera/Ipa/a/k;->a:Lcom/oppo/camera/watermark/OppoWatermark;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    const-string p1, "WatermarkProcessor"

    const-string p2, "init"

    .line 15
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/oppo/camera/watermark/OppoWatermark;

    invoke-direct {p1}, Lcom/oppo/camera/watermark/OppoWatermark;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/a/k;->a:Lcom/oppo/camera/watermark/OppoWatermark;

    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/b;)V
    .locals 6

    .line 22
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v0, v0, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    const-string v1, "WatermarkProcessor"

    if-nez v0, :cond_0

    const-string p1, "process, mWatermarkPath is null"

    .line 23
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 29
    new-instance v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;

    invoke-direct {v0}, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;-><init>()V

    .line 30
    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageWidth:I

    .line 31
    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageHeight:I

    .line 32
    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageStride:I

    .line 33
    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageScanline:I

    .line 34
    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->j:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mOrientation:I

    .line 36
    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$b;->L:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewWidth:I

    .line 37
    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$b;->M:I

    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewHeight:I

    .line 38
    iget-object v4, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v4, v4, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    iput-object v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkPath:Ljava/lang/String;

    const/4 v4, 0x1

    .line 39
    iput v4, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkFormat:I

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process, mImageWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mImageHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mImageStride: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageStride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mImageScanline: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mImageScanline:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mOrientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPreviewWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPreviewHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mPreviewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mWatermarkPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mWatermarkFormat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;->mWatermarkFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/oppo/camera/Ipa/a/k;->a:Lcom/oppo/camera/watermark/OppoWatermark;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b$a;->a:[B

    invoke-virtual {v4, p1, v0}, Lcom/oppo/camera/watermark/OppoWatermark;->process([BLcom/oppo/camera/watermark/OppoWatermark$WatermarkParameter;)I

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "process, costTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
