.class final Lcom/coloros/settings/feature/face/FaceSettingsController$8;
.super Ljava/lang/Object;
.source "FaceSettingsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/face/FaceSettingsController;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/FaceSettingsController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$8;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 663
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$8;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Lcom/coloros/settings/feature/face/FaceSettingsController;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 666
    :try_start_0
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.coloros.gesture"

    const-string v0, "com.coloros.gesture.server.ScreenOffGestureService"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 668
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 669
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$8;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Lcom/coloros/settings/feature/face/FaceSettingsController;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FaceSettingsController"

    const-string p2, "start ScreenOffGestureService failed"

    .line 671
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$8;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Lcom/coloros/settings/feature/face/FaceSettingsController;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "oppo_gesture_wake_up_arouse"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 675
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$8;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Lcom/coloros/settings/feature/face/FaceSettingsController;)Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "20012"

    const-string v1, "wakeup_arouse_switch_on"

    invoke-static {p1, v0, v1, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
