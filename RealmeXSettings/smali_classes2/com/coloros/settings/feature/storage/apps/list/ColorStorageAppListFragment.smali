.class public Lcom/coloros/settings/feature/storage/apps/list/ColorStorageAppListFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorStorageAppListFragment.java"


# instance fields
.field private a:Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorStorageAppListFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorStorageAppListFragment;->a:Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorStorageAppListFragment;->a:Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e9

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150068

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    const-string p2, "result_bundle"

    .line 72
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "ColorStorageAppListFragment"

    if-nez p2, :cond_2

    const-string p1, "b is null return"

    .line 74
    invoke-static {p3, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "operation_type"

    .line 77
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "package_name"

    .line 78
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "operation_remain_storage"

    .line 80
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    if-eq v0, p1, :cond_5

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x6e

    if-ne v0, p1, :cond_4

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorStorageAppListFragment;->a:Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->a(Lcom/coloros/settings/feature/storage/apps/usage/b;)V

    return-void

    :cond_4
    const/16 p1, 0x6f

    if-ne v0, p1, :cond_5

    .line 88
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/list/ColorStorageAppListFragment;->a:Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;

    .line 1178
    iget-object p3, p1, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->b:Lcom/coloros/settings/feature/storage/a;

    .line 1261
    iget-object v0, p2, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/coloros/settings/feature/storage/a;->a(Ljava/lang/String;)V

    .line 1179
    iget-object p3, p1, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->c:Ljava/util/Map;

    iget-object p2, p2, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;

    if-eqz p2, :cond_5

    .line 1181
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/list/ColorAppListController;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    nop

    :cond_5
    :goto_0
    return-void
.end method
