.class public final Lcom/color/darkmode/utils/DarkModeManager$mIntentTimeReceiver$1;
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
    .locals 6

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.TIME_SET"

    invoke-static {p2, p0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-static {p2, p0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-static {p2, p0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_TIME action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/color/darkmode/utils/DarkModeManager;->updateDarkModeByTime$default(Lcom/color/darkmode/utils/DarkModeManager;Landroid/content/Context;ZZILjava/lang/Object;)V

    :cond_1
    return-void
.end method
