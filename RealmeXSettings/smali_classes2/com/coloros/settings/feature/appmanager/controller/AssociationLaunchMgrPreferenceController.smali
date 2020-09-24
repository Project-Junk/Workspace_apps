.class public Lcom/coloros/settings/feature/appmanager/controller/AssociationLaunchMgrPreferenceController;
.super Lcom/android/settings/core/a;
.source "AssociationLaunchMgrPreferenceController.java"


# static fields
.field private static final KEY_ASSOCIATION_LAUNCH_MGR:Ljava/lang/String; = "association_launch_manager"


# instance fields
.field private mHost:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "association_launch_manager"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/controller/AssociationLaunchMgrPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 38
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/AssociationLaunchMgrPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "association_launch_manager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.coloros.safecenter.permission.startup.AssociateStartActivity"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/AssociationLaunchMgrPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
