.class public Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "FetchPackageStorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Lcom/android/settingslib/applications/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settingslib/applications/f;

.field private final b:Landroid/content/pm/ApplicationInfo;

.field private final c:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/f;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/f;

    iput-object p1, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->a:Lcom/android/settingslib/applications/f;

    .line 46
    iput-object p3, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->b:Landroid/content/pm/ApplicationInfo;

    .line 47
    iput-object p4, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->c:Landroid/os/UserHandle;

    return-void
.end method

.method private b()Lcom/android/settingslib/applications/f$a;
    .locals 4

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->a:Lcom/android/settingslib/applications/f;

    iget-object v1, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->c:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$a;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "FetchPackageStorage"

    const-string v2, "Package may have been removed during query, failing gracefully"

    .line 56
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->b()Lcom/android/settingslib/applications/f$a;

    move-result-object v0

    return-object v0
.end method
