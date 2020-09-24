.class final Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;
.super Ljava/lang/Object;
.source "TimePowerPhoneStateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    const-string v1, "activity"

    .line 47
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 49
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pkg:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",cls ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ReceiverPhoneStateService"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v4}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->a(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.incallui"

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.android.incallui.OppoInCallActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    .line 59
    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    .line 60
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v3}, Lcom/coloros/settings/utils/al;->al(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    .line 61
    invoke-static {v3}, Lcom/coloros/settings/utils/al;->am(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_3

    .line 63
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->d(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Landroid/telephony/ColorOSTelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 64
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v3}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->e(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/telephony/ColorOSTelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_2

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->d(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$a;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/telephony/ColorOSTelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 68
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    .line 69
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_3
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->stopSelf()V

    return-void

    .line 54
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->c(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->b(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->c(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService$1;->a:Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;->b(Lcom/coloros/settings/feature/othersettings/timepower/TimePowerPhoneStateService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
