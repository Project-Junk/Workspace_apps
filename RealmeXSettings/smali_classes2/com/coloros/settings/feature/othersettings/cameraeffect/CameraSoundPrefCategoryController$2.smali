.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$2;
.super Landroid/os/Handler;
.source "CameraSoundPrefCategoryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;Landroid/os/Looper;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$2;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$2;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->access$100(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraSoundPrefCategoryController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 296
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$2;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->access$200(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$2;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->access$200(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$2;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->access$300(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method
