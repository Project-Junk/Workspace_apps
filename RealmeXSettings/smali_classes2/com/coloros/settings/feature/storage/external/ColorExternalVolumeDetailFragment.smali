.class public Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorExternalVolumeDetailFragment.java"

# interfaces
.implements Lcom/coloros/settings/feature/storage/e$a;


# instance fields
.field private a:Lcom/coloros/settings/feature/storage/e;

.field private b:Landroid/os/storage/StorageManager;

.field private c:Landroid/os/storage/VolumeInfo;

.field private d:Z

.field private e:Lcom/coloros/settings/feature/storage/a/b;

.field private f:Landroid/os/Handler;

.field private g:Lcom/coloros/settings/feature/storage/controller/c;

.field private h:Lcom/coloros/settings/feature/storage/external/a;

.field private final i:Landroid/os/storage/StorageEventListener;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->d:Z

    .line 183
    new-instance v0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$1;-><init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->i:Landroid/os/storage/StorageEventListener;

    .line 202
    new-instance v0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment$2;-><init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private a(IJD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;
    .locals 0

    long-to-double p2, p2

    div-double/2addr p2, p4

    .line 242
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/c;->a(I)I

    move-result p1

    .line 243
    new-instance p4, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    iget-object p5, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p5, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p4, p1, p2, p3}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;-><init>(ID)V

    return-object p4
.end method

