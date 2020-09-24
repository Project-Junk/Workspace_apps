.class public Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "VolumeSizesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Lcom/android/settingslib/deviceinfo/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/deviceinfo/e;

.field private b:Landroid/app/usage/StorageStatsManager;

.field private c:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/e;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->a:Lcom/android/settingslib/deviceinfo/e;

    .line 43
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->b:Landroid/app/usage/StorageStatsManager;

    .line 44
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->c:Landroid/os/storage/VolumeInfo;

    return-void
.end method

.method public static a(Lcom/android/settingslib/deviceinfo/e;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/b;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-interface {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/e;->a(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v0

    .line 66
    invoke-interface {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/e;->b(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide p0

    .line 67
    new-instance p2, Lcom/android/settingslib/deviceinfo/b;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/android/settingslib/deviceinfo/b;-><init>(JJ)V

    return-object p2
.end method

.method private b()Lcom/android/settingslib/deviceinfo/b;
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->a:Lcom/android/settingslib/deviceinfo/e;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->b:Landroid/app/usage/StorageStatsManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->c:Landroid/os/storage/VolumeInfo;

    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->a(Lcom/android/settingslib/deviceinfo/e;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->b()Lcom/android/settingslib/deviceinfo/b;

    move-result-object v0

    return-object v0
.end method
