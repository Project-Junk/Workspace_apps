.class Lcom/oppo/camera/d/e$5;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/d/e;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/e;)V
    .locals 0

    .line 1342
    iput-object p1, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1345
    iget-object v0, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    iget-boolean v0, v0, Lcom/oppo/camera/d/e;->s:Z

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    invoke-virtual {v0}, Lcom/oppo/camera/d/e;->aJ()V

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    invoke-virtual {v0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1351
    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object v2

    .line 1350
    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v2

    .line 1352
    iget-object v0, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v4, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    iget-object v4, v4, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    const v5, 0x7f0f0124

    new-array v1, v1, [Ljava/lang/Object;

    .line 1353
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501d2

    .line 1352
    invoke-interface {v0, v1, v3, v2}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;II)V

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e$5;->a:Lcom/oppo/camera/d/e;

    iget-object v0, v0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->p(Z)V

    :goto_0
    return-void
.end method
