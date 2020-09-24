.class public Lcom/coloros/settings/feature/appmanager/controller/DefaultAppManagerPreferenceController;
.super Lcom/android/settings/core/a;
.source "DefaultAppManagerPreferenceController.java"


# static fields
.field public static final KEY_DEFAULT_APP_MGR:Ljava/lang/String; = "default_apps_manager"

.field private static final TAG:Ljava/lang/String; = "DefaultAppManagerPreferenceController"


# instance fields
.field private mHost:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "default_apps_manager"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/controller/DefaultAppManagerPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/DefaultAppManagerPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_apps_manager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :try_start_0
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.permissioncontroller"

    const-string v3, "com.android.packageinstaller.role.ui.DefaultAppListActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.coloros.safecenter.DefaultAppListActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/controller/DefaultAppManagerPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string v0, "DefaultAppManagerPreferenceController"

    const-string v1, "handlePreferenceTreeClick: start activity failed."

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
