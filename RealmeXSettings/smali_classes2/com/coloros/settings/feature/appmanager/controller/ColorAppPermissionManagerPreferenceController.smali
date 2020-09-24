.class public Lcom/coloros/settings/feature/appmanager/controller/ColorAppPermissionManagerPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorAppPermissionManagerPreferenceController.java"


# static fields
.field private static final KEY_APP_PERMISSION:Ljava/lang/String; = "app_permission"

.field private static final TAG:Ljava/lang/String; = "ColorAppPermissionManagerPreferenceController"


# instance fields
.field private mHost:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "app_permission"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppPermissionManagerPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private startPermissionControllerActivity()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppPermissionManagerPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oppo.safe.permission.PermissionManagerActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.coloros.securitypermission"

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppPermissionManagerPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppPermissionManagerPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_permission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/controller/ColorAppPermissionManagerPreferenceController;->startPermissionControllerActivity()V

    const/4 p1, 0x1

    return p1

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
