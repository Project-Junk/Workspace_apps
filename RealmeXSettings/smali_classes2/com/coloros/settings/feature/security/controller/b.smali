.class public final Lcom/coloros/settings/feature/security/controller/b;
.super Lcom/android/settingslib/core/a;
.source "ColorEmergencyBroadcastPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/android/settings/accounts/c;

.field private c:Landroid/os/UserManager;

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/c;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p3, p0, Lcom/coloros/settings/feature/security/controller/b;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/coloros/settings/feature/security/controller/b;->b:Lcom/android/settings/accounts/c;

    const-string p2, "user"

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/b;->c:Landroid/os/UserManager;

    .line 40
    iget-object p1, p0, Lcom/coloros/settings/feature/security/controller/b;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/b;->d:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/android/settings/accounts/c;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/coloros/settings/feature/security/controller/b;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/c;Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/b;->d:Landroid/content/pm/PackageManager;

    const-string v1, "com.android.cellbroadcastreceiver"

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 76
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefControllerMixin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final isAvailable()Z
    .locals 3

    .line 64
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/coloros/settings/utils/bh;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/b;->c:Landroid/os/UserManager;

    .line 66
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/b;->b:Lcom/android/settings/accounts/c;

    .line 69
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_cell_broadcasts"

    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/accounts/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 45
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    .line 1088
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_config_cell_broadcasts"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/settings/widget/preference/a;->a(Ljava/lang/String;I)V

    return-void
.end method
