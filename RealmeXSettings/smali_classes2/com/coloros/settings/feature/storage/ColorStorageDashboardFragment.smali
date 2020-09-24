.class public Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorStorageDashboardFragment.java"

# interfaces
.implements Lcom/coloros/settings/feature/storage/a$b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/os/storage/VolumeInfo;

.field private b:Lcom/android/settingslib/deviceinfo/b;

.field private c:Lcom/coloros/settings/feature/storage/a;

.field private d:Lcom/coloros/settings/feature/storage/controller/c;

.field private e:Lcom/coloros/settings/feature/storage/controller/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/core/a;)V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private a(Lcom/android/settingslib/deviceinfo/b;)V
    .locals 6

    if-nez p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    .line 196
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v0, p1, Lcom/android/settingslib/deviceinfo/b;->b:J

    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/b;->a:J

    sub-long/2addr v0, v2

    .line 197
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/c;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v2, v2, Lcom/android/settingslib/deviceinfo/b;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/coloros/settings/feature/storage/controller/c;->a(JJ)V

    .line 198
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/controller/a;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v2, v2, Lcom/android/settingslib/deviceinfo/b;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/coloros/settings/feature/storage/controller/a;->a(JJ)V

    .line 199
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/a;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v2, v2, Lcom/android/settingslib/deviceinfo/b;->b:J

    .line 5096
    iget-wide v4, p1, Lcom/coloros/settings/feature/storage/a;->b:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-wide v4, p1, Lcom/coloros/settings/feature/storage/a;->c:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 5097
    :cond_1
    iput-wide v0, p1, Lcom/coloros/settings/feature/storage/a;->b:J

    .line 5098
    iput-wide v2, p1, Lcom/coloros/settings/feature/storage/a;->c:J

    .line 5099
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/a;->e:Landroid/util/SparseLongArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 5100
    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/a;->b()V

    :cond_2
    return-void
.end method

.method private static synthetic b(Lcom/android/settingslib/core/a;)Z
    .locals 0

    .line 173
    instance-of p0, p0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    return p0
.end method

