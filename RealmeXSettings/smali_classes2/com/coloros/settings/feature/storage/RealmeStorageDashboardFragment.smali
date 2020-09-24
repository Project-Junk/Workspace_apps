.class public Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RealmeStorageDashboardFragment.java"


# instance fields
.field private a:Landroid/os/storage/VolumeInfo;

.field private b:Lcom/android/settingslib/deviceinfo/b;

.field private c:Lcom/coloros/settings/feature/storage/controller/c;

.field private d:Lcom/coloros/settings/feature/storage/controller/a;

.field private e:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

.field private f:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment$1;-><init>(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->f:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)Lcom/coloros/settings/feature/storage/controller/a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/a;

    return-object p0
.end method

.method private synthetic a(Lcom/android/settingslib/core/a;)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private a(Lcom/android/settingslib/deviceinfo/b;)V
    .locals 6

    if-nez p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    .line 195
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    .line 2279
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/b;->b:J

    .line 2697
    iput-wide v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->a:J

    .line 2280
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/b;->a:J

    .line 3697
    iput-wide v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->b:J

    .line 2281
    iget-object p1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->n:Z

    .line 2282
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "private storage was set :  volumeBytes:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    .line 4697
    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->a:J

    .line 2283
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " freeBytes:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    .line 5697
    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->b:J

    .line 2284
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " usedBytes:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    .line 5727
    iget-wide v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->a:J

    iget-wide v4, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->b:J

    sub-long/2addr v2, v4

    .line 2285
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhoneStorageAsyncLoader"

    .line 2282
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b()V

    .line 196
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v0, p1, Lcom/android/settingslib/deviceinfo/b;->b:J

    iget-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/b;->a:J

    sub-long/2addr v0, v2

    .line 197
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/controller/c;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v2, v2, Lcom/android/settingslib/deviceinfo/b;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/coloros/settings/feature/storage/controller/c;->a(JJ)V

    .line 198
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/a;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v2, v2, Lcom/android/settingslib/deviceinfo/b;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/coloros/settings/feature/storage/controller/a;->a(JJ)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)Lcom/coloros/settings/feature/storage/controller/c;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/controller/c;

    return-object p0
.end method

.method private static synthetic b(Lcom/android/settingslib/core/a;)Z
    .locals 0

    .line 184
    instance-of p0, p0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    return p0
.end method

.method public static synthetic lambda$DB1xDLleLgI_bBhAHkQ3xQqN768(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;Lcom/android/settingslib/core/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a(Lcom/android/settingslib/core/a;)V

    return-void
.end method

.method public static synthetic lambda$JxsRBHOdwHSEz9d3q6hIj8LM2Ow(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;Lcom/android/settingslib/deviceinfo/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a(Lcom/android/settingslib/deviceinfo/b;)V

    return-void
.end method

.method public static synthetic lambda$djJ5RRJ7mlsAGT1989L3RbNRJJ4(Lcom/android/settingslib/core/a;)Z
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->b(Lcom/android/settingslib/core/a;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "RealmeStorageDashboardFrag"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v1, Lcom/coloros/settings/feature/storage/controller/c;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, v2}, Lcom/coloros/settings/feature/storage/controller/c;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/controller/c;

    .line 177
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/controller/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lcom/coloros/settings/feature/storage/controller/a;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, p0, v2}, Lcom/coloros/settings/feature/storage/controller/a;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/a;

    .line 181
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance p1, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/coloros/settings/feature/storage/-$$Lambda$RealmeStorageDashboardFragment$djJ5RRJ7mlsAGT1989L3RbNRJJ4;->INSTANCE:Lcom/coloros/settings/feature/storage/-$$Lambda$RealmeStorageDashboardFragment$djJ5RRJ7mlsAGT1989L3RbNRJJ4;

    .line 184
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/coloros/settings/feature/storage/-$$Lambda$RealmeStorageDashboardFragment$DB1xDLleLgI_bBhAHkQ3xQqN768;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$RealmeStorageDashboardFragment$DB1xDLleLgI_bBhAHkQ3xQqN768;-><init>(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)V

    .line 185
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e9

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150069

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/a;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/controller/a;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 76
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 79
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance p1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    .line 88
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->f:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    .line 1324
    iput-object v0, p1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 130
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 106
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/coloros/settings/feature/storage/-$$Lambda$RealmeStorageDashboardFragment$JxsRBHOdwHSEz9d3q6hIj8LM2Ow;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$RealmeStorageDashboardFragment$JxsRBHOdwHSEz9d3q6hIj8LM2Ow;-><init>(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)V

    .line 110
    invoke-static {p0, v0, v1, v2}, Lcom/coloros/settings/utils/ad;->a(Landroidx/lifecycle/LifecycleOwner;Landroid/os/Bundle;Landroid/content/Context;Lcom/coloros/settings/utils/ad$b;)V

    .line 116
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    const/4 v3, 0x1

    .line 117
    invoke-virtual {v0, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->highlightPreferenceForce()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    .line 95
    invoke-static {p1, p0, p2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 98
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 101
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;)Lcom/android/settings/widget/b;

    return-void
.end method
