.class public final Lcom/android/settings/users/b;
.super Lcom/android/settings/users/a;
.source "AutoSyncWorkDataPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/a;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 32
    iget-object p1, p0, Lcom/android/settings/users/b;->a:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/m;->b(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/b;->b:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_sync_work_account_data"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/users/b;->b:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/b;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/b;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/b;->a:Landroid/os/UserManager;

    .line 43
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
