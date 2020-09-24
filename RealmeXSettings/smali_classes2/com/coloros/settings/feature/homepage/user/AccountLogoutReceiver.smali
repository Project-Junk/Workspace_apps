.class public Lcom/coloros/settings/feature/homepage/user/AccountLogoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountLogoutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "cached_uc_user_name"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "CACHED_UC_AVATAR_PATH"

    .line 36
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "cached_uc_account_name"

    .line 37
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic lambda$NBkrWKftwqtuu72kxv0bMYwF49o(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/homepage/user/AccountLogoutReceiver;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onReceive: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AccountLogoutReceiver"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p2, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$AccountLogoutReceiver$NBkrWKftwqtuu72kxv0bMYwF49o;

    invoke-direct {p2, p1}, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$AccountLogoutReceiver$NBkrWKftwqtuu72kxv0bMYwF49o;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 42
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 43
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "usercenter.account_logout"

    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
