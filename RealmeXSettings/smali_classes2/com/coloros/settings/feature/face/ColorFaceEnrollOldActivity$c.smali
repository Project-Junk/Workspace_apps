.class final Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$c;
.super Ljava/lang/Object;
.source "ColorFaceEnrollOldActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$c;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;B)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$c;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "surfaceChanged width = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OppoFaceEnrollOldActivity"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$c;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Landroid/hardware/face/FaceManager;

    move-result-object p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/b/a;->a(Landroid/hardware/face/FaceManager;Landroid/view/Surface;)I

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "OppoFaceEnrollOldActivity"

    const-string v1, "surfaceCreated"

    .line 340
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$c;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/b/a;->a(Landroid/hardware/face/FaceManager;Landroid/view/Surface;)I

    const/4 v0, 0x1

    .line 342
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "OppoFaceEnrollOldActivity"

    const-string v1, "surfaceDestroyed"

    .line 354
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 356
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    return-void
.end method
