.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;
.source "ColorAppNotificationPreferenceController.java"


# static fields
.field public static final KEY_NOTIFICATION_MANAGER:Ljava/lang/String; = "key_notification_manager"

.field private static final TAG:Ljava/lang/String; = "ColorAppNotificationPreferenceController"


# instance fields
.field private mCustomizedControl:Lcom/coloros/settings/feature/appmanager/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_notification_manager"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    new-instance p1, Lcom/coloros/settings/feature/appmanager/a;

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/coloros/settings/feature/appmanager/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mCustomizedControl:Lcom/coloros/settings/feature/appmanager/a;

    return-void
.end method


# virtual methods
.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_detail_notification"

    const-string v2, "1"

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "package_name"

    .line 58
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    const-string v0, " mAppEntry="

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_2

    .line 62
    sget-object p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPreferenceClick mPackageInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mCustomizedControl:Lcom/coloros/settings/feature/appmanager/a;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1054
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.coloros.notificationmanager.app.detail"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "pkg_name"

    .line 1055
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "app_name"

    .line 1056
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uid"

    .line 1057
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    iget-object v0, p1, Lcom/coloros/settings/feature/appmanager/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1059
    iget-object p1, p1, Lcom/coloros/settings/feature/appmanager/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 67
    :cond_2
    sget-object p1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPackageInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method
