.class public Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppPermissionPreferenceController.java"


# static fields
.field private static final EXTRA_HIDE_INFO_BUTTON:Ljava/lang/String; = "hideInfoButton"

.field private static final TAG:Ljava/lang/String; = "PermissionPrefControl"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field protected final mPermissionCallback:Lcom/android/settingslib/applications/d$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    new-instance p1, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/d$a;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private startManagePermissionsActivity()V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 105
    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "hideInfoButton"

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "PermissionPrefControl"

    const-string v1, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected doAfterPermissionCallback(IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->startManagePermissionsActivity()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/d$a;

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/applications/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/d$a;)V

    return-void
.end method
