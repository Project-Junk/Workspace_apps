.class final Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceNameEditDialogPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->access$000(Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;)V

    :cond_0
    return-void
.end method
