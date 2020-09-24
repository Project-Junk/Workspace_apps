.class Lcom/oppo/camera/e$23;
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

    .line 891
    iput-object p1, p0, Lcom/oppo/camera/e$23;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMainYuvCaptureImageListener, onImageAvailable, isNeedAPSProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$23;->a:Lcom/oppo/camera/e;

    .line 895
    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aj()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 894
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/oppo/camera/e$23;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    iget-object v1, p0, Lcom/oppo/camera/e$23;->a:Lcom/oppo/camera/e;

    invoke-static {v1, p1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Landroid/media/ImageReader;)V

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e$23;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 904
    iget-object v1, p0, Lcom/oppo/camera/e$23;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/oppo/camera/d/i;->a(Landroid/media/ImageReader;IZ)Z

    :cond_1
    return-void
.end method
