.class public Lcom/android/settings/users/ProfileUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "profile"

    const/4 v1, 0x0

    .line 1048
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "name_copied_once"

    .line 1049
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "user"

    .line 1054
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1055
    invoke-static {p0}, Lcom/android/settings/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1056
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1057
    invoke-virtual {v3, v2, p0}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 1060
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    new-instance p2, Lcom/android/settings/users/ProfileUpdateReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/users/ProfileUpdateReceiver$1;-><init>(Lcom/android/settings/users/ProfileUpdateReceiver;Landroid/content/Context;)V

    .line 44
    invoke-virtual {p2}, Lcom/android/settings/users/ProfileUpdateReceiver$1;->start()V

    return-void
.end method
