.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action.CAMERA_MOTOR_START"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;->access$000(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraSoundPrefCategoryController;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
