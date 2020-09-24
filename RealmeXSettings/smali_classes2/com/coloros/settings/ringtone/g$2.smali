.class final Lcom/coloros/settings/ringtone/g$2;
.super Ljava/lang/Object;
.source "RuntimePermissionAlert.java"

# interfaces
.implements Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/g;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/coloros/settings/ringtone/g;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/g;Landroid/app/Activity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/coloros/settings/ringtone/g$2;->b:Lcom/coloros/settings/ringtone/g;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/g$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(IZ)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/ringtone/g$2;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "local_config"

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "cta_dialog_should_show"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    iget-object p1, p0, Lcom/coloros/settings/ringtone/g$2;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/coloros/settings/ringtone/g$2;->a:Landroid/app/Activity;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    const-string v1, "com.android.settings"

    if-eqz p2, :cond_0

    .line 130
    sget-object p2, Lcom/color/compat/os/UserHandleNative;->OWNER:Landroid/os/UserHandle;

    invoke-static {p1, v1, v0, p2}, Lcom/color/compat/content/pm/PackageManagerNative;->grantRuntimePermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 133
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/ringtone/g$2;->a:Landroid/app/Activity;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    sget-object p2, Lcom/color/compat/os/UserHandleNative;->OWNER:Landroid/os/UserHandle;

    invoke-static {p1, v1, v0, p2}, Lcom/color/compat/content/pm/PackageManagerNative;->grantRuntimePermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/ringtone/g$2;->b:Lcom/coloros/settings/ringtone/g;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/coloros/settings/ringtone/g;->a:Z

    .line 1037
    iget-object p1, p1, Lcom/coloros/settings/ringtone/g;->b:Lcom/coloros/settings/ringtone/g$a;

    if-eqz p1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/coloros/settings/ringtone/g$2;->b:Lcom/coloros/settings/ringtone/g;

    .line 2037
    iget-object p1, p1, Lcom/coloros/settings/ringtone/g;->b:Lcom/coloros/settings/ringtone/g$a;

    .line 140
    invoke-interface {p1}, Lcom/coloros/settings/ringtone/g$a;->a()V

    :cond_2
    return-void

    :cond_3
    const/4 p2, -0x2

    if-ne p1, p2, :cond_4

    .line 143
    iget-object p1, p0, Lcom/coloros/settings/ringtone/g$2;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method
