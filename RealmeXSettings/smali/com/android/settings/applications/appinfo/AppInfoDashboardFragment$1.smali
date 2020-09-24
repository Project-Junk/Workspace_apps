.class final Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppInfoDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 691
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-boolean p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f:Z

    if-eqz p1, :cond_0

    return-void

    .line 694
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mPackageRemovedReceiver action:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppInfoDashboard"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 697
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 699
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 701
    :cond_1
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isResourceOverlay()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 702
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 703
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b()Z

    :cond_2
    return-void

    .line 700
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->a:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    return-void
.end method
