.class final Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;
.super Ljava/lang/Object;
.source "ColorAppPermissionPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->lambda$refreshPermissionManagerPreference$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;Ljava/util/Map;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;->b:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;->b:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->access$300(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;->b:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->access$400(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;->b:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-static {v1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->access$500(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;->b:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->access$600(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;->b:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->access$600(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setVisible(Z)V

    :cond_0
    return-void
.end method
