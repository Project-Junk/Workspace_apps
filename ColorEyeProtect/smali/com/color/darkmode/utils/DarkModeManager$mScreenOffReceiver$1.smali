.class public final Lcom/color/darkmode/utils/DarkModeManager$mScreenOffReceiver$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/darkmode/utils/DarkModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-eqz p1, :cond_0

    sget-object p2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v0, "mScreenOffReceiver-->updateDarkModeByTime"

    invoke-virtual {p2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeByTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZZILjava/lang/Object;)V

    sget-object p2, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    invoke-static {p2}, Lcom/color/darkmode/utils/DarkModeManager;->access$getMIsScreenOffReceiverRegistered$p(Lcom/color/darkmode/utils/DarkModeManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/color/darkmode/utils/DarkModeManager;->access$setMIsScreenOffReceiverRegistered$p(Lcom/color/darkmode/utils/DarkModeManager;Z)V

    :cond_0
    return-void
.end method
