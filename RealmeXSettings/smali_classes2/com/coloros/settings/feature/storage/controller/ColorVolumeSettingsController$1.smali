.class final Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;
.super Ljava/lang/Object;
.source "ColorVolumeSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "ColorVolumeSettingsController"

    .line 164
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->a(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 170
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;

    iget-object v2, v2, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isUsbDevice unmount path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;

    iget-object v2, v2, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b:Landroid/os/storage/VolumeInfo;

    .line 173
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->c(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/b/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 177
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 178
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v5, v4, :cond_3

    const/4 v5, 0x3

    if-ne v5, v4, :cond_2

    .line 181
    :cond_3
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unmount path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
