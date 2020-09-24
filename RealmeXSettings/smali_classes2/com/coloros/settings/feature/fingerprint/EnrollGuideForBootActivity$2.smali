.class Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$2;
.super Ljava/lang/Object;
.source "EnrollGuideForBootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->showWakeUpArouseDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$2;->this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "OppoEnrollGuideForBoot"

    const-string p2, "onPositiveButton"

    .line 318
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :try_start_0
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.coloros.gesture"

    const-string v1, "com.coloros.gesture.server.ScreenOffGestureService"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 323
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$2;->this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;

    invoke-virtual {p2, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "start ScreenOffGestureService failed"

    .line 325
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$2;->this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "oppo_gesture_wake_up_arouse"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$2;->this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;

    const/4 p2, 0x0

    const-string v0, "20012"

    const-string v1, "wakeup_arouse_switch_on"

    invoke-static {p1, v0, v1, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
