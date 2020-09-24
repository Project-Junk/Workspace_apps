.class final Lcom/coloros/settings/service/BootCompletedService$1;
.super Ljava/lang/Object;
.source "BootCompletedService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/service/BootCompletedService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/coloros/settings/service/BootCompletedService;


# direct methods
.method constructor <init>(Lcom/coloros/settings/service/BootCompletedService;Landroid/content/Intent;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    iput-object p2, p0, Lcom/coloros/settings/service/BootCompletedService$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->a:Landroid/content/Intent;

    const-string v1, "action_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/coloros/settings/service/BootCompletedService$1;->a:Landroid/content/Intent;

    const-string v2, "extra_class_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v2, v0}, Lcom/coloros/settings/service/BootCompletedService;->a(Lcom/coloros/settings/service/BootCompletedService;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v2, v1}, Lcom/coloros/settings/service/BootCompletedService;->b(Lcom/coloros/settings/service/BootCompletedService;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",className = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootCompletedService"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 1033
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "third_led_lights"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 1037
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "screensaver_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 1041
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->o(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1045
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_restore"

    .line 1044
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 1048
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "accelerometer_rotation"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1050
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 1056
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oppo_breath_led_low_power"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1058
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oppo_breath_led_charge"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 1063
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "skip_swipe_screen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 1068
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "auto_clear_swith"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 1073
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1075
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1076
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 1082
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_osie_iris5_first_set"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 1083
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "isFirst state:"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConfigChangeManager"

    invoke-static {v6, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_4

    const-string v0, "is not first"

    .line 1085
    invoke-static {v6, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1088
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1089
    invoke-static {v0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1090
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;Z)V

    .line 1091
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;Z)Z

    .line 1092
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;Z)Z

    .line 1093
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;I)Z

    .line 72
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v0}, Lcom/coloros/settings/b/a;->a(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Z)V

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v0}, Lcom/coloros/settings/service/BootCompletedService;->a(Lcom/coloros/settings/service/BootCompletedService;)V

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    invoke-static {v0}, Lcom/coloros/settings/service/BootCompletedService;->e(Lcom/coloros/settings/service/BootCompletedService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/service/BootCompletedService$1$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/service/BootCompletedService$1$1;-><init>(Lcom/coloros/settings/service/BootCompletedService$1;)V

    iget-object v2, p0, Lcom/coloros/settings/service/BootCompletedService$1;->b:Lcom/coloros/settings/service/BootCompletedService;

    .line 85
    invoke-static {v2}, Lcom/coloros/settings/service/BootCompletedService;->d(Lcom/coloros/settings/service/BootCompletedService;)I

    move-result v2

    int-to-long v2, v2

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
