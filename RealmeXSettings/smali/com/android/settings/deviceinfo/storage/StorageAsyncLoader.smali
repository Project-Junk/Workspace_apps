.class public Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "StorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$b;,
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/UserManager;

.field private b:Ljava/lang/String;

.field private c:Lcom/android/settingslib/applications/f;

.field private d:Landroid/content/pm/PackageManager;

.field private e:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/f;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->a:Landroid/os/UserManager;

    .line 61
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->b:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->c:Lcom/android/settingslib/applications/f;

    .line 63
    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->d:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private a(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "StorageAsyncLoader"

    const-string v0, "Loading apps"

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->d:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    move/from16 v4, p1

    .line 94
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 95
    new-instance v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;

    invoke-direct {v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;-><init>()V

    .line 96
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 97
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v3, v8, :cond_7

    .line 98
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 102
    :try_start_0
    iget-object v9, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->c:Lcom/android/settingslib/applications/f;

    iget-object v10, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->b:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v7}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$a;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-interface {v9}, Lcom/android/settingslib/applications/f$a;->b()J

    move-result-wide v10

    .line 110
    iget-object v12, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->c:Lcom/android/settingslib/applications/f;

    iget-object v13, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->b:Ljava/lang/String;

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13, v14}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;I)J

    move-result-wide v12

    .line 111
    invoke-interface {v9}, Lcom/android/settingslib/applications/f$a;->c()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-gez v16, :cond_0

    sub-long/2addr v10, v14

    add-long/2addr v10, v12

    .line 123
    :cond_0
    iget-object v12, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->e:Landroid/util/ArraySet;

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 124
    invoke-interface {v9}, Lcom/android/settingslib/applications/f$a;->a()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 125
    iget-object v9, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->e:Landroid/util/ArraySet;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v9, :cond_6

    const/4 v12, 0x1

    if-eq v9, v12, :cond_5

    const/4 v12, 0x2

    if-eq v9, v12, :cond_4

    const/4 v12, 0x3

    if-eq v9, v12, :cond_3

    .line 143
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x2000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_2

    .line 144
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    goto :goto_2

    .line 147
    :cond_2
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->e:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->e:J

    goto :goto_2

    .line 139
    :cond_3
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->c:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->c:J

    goto :goto_2

    .line 136
    :cond_4
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->d:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->d:J

    goto :goto_2

    .line 133
    :cond_5
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->b:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->b:J

    goto :goto_2

    .line 130
    :cond_6
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->a:J

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v9, "App unexpectedly not found"

    .line 105
    invoke-static {v2, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v0, "Loading external stats"

    .line 152
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->c:Lcom/android/settingslib/applications/f;

    iget-object v3, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->b:Ljava/lang/String;

    .line 155
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 154
    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$c;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;->g:Lcom/android/settingslib/applications/f$c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 157
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const-string v0, "Obtaining result completed"

    .line 159
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 6

    .line 1072
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->e:Landroid/util/ArraySet;

    .line 1073
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1074
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->a:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1076
    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;-><init>(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1084
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1085
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1086
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->a(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$a;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
