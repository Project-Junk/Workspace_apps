.class public final Lcom/color/darkmode/romupdate/RomUpdateReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "ROM_UPDATE_CONFIG_LIST"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "sys_darkmode_managed_list"

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v0, "RomUpdateReceiver onReceive openAppList"

    invoke-virtual {p2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    sget-object p2, Lcom/color/darkmode/romupdate/RomUpdateUtils;->INSTANCE:Lcom/color/darkmode/romupdate/RomUpdateUtils;

    invoke-virtual {p2, p1}, Lcom/color/darkmode/romupdate/RomUpdateUtils;->updateData(Landroid/content/Context;)V

    :cond_2
    const-string p2, "sys_darkmode_hidden_list"

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p2, "RomUpdateReceiver onReceive hiddenAppList"

    invoke-virtual {p0, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    sget-object p0, Lcom/color/darkmode/romupdate/RomUpdateUtils;->INSTANCE:Lcom/color/darkmode/romupdate/RomUpdateUtils;

    invoke-virtual {p0, p1}, Lcom/color/darkmode/romupdate/RomUpdateUtils;->hideApp(Landroid/content/Context;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
