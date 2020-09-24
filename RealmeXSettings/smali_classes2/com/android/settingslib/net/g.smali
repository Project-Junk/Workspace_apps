.class public final Lcom/android/settingslib/net/g;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/net/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/g;->b:Landroid/content/Context;

    .line 67
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/g;->a:Landroid/util/SparseArray;

    return-void
.end method

.method private a(I)Lcom/android/settingslib/net/f;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Error while building UI detail for uid "

    const-string v4, "DataUsage"

    .line 106
    iget-object v0, v1, Lcom/android/settingslib/net/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    iget-object v5, v1, Lcom/android/settingslib/net/g;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 109
    new-instance v6, Lcom/android/settingslib/net/f;

    invoke-direct {v6}, Lcom/android/settingslib/net/f;-><init>()V

    .line 110
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    const/4 v7, -0x5

    if-eq v2, v7, :cond_c

    const/4 v7, -0x4

    if-eq v2, v7, :cond_a

    const/16 v7, 0x3e8

    if-eq v2, v7, :cond_9

    const/16 v7, 0x425

    if-eq v2, v7, :cond_8

    .line 137
    iget-object v0, v1, Lcom/android/settingslib/net/g;->b:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/16 v7, -0x7d0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gt v2, v7, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    if-eqz v10, :cond_1

    sub-int/2addr v7, v2

    .line 142
    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 144
    iget-object v2, v1, Lcom/android/settingslib/net/g;->b:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/settingslib/l;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    .line 145
    iget-object v2, v1, Lcom/android/settingslib/net/g;->b:Landroid/content/Context;

    invoke-static {v2, v0, v7}, Lcom/android/settingslib/l;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    return-object v6

    .line 151
    :cond_1
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 152
    array-length v10, v7

    goto :goto_1

    :cond_2
    move v10, v9

    .line 154
    :goto_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 155
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 156
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    if-ne v10, v8, :cond_3

    .line 158
    aget-object v7, v7, v9

    invoke-interface {v13, v7, v9, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 161
    invoke-virtual {v7, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {v7, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v7}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v6, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_3
    if-le v10, v8, :cond_6

    .line 166
    new-array v8, v10, [Ljava/lang/CharSequence;

    iput-object v8, v6, Lcom/android/settingslib/net/f;->c:[Ljava/lang/CharSequence;

    .line 167
    new-array v8, v10, [Ljava/lang/CharSequence;

    iput-object v8, v6, Lcom/android/settingslib/net/f;->d:[Ljava/lang/CharSequence;

    move v8, v9

    :goto_2
    if-ge v8, v10, :cond_6

    .line 169
    aget-object v14, v7, v8

    .line 170
    invoke-virtual {v5, v14, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 171
    invoke-interface {v13, v14, v9, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 175
    iget-object v9, v6, Lcom/android/settingslib/net/f;->c:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v9, v8

    .line 176
    iget-object v9, v6, Lcom/android/settingslib/net/f;->d:[Ljava/lang/CharSequence;

    move-object/from16 v16, v7

    iget-object v7, v6, Lcom/android/settingslib/net/f;->c:[Ljava/lang/CharSequence;

    aget-object v7, v7, v8

    invoke-virtual {v0, v7, v12}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v9, v8

    .line 178
    iget v7, v15, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_5

    .line 179
    iget v7, v15, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v14, v7, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 180
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    .line 181
    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v6, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    move-object/from16 v16, v7

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p1

    move-object/from16 v7, v16

    const/4 v9, 0x0

    goto :goto_2

    .line 186
    :cond_6
    :goto_4
    iget-object v2, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v12}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->b:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 190
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_1
    move-exception v0

    .line 188
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :goto_5
    iget-object v0, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    :cond_7
    return-object v6

    .line 132
    :cond_8
    sget v2, Lcom/android/settingslib/e$h;->data_usage_ota:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    .line 133
    iget-object v0, v1, Lcom/android/settingslib/net/g;->b:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/e$e;->ic_system_update:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    return-object v6

    .line 116
    :cond_9
    sget v2, Lcom/android/settingslib/e$h;->process_kernel_label:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    return-object v6

    .line 120
    :cond_a
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/android/settingslib/e$h;->data_usage_uninstalled_apps_users:I

    goto :goto_6

    :cond_b
    sget v2, Lcom/android/settingslib/e$h;->data_usage_uninstalled_apps:I

    :goto_6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    return-object v6

    .line 126
    :cond_c
    iget-object v2, v1, Lcom/android/settingslib/net/g;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 128
    invoke-static {v2}, Lcom/android/settingslib/l;->a(Landroid/net/ConnectivityManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    return-object v6
.end method


# virtual methods
.method public final a(IZ)Lcom/android/settingslib/net/f;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/net/g;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/net/f;

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/g;->a(I)Lcom/android/settingslib/net/f;

    move-result-object p2

    .line 94
    iget-object v1, p0, Lcom/android/settingslib/net/g;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/net/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 84
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