.method private synthetic a(Lcom/android/settingslib/core/a;)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)V
    .locals 3

    .line 4198
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4199
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->f:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method private b(Lcom/coloros/settings/feature/storage/a/b;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/settings/feature/storage/a/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-wide v1, p1, Lcom/coloros/settings/feature/storage/a/b;->d:J

    long-to-double v1, v1

    .line 228
    iget-boolean v3, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->d:Z

    if-eqz v3, :cond_0

    const/16 v4, 0x14

    .line 229
    iget-wide v5, p1, Lcom/coloros/settings/feature/storage/a/b;->g:J

    move-object v3, p0

    move-wide v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(IJD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 231
    iget-object v3, p1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    move-object v3, p0

    move-wide v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(IJD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 232
    iget-object v3, p1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    const/4 v5, 0x1

    aget-wide v5, v3, v5

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(IJD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    .line 233
    iget-object v3, p1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    const/4 v5, 0x2

    aget-wide v5, v3, v5

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(IJD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x12

    .line 234
    iget-wide v5, p1, Lcom/coloros/settings/feature/storage/a/b;->k:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(IJD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/16 v4, 0x15

    .line 236
    iget-wide v5, p1, Lcom/coloros/settings/feature/storage/a/b;->d:J

    iget-wide v7, p1, Lcom/coloros/settings/feature/storage/a/b;->g:J

    sub-long/2addr v5, v7

    move-object v3, p0

    move-wide v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(IJD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static synthetic b(Lcom/android/settingslib/core/a;)Z
    .locals 0

    .line 178
    instance-of p0, p0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->b:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method private c()V
    .locals 7

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->e:Lcom/coloros/settings/feature/storage/a/b;

    .line 214
    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->d:Z

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/coloros/settings/feature/storage/a/b;->d:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->mContext:Landroid/content/Context;

    iget-wide v5, v0, Lcom/coloros/settings/feature/storage/a/b;->g:J

    sget-boolean v3, Lcom/coloros/settings/a;->h:Z

    xor-int/2addr v3, v4

    invoke-static {v2, v5, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .line 217
    sput-object v1, Lcom/coloros/settings/feature/storage/b/b;->c:Ljava/lang/String;

    .line 218
    sput-object v2, Lcom/coloros/settings/feature/storage/b/b;->d:Ljava/lang/String;

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->g:Lcom/coloros/settings/feature/storage/controller/c;

    iget-wide v2, v0, Lcom/coloros/settings/feature/storage/a/b;->g:J

    iget-wide v4, v0, Lcom/coloros/settings/feature/storage/a/b;->d:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/coloros/settings/feature/storage/controller/c;->a(JJ)V

    .line 221
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->g:Lcom/coloros/settings/feature/storage/controller/c;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->b(Lcom/coloros/settings/feature/storage/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/storage/controller/c;->a(Ljava/util/List;)V

    .line 222
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->h:Lcom/coloros/settings/feature/storage/external/a;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/storage/external/a;->a(Lcom/coloros/settings/feature/storage/a/b;)V

    return-void
.end method

.method public static synthetic lambda$ES3dLHPNaNc0BF2Ac_va9JSTV8g(Lcom/android/settingslib/core/a;)Z
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->b(Lcom/android/settingslib/core/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pdYsVWnWp4aunWvxNV_Jl4vjExE(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;Lcom/android/settingslib/core/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a(Lcom/android/settingslib/core/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "VolumeDetailFragment"

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

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v1, Lcom/coloros/settings/feature/storage/controller/c;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, v2}, Lcom/coloros/settings/feature/storage/controller/c;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->g:Lcom/coloros/settings/feature/storage/controller/c;

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->g:Lcom/coloros/settings/feature/storage/controller/c;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p1, Lcom/coloros/settings/feature/storage/external/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->d:Z

    invoke-direct {p1, p0, v1, v2}, Lcom/coloros/settings/feature/storage/external/a;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;Z)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->h:Lcom/coloros/settings/feature/storage/external/a;

    .line 174
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->h:Lcom/coloros/settings/feature/storage/external/a;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance p1, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->d:Z

    invoke-direct {p1, p0, v1, v2}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;Z)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance p1, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->d:Z

    invoke-direct {p1, p0, v1, v2}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;Z)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeDetailFragment$ES3dLHPNaNc0BF2Ac_va9JSTV8g;->INSTANCE:Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeDetailFragment$ES3dLHPNaNc0BF2Ac_va9JSTV8g;

    .line 178
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeDetailFragment$pdYsVWnWp4aunWvxNV_Jl4vjExE;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeDetailFragment$pdYsVWnWp4aunWvxNV_Jl4vjExE;-><init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;)V

    .line 179
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Lcom/coloros/settings/feature/storage/a/b;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->e:Lcom/coloros/settings/feature/storage/a/b;

    .line 150
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e9

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15006a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x381

    if-eq p1, p2, :cond_2

    const/16 p2, 0x382

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->finishFragment()V

    return-void

    :cond_2
    const-string p1, "result_bundle"

    .line 127
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "VolumeDetailFragment"

    if-nez p1, :cond_3

    const-string p1, "b is null return"

    .line 129
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-wide/16 v0, -0x1

    const-string p3, "delete_file_data"

    .line 132
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string p3, "delete_file_list_data"

    .line 134
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 135
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v4, "deleteSize = "

    invoke-virtual {v4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p2, v2, v0

    if-eqz p2, :cond_4

    .line 137
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->e:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v0, p2, Lcom/coloros/settings/feature/storage/a/b;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/coloros/settings/feature/storage/a/b;->g:J

    .line 138
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->e:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v0, p2, Lcom/coloros/settings/feature/storage/a/b;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/coloros/settings/feature/storage/a/b;->h:J

    .line 139
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->e:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v0, p2, Lcom/coloros/settings/feature/storage/a/b;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/coloros/settings/feature/storage/a/b;->k:J

    .line 140
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c()V

    .line 141
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->h:Lcom/coloros/settings/feature/storage/external/a;

    .line 4088
    iget-object p2, p2, Lcom/coloros/settings/feature/storage/external/a;->d:Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a(Ljava/util/ArrayList;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->f:Landroid/os/Handler;

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->b:Landroid/os/storage/StorageManager;

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->b:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iput-boolean v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->d:Z

    .line 86
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 87
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->finishFragment()V

    return-void

    .line 91
    :cond_2
    new-instance p1, Lcom/coloros/settings/feature/storage/e;

    invoke-direct {p1}, Lcom/coloros/settings/feature/storage/e;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a:Lcom/coloros/settings/feature/storage/e;

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a:Lcom/coloros/settings/feature/storage/e;

    .line 1059
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/e;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1060
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/e;->g:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a:Lcom/coloros/settings/feature/storage/e;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 2055
    iput-object v0, p1, Lcom/coloros/settings/feature/storage/e;->b:Landroid/os/storage/StorageVolume;

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a:Lcom/coloros/settings/feature/storage/e;

    .line 3073
    iget-boolean v0, p1, Lcom/coloros/settings/feature/storage/e;->e:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 3076
    iput-boolean v0, p1, Lcom/coloros/settings/feature/storage/e;->e:Z

    .line 3077
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/e;->d:Lcom/coloros/settings/feature/deviceinfo/e;

    if-nez v0, :cond_4

    .line 3078
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/e;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/coloros/settings/feature/storage/e;->b:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/coloros/settings/feature/deviceinfo/e;

    move-result-object v0

    iput-object v0, p1, Lcom/coloros/settings/feature/storage/e;->d:Lcom/coloros/settings/feature/deviceinfo/e;

    .line 3080
    :cond_4
    iget-object v0, p1, Lcom/coloros/settings/feature/storage/e;->d:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v2, p1, Lcom/coloros/settings/feature/storage/e;->h:Lcom/coloros/settings/feature/deviceinfo/e$b;

    .line 3157
    iget-object v3, v0, Lcom/coloros/settings/feature/deviceinfo/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/coloros/settings/feature/deviceinfo/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_5
    const-string v3, "StorageMeasurement"

    const-string v4, "setReceiver"

    .line 3158
    invoke-static {v3, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_6

    const-string v4, "setReceiver: receiver == null"

    .line 3160
    invoke-static {v3, v4}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    :cond_6
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/coloros/settings/feature/deviceinfo/e;->b:Ljava/lang/ref/WeakReference;

    .line 3081
    :cond_7
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/e;->d:Lcom/coloros/settings/feature/deviceinfo/e;

    .line 3178
    iget-object v0, p1, Lcom/coloros/settings/feature/deviceinfo/e;->a:Lcom/coloros/settings/feature/deviceinfo/e$a;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/e$a;->removeMessages(I)V

    .line 3179
    iget-object p1, p1, Lcom/coloros/settings/feature/deviceinfo/e;->a:Lcom/coloros/settings/feature/deviceinfo/e$a;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/deviceinfo/e$a;->sendEmptyMessage(I)Z

    :cond_8
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDetach()V

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a:Lcom/coloros/settings/feature/storage/e;

    if-eqz v0, :cond_0

    .line 4065
    iget-object v0, v0, Lcom/coloros/settings/feature/storage/e;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->a:Lcom/coloros/settings/feature/storage/e;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->b:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->i:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->b:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;->i:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method
