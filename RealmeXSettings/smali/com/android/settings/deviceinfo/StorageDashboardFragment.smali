.class public Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;,
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/os/storage/VolumeInfo;

.field private b:Lcom/android/settingslib/deviceinfo/b;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/android/settings/deviceinfo/storage/a;

.field private e:Lcom/android/settings/deviceinfo/storage/d;

.field private f:Lcom/android/settings/deviceinfo/storage/c;

.field private g:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    new-instance v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settingslib/deviceinfo/b;)Lcom/android/settingslib/deviceinfo/b;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method private c()V
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 143
    iget-wide v2, v0, Lcom/android/settingslib/deviceinfo/b;->b:J

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v4, v0, Lcom/android/settingslib/deviceinfo/b;->a:J

    sub-long/2addr v2, v4

    .line 144
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->e:Lcom/android/settings/deviceinfo/storage/d;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v4, v4, Lcom/android/settingslib/deviceinfo/b;->b:J

    .line 5100
    iput-wide v2, v0, Lcom/android/settings/deviceinfo/storage/d;->a:J

    .line 5101
    iput-wide v4, v0, Lcom/android/settings/deviceinfo/storage/d;->b:J

    .line 6078
    iget-object v4, v0, Lcom/android/settings/deviceinfo/storage/d;->c:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    if-eqz v4, :cond_0

    .line 6079
    iget-object v4, v0, Lcom/android/settings/deviceinfo/storage/d;->c:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/deviceinfo/storage/d;->updateState(Landroidx/preference/Preference;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->f:Lcom/android/settings/deviceinfo/storage/c;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v4}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroid/os/storage/VolumeInfo;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->f:Lcom/android/settings/deviceinfo/storage/c;

    .line 6294
    iput-wide v2, v0, Lcom/android/settings/deviceinfo/storage/c;->b:J

    .line 147
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v2, v2, Lcom/android/settingslib/deviceinfo/b;->b:J

    .line 6298
    iput-wide v2, v0, Lcom/android/settings/deviceinfo/storage/c;->c:J

    .line 148
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/a;

    .line 150
    instance-of v4, v3, Lcom/android/settings/deviceinfo/storage/b;

    if-eqz v4, :cond_1

    .line 151
    check-cast v3, Lcom/android/settings/deviceinfo/storage/b;

    .line 152
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    iget-wide v4, v4, Lcom/android/settingslib/deviceinfo/b;->b:J

    .line 7163
    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/b;->a:J

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    return-void

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->f:Lcom/android/settings/deviceinfo/storage/c;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/deviceinfo/storage/c;->a(Landroid/util/SparseArray;I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c:Landroid/util/SparseArray;

    .line 7213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_5

    .line 7214
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/core/a;

    .line 7215
    instance-of v6, v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$b;

    if-eqz v6, :cond_4

    .line 7216
    check-cast v5, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$b;

    .line 7218
    invoke-interface {v5, v2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$b;->a(Landroid/util/SparseArray;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a03b6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setLoading(ZZ)V

    :cond_6
    return-void
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->d()V

    return-void
.end method

.method private d()V
    .locals 7

    .line 330
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->d:Lcom/android/settings/deviceinfo/storage/a;

    .line 332
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;

    .line 8136
    iget-object v3, v2, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    .line 8137
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/settingslib/deviceinfo/b;->a:J

    const-string v6, "free_bytes"

    .line 8138
    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/settingslib/deviceinfo/b;->b:J

    const-string/jumbo v0, "total_bytes"

    .line 8139
    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    const-string v5, "game_apps_size"

    .line 8140
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->b:J

    const-string v5, "music_apps_size"

    .line 8141
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->d:J

    const-string/jumbo v5, "video_apps_size"

    .line 8142
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->c:J

    const-string v5, "photo_apps_size"

    .line 8143
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->e:J

    const-string v5, "other_apps_size"

    .line 8144
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->f:J

    const-string v5, "cache_apps_size"

    .line 8145
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v3, Lcom/android/settingslib/applications/f$c;->a:J

    const-string v5, "external_total_bytes"

    .line 8146
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v3, Lcom/android/settingslib/applications/f$c;->b:J

    const-string v5, "external_audio_bytes"

    .line 8147
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v3, Lcom/android/settingslib/applications/f$c;->c:J

    const-string v5, "external_video_bytes"

    .line 8148
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v3, Lcom/android/settingslib/applications/f$c;->d:J

    const-string v5, "external_image_bytes"

    .line 8149
    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    iget-wide v3, v1, Lcom/android/settingslib/applications/f$c;->e:J

    const-string v1, "external_apps_bytes"

    .line 8150
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, v2, Lcom/android/settings/deviceinfo/storage/a;->b:I

    const-string/jumbo v2, "user_id"

    .line 8151
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_query_timestamp"

    .line 8152
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "StorageDashboardFrag"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v1, Lcom/android/settings/deviceinfo/storage/d;

    invoke-direct {v1, p1}, Lcom/android/settings/deviceinfo/storage/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->e:Lcom/android/settings/deviceinfo/storage/d;

    .line 189
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->e:Lcom/android/settings/deviceinfo/storage/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 192
    new-instance v2, Lcom/android/settings/deviceinfo/storage/c;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    new-instance v4, Lcom/android/settingslib/deviceinfo/c;

    invoke-direct {v4, v1}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    invoke-direct {v2, p1, p0, v3, v4}, Lcom/android/settings/deviceinfo/storage/c;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/e;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->f:Lcom/android/settings/deviceinfo/storage/c;

    .line 194
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->f:Lcom/android/settings/deviceinfo/storage/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 197
    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/storage/b;->a(Landroid/content/Context;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->h:Ljava/util/List;

    .line 198
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
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

    const v0, 0x7f15011d

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 100
    const-class p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 87
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    .line 89
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 1106
    :cond_0
    new-instance v1, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    .line 1107
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->g:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->g:Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x1

    .line 1109
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setHasOptionsMenu(Z)V

    .line 1110
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

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

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 256
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/UserManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    iget-object v3, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/applications/f;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/f;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Landroid/util/SparseArray;

    .line 8265
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c:Landroid/util/SparseArray;

    .line 8266
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->d()V

    .line 8267
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c()V

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
    .locals 4

    .line 129
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    const/4 v3, 0x2

    .line 132
    invoke-virtual {v0, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 31

    move-object/from16 v0, p0

    .line 115
    invoke-super/range {p0 .. p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1323
    new-instance v1, Lcom/android/settings/deviceinfo/storage/a;

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/deviceinfo/storage/a;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->d:Lcom/android/settings/deviceinfo/storage/a;

    .line 2301
    iget-object v1, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->d:Lcom/android/settings/deviceinfo/storage/a;

    .line 3069
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/a;->a()Z

    move-result v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const/4 v10, 0x0

    goto :goto_1

    .line 3072
    :cond_1
    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v8, "free_bytes"

    invoke-interface {v2, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3073
    iget-object v1, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "total_bytes"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v10, v8, v4

    if-ltz v10, :cond_0

    cmp-long v10, v1, v4

    if-gez v10, :cond_2

    goto :goto_0

    .line 3078
    :cond_2
    new-instance v10, Lcom/android/settingslib/deviceinfo/b;

    invoke-direct {v10, v8, v9, v1, v2}, Lcom/android/settingslib/deviceinfo/b;-><init>(JJ)V

    .line 2302
    :goto_1
    iget-object v1, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->d:Lcom/android/settings/deviceinfo/storage/a;

    .line 3082
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 3085
    :cond_4
    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v8, "game_apps_size"

    invoke-interface {v2, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3086
    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v11, "music_apps_size"

    invoke-interface {v2, v11, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 3087
    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "video_apps_size"

    invoke-interface {v2, v13, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 3088
    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v15, "photo_apps_size"

    invoke-interface {v2, v15, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 3089
    iget-object v2, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v5, "other_apps_size"

    move-wide/from16 v18, v3

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3090
    iget-object v4, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v5, "cache_apps_size"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v17, v8, v15

    if-ltz v17, :cond_3

    cmp-long v17, v11, v15

    if-ltz v17, :cond_3

    cmp-long v17, v13, v15

    if-ltz v17, :cond_3

    cmp-long v17, v18, v15

    if-ltz v17, :cond_3

    cmp-long v17, v2, v15

    if-ltz v17, :cond_3

    cmp-long v20, v4, v15

    if-gez v20, :cond_5

    goto :goto_2

    .line 3100
    :cond_5
    iget-object v15, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v0, "external_total_bytes"

    invoke-interface {v15, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 3101
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v15, "external_audio_bytes"

    invoke-interface {v0, v15, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    .line 3102
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v15, "external_video_bytes"

    invoke-interface {v0, v15, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v25

    .line 3103
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v15, "external_image_bytes"

    invoke-interface {v0, v15, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v27

    .line 3104
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/a;->a:Landroid/content/SharedPreferences;

    const-string v15, "external_apps_bytes"

    invoke-interface {v0, v15, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v29

    const-wide/16 v6, 0x0

    cmp-long v0, v21, v6

    if-ltz v0, :cond_3

    cmp-long v0, v23, v6

    if-ltz v0, :cond_3

    cmp-long v0, v25, v6

    if-ltz v0, :cond_3

    cmp-long v0, v27, v6

    if-ltz v0, :cond_3

    cmp-long v0, v29, v6

    if-gez v0, :cond_6

    goto/16 :goto_2

    .line 3113
    :cond_6
    new-instance v0, Lcom/android/settingslib/applications/f$c;

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v30}, Lcom/android/settingslib/applications/f$c;-><init>(JJJJJ)V

    .line 3120
    new-instance v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;

    invoke-direct {v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;-><init>()V

    .line 3122
    iput-wide v8, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    .line 3123
    iput-wide v11, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->b:J

    .line 3124
    iput-wide v13, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->d:J

    move-wide/from16 v7, v18

    .line 3125
    iput-wide v7, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->c:J

    .line 3126
    iput-wide v2, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->e:J

    .line 3127
    iput-wide v4, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->f:J

    .line 3128
    iput-object v0, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;

    .line 3129
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 3130
    iget v0, v1, Lcom/android/settings/deviceinfo/storage/a;->b:I

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_3
    if-eqz v10, :cond_8

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    .line 2308
    iput-object v10, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    .line 2309
    iput-object v3, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c:Landroid/util/SparseArray;

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    .line 1326
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c()V

    .line 3337
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/StorageStatsManager;

    .line 3338
    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->a:Landroid/os/storage/VolumeInfo;

    iget-object v2, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4316
    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->c:Landroid/util/SparseArray;

    if-eqz v2, :cond_a

    :cond_9
    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->b:Lcom/android/settingslib/deviceinfo/b;

    if-nez v1, :cond_b

    :cond_a
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4318
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setLoading(ZZ)V

    .line 119
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    .line 120
    invoke-static {v1, v0, v2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object v2

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;)Lcom/android/settings/widget/b;

    return-void
.end method
