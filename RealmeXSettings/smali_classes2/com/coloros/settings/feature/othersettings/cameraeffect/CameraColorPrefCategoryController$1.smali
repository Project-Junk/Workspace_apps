.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraColorPrefCategoryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive: action = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraColorPrefCategoryController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action.UPDATE_RANDOM_COLOR_SWITCH"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "extra_status"

    .line 159
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 160
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;->access$000(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPrefCategoryController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
