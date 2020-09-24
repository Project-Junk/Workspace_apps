.class public Lcom/coloros/settings/receiver/OppoSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OppoSettingsReceiver.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/coloros/settings/receiver/OppoSettingsReceiver;->a:Z

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/coloros/settings/receiver/OppoSettingsReceiver;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dzc OppoSettingsReceiver action "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoSettingsReceiver"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-static {p1}, Lcom/coloros/settings/receiver/OppoSettingsReceiver;->a(Landroid/content/Context;)V

    .line 94
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.coloros.settings.service.BootCompletedService"

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_extra"

    .line 97
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_class_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    const-string v1, "default_location_changed"

    .line 1057
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "location_changed"

    .line 1058
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 103
    invoke-static {p1}, Lcom/coloros/settings/utils/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/receiver/OppoSettingsReceiver;->b:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/receiver/OppoSettingsReceiver;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.emmc.low.capacity"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/receiver/OppoSettingsReceiver;->a:Z

    .line 107
    iget-boolean v0, p0, Lcom/coloros/settings/receiver/OppoSettingsReceiver;->a:Z

    if-eqz v0, :cond_6

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, "default_install_location"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string v0, "oppo.intent.action.OPPO_DCS_PERIOD_UPLOAD"

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/am;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    invoke-static {p1}, Lcom/coloros/settings/receiver/OppoSettingsReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string p1, "oppo.intent.action.DCS_INIT_PERIOD_STATIC_DATA"

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "onReceive: action: DCS_ACTION_INIT_PERIOD_STATIC_DATA"

    .line 122
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/coloros/settings/statistics/DcsUploadJobService;->a()V

    :cond_6
    :goto_0
    const-string p1, "com.coloros.bootreg"

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 127
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->a()V

    :cond_7
    return-void
.end method
