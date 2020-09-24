.class public final Lcom/android/settings/users/f;
.super Ljava/lang/Object;
.source "UserCapabilities.java"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field public e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Lcom/android/settingslib/g$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/users/f;->a:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/users/f;->b:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/users/f;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settings/users/f;
    .locals 4

    const-string v0, "user"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 49
    new-instance v1, Lcom/android/settings/users/f;

    invoke-direct {v1}, Lcom/android/settings/users/f;-><init>()V

    .line 51
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/settings/users/f;->e:Z

    .line 58
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/users/f;->d:Z

    const-string v0, "device_policy"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 62
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    :cond_1
    iput-boolean v3, v1, Lcom/android/settings/users/f;->c:Z

    .line 65
    :cond_2
    invoke-virtual {v1, p0}, Lcom/android/settings/users/f;->b(Landroid/content/Context;)V

    return-object v1

    .line 52
    :cond_3
    :goto_0
    iput-boolean v3, v1, Lcom/android/settings/users/f;->a:Z

    return-object v1
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 5

    const-string v0, "user"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 73
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_add_user"

    .line 72
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/f;->k:Lcom/android/settingslib/g$a;

    .line 75
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 74
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 76
    iget-object v2, p0, Lcom/android/settings/users/f;->k:Lcom/android/settingslib/g$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/users/f;->i:Z

    .line 77
    iget-object v2, p0, Lcom/android/settings/users/f;->k:Lcom/android/settingslib/g$a;

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/users/f;->h:Z

    .line 78
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/f;->f:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/settings/users/f;->b:Z

    .line 80
    iget-boolean v1, p0, Lcom/android/settings/users/f;->d:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 81
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/users/f;->h:Z

    if-eqz v1, :cond_4

    .line 83
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/users/f;->b:Z

    .line 86
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/users/f;->d:Z

    if-nez v1, :cond_5

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "add_users_when_locked"

    .line 86
    invoke-static {p1, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 90
    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/users/f;->e:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/settings/users/f;->h:Z

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/users/f;->g:Z

    const-string p1, "no_user_switch"

    .line 93
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/f;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserCapabilities{mEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/users/f;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddRestrictedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnforcedAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/users/f;->k:Lcom/android/settingslib/g$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowSwitchUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowAddUserSetByAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserSwitcherEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
