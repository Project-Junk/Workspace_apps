.class public Lcom/coloros/settings/feature/appmanager/controller/FloatingWindowMgrPreferenceController;
.super Lcom/android/settings/core/a;
.source "FloatingWindowMgrPreferenceController.java"


# static fields
.field private static final KEY_FLOATING_WINDOW_MANAGER:Ljava/lang/String; = "floating_window_manager"


# instance fields
.field private mHost:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "floating_window_manager"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/controller/FloatingWindowMgrPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

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

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/FloatingWindowMgrPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "floating_window_manager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-string v0, "action.coloros.safecenter.FloatWindowListActivity"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/FloatingWindowMgrPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
