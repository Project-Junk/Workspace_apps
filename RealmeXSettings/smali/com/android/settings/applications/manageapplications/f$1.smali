.class final Lcom/android/settings/applications/manageapplications/f$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/f;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/manageapplications/f;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/f;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/f;->a(Lcom/android/settings/applications/manageapplications/f;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 116
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 117
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 119
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/f;->b(Lcom/android/settings/applications/manageapplications/f;)Landroid/app/INotificationManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v5, v6, v7, v1}, Landroid/app/INotificationManager;->clearData(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    iget-boolean v5, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_0

    .line 123
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/f;->a(Lcom/android/settings/applications/manageapplications/f;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 125
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/f;->a(Lcom/android/settings/applications/manageapplications/f;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3, v1, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/f;->c(Lcom/android/settings/applications/manageapplications/f;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :catch_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/f;->d(Lcom/android/settings/applications/manageapplications/f;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/f;->e(Lcom/android/settings/applications/manageapplications/f;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 138
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 139
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget v5, v0, v4

    .line 141
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, v2, :cond_2

    .line 142
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/f$1;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/f;->e(Lcom/android/settings/applications/manageapplications/f;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
