.class public Lcom/android/settings/deviceinfo/StorageProfileFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageProfileFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/storage/VolumeInfo;

.field private b:I

.field private c:Lcom/android/settings/deviceinfo/storage/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "StorageProfileFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 103
    new-instance v8, Lcom/android/settings/deviceinfo/storage/c;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->a:Landroid/os/storage/VolumeInfo;

    new-instance v6, Lcom/android/settingslib/deviceinfo/c;

    invoke-direct {v6, v1}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/storage/c;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/e;B)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->c:Lcom/android/settings/deviceinfo/storage/c;

    .line 110
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->c:Lcom/android/settings/deviceinfo/storage/c;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x34d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15011e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 66
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 67
    invoke-static {v0, p1}, Lcom/android/settings/m;->a(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->a:Landroid/os/storage/VolumeInfo;

    .line 68
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->a:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->c:Lcom/android/settings/deviceinfo/storage/c;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroid/os/storage/VolumeInfo;)V

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->b:I

    .line 75
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->c:Lcom/android/settings/deviceinfo/storage/c;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->b:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p1, Lcom/android/settings/deviceinfo/storage/c;->a:I

    .line 1211
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/c;->d:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroidx/preference/Preference;)V

    .line 1212
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/c;->g:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroidx/preference/Preference;)V

    .line 1213
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/c;->e:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroidx/preference/Preference;)V

    .line 1214
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/c;->f:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroidx/preference/Preference;)V

    .line 1215
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/c;->h:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroidx/preference/Preference;)V

    .line 1216
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/c;->j:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroidx/preference/Preference;)V

    .line 1217
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/c;->i:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;",
            ">;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 117
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    const-class p2, Landroid/os/UserManager;

    .line 118
    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/UserManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->a:Landroid/os/storage/VolumeInfo;

    iget-object v3, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/applications/f;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/f;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .line 49
    check-cast p2, Landroid/util/SparseArray;

    .line 2127
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->c:Lcom/android/settings/deviceinfo/storage/c;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->b:I

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroid/util/SparseArray;I)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 80
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method