.method public static synthetic lambda$8ujJTNldt5aL5LzCw6yYlGmKWVk(Lcom/android/settingslib/core/a;)Z
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->b(Lcom/android/settingslib/core/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$SZUGeOPEn05GET6UGnkVhLvvv48(Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;Lcom/android/settingslib/deviceinfo/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->a(Lcom/android/settingslib/deviceinfo/b;)V

    return-void
.end method

.method public static synthetic lambda$q186ZX71h6F4ZWc_6SAAtgCvCWE(Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;Lcom/android/settingslib/core/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->a(Lcom/android/settingslib/core/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "StorageDashboardFrag"

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

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v1, Lcom/coloros/settings/feature/storage/controller/c;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, v2}, Lcom/coloros/settings/feature/storage/controller/c;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/c;

    .line 166
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Lcom/coloros/settings/feature/storage/controller/a;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, p0, v2}, Lcom/coloros/settings/feature/storage/controller/a;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/controller/a;

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance p1, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/coloros/settings/feature/storage/-$$Lambda$ColorStorageDashboardFragment$8ujJTNldt5aL5LzCw6yYlGmKWVk;->INSTANCE:Lcom/coloros/settings/feature/storage/-$$Lambda$ColorStorageDashboardFragment$8ujJTNldt5aL5LzCw6yYlGmKWVk;

    .line 173
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/coloros/settings/feature/storage/-$$Lambda$ColorStorageDashboardFragment$q186ZX71h6F4ZWc_6SAAtgCvCWE;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$ColorStorageDashboardFragment$q186ZX71h6F4ZWc_6SAAtgCvCWE;-><init>(Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;)V

    .line 174
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(IJ)V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/controller/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/controller/a;->a(IJ)V

    const/16 p2, 0x12

    const/16 p3, 0x13

    if-ne p1, p3, :cond_1

    .line 182
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->d:Lcom/coloros/settings/feature/storage/controller/c;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/a;

    .line 4105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4106
    invoke-static {}, Lcom/coloros/settings/feature/storage/c;->a()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 4107
    invoke-virtual {v0, v5}, Lcom/coloros/settings/feature/storage/a;->a(I)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    .line 4109
    invoke-virtual {v0, v2}, Lcom/coloros/settings/feature/storage/a;->a(I)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4110
    invoke-virtual {v0, p2}, Lcom/coloros/settings/feature/storage/a;->a(I)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4111
    invoke-virtual {v0, p3}, Lcom/coloros/settings/feature/storage/a;->a(I)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x15

    .line 4112
    invoke-virtual {v0, p2}, Lcom/coloros/settings/feature/storage/a;->a(I)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/storage/controller/c;->a(Ljava/util/List;)V

    return-void

    :cond_1
    if-ne p1, p2, :cond_2

    .line 184
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/controller/a;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/a;

    .line 4194
    iget-object p2, p2, Lcom/coloros/settings/feature/storage/a;->f:Ljava/util/ArrayList;

    .line 4298
    iput-object p2, p1, Lcom/coloros/settings/feature/storage/controller/a;->a:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ac5

    return v0
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

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->e:Lcom/coloros/settings/feature/storage/controller/a;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/controller/a;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 66
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 69
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcom/coloros/settings/feature/storage/a;->a()Lcom/coloros/settings/feature/storage/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/a;

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/a;

    .line 1074
    iput-object p0, p1, Lcom/coloros/settings/feature/storage/a;->i:Lcom/coloros/settings/feature/storage/a$b;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/a;

    .line 3148
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/a;->h:Lcom/coloros/settings/feature/storage/apps/usage/a;

    if-eqz v1, :cond_0

    .line 3149
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/a;->h:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a()V

    :cond_0
    const/4 v1, 0x0

    .line 3151
    iput-object v1, v0, Lcom/coloros/settings/feature/storage/a;->i:Lcom/coloros/settings/feature/storage/a$b;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 8

    .line 96
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/coloros/settings/feature/storage/-$$Lambda$ColorStorageDashboardFragment$SZUGeOPEn05GET6UGnkVhLvvv48;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$ColorStorageDashboardFragment$SZUGeOPEn05GET6UGnkVhLvvv48;-><init>(Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;)V

    .line 100
    invoke-static {p0, v0, v1, v2}, Lcom/coloros/settings/utils/ad;->a(Landroidx/lifecycle/LifecycleOwner;Landroid/os/Bundle;Landroid/content/Context;Lcom/coloros/settings/utils/ad$b;)V

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->c:Lcom/coloros/settings/feature/storage/a;

    .line 2124
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/a;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 2125
    sget v1, Lcom/coloros/settings/utils/bk;->a:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settings/feature/storage/a;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    const-wide/16 v1, 0x0

    .line 1131
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a;->d:J

    .line 1132
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/a;->e:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    const-wide/16 v1, -0x1

    .line 1133
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a;->b:J

    .line 1134
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a;->c:J

    const/4 v1, 0x0

    .line 1135
    iput-object v1, v0, Lcom/coloros/settings/feature/storage/a;->f:Ljava/util/ArrayList;

    .line 1137
    invoke-static {}, Lcom/coloros/settings/feature/storage/c;->a()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 1138
    iget-object v6, v0, Lcom/coloros/settings/feature/storage/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/coloros/settings/feature/storage/a$a;

    invoke-direct {v7, v0, v5}, Lcom/coloros/settings/feature/storage/a$a;-><init>(Lcom/coloros/settings/feature/storage/a;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/a;->h:Lcom/coloros/settings/feature/storage/apps/usage/a;

    iget-object v2, v0, Lcom/coloros/settings/feature/storage/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 3117
    iput-object v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 1141
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/a;->h:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 3121
    iget-boolean v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/a;->e:Z

    if-eqz v1, :cond_2

    .line 1142
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/a;->h:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a()V

    .line 1144
    :cond_2
    iget-object v0, v0, Lcom/coloros/settings/feature/storage/a;->h:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 3125
    iget-boolean v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->e:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 3126
    iput-boolean v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->e:Z

    .line 3127
    iput-boolean v3, v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->d:Z

    .line 3128
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_3

    .line 3129
    sget v1, Lcom/coloros/settings/utils/bk;->a:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 3131
    :cond_3
    iget-object v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/coloros/settings/feature/storage/apps/usage/a$d;

    invoke-direct {v2, v0, v3}, Lcom/coloros/settings/feature/storage/apps/usage/a$d;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->highlightPreferenceForce()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    .line 85
    invoke-static {p1, p0, p2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 91
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;)Lcom/android/settings/widget/b;

    return-void
.end method
