.class Lcom/oppo/camera/e$12;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 8

    const-string v0, "CameraManager"

    const-string v1, "mCaptureImageListener, mCaptureImageListener"

    .line 763
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "mCaptureImageListener, image not ready"

    .line 769
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object p1, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->q()V

    .line 773
    iget-object p1, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 774
    iget-object p1, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->r()V

    :cond_0
    return-void

    :cond_1
    const-string v1, "captureX mCaptureImageListener onImageAvailable"

    .line 780
    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 783
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v5

    .line 784
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v6

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-ne v3, v6, :cond_2

    .line 789
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 790
    new-array v2, v2, [B

    .line 791
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v3, v7, v3

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/16 v3, 0x23

    if-ne v3, v6, :cond_3

    const/16 v2, 0x11

    .line 793
    invoke-static {p1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I)[B

    move-result-object v2

    :cond_3
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_7

    .line 797
    iget-object v0, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    const-string v2, "pref_support_capture_preview"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 798
    new-instance v0, Lcom/oppo/camera/Ipa/b$a;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b$a;-><init>()V

    .line 799
    iput-object v3, v0, Lcom/oppo/camera/Ipa/b$a;->a:[B

    .line 800
    iput v4, v0, Lcom/oppo/camera/Ipa/b$a;->e:I

    .line 801
    iput v5, v0, Lcom/oppo/camera/Ipa/b$a;->f:I

    .line 802
    iput v6, v0, Lcom/oppo/camera/Ipa/b$a;->i:I

    .line 803
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oppo/camera/Ipa/b$a;->k:J

    .line 804
    iget-object v2, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->n(Lcom/oppo/camera/e;)I

    move-result v2

    iput v2, v0, Lcom/oppo/camera/Ipa/b$a;->j:I

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oppo/camera/Ipa/b$a;->p:J

    .line 807
    iget-object v2, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 808
    iget-object v2, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$a;)V

    .line 811
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 812
    iget-object v0, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/d/i;->a([BIIIZ)V

    goto :goto_1

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 816
    iget-object v0, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/d/i;->a([BIIIZ)V

    .line 819
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 820
    iget-object v0, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/Ipa/ImageProcessService;->b(J)V

    goto :goto_1

    :cond_7
    const-string v2, "mCaptureImageListener, imageData is null"

    .line 824
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 829
    iget-object p1, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 830
    iget-object p1, p0, Lcom/oppo/camera/e$12;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->r()V

    .line 833
    :cond_9
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method
