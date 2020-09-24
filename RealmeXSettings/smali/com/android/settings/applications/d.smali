.class public abstract Lcom/android/settings/applications/d;
.super Lcom/android/settings/applications/e;
.source "AppStateAppOpsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/d$a;
    }
.end annotation


# instance fields
.field private final f:Landroid/content/pm/IPackageManager;

.field private final g:Landroid/os/UserManager;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/app/AppOpsManager;

.field private final j:Landroid/content/Context;

.field private final k:[I

.field private final l:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;I[Ljava/lang/String;)V
    .locals 7

    .line 62
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/d;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    .line 69
    iput-object p1, p0, Lcom/android/settings/applications/d;->j:Landroid/content/Context;

    .line 70
    iput-object p6, p0, Lcom/android/settings/applications/d;->f:Landroid/content/pm/IPackageManager;

    .line 71
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/d;->g:Landroid/os/UserManager;

    .line 72
    iget-object p2, p0, Lcom/android/settings/applications/d;->g:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/d;->h:Ljava/util/List;

    const-string p2, "appops"

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/d;->i:Landroid/app/AppOpsManager;

    const/4 p1, 0x1

    .line 74
    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p4, p1, p2

    iput-object p1, p0, Lcom/android/settings/applications/d;->k:[I

    .line 75
    iput-object p5, p0, Lcom/android/settings/applications/d;->l:[Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/d$a;",
            ">;>;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/settings/applications/d;->i:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/d;->k:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_6

    .line 245
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 246
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2079
    iget-object v6, p0, Lcom/android/settings/applications/d;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_2

    .line 2081
    iget-object v8, p0, Lcom/android/settings/applications/d;->h:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v8, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_3
    if-eqz v6, :cond_5

    .line 252
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    if-eqz v6, :cond_5

    .line 256
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/d$a;

    const-string v7, "AppStateAppOpsBridge"

    if-nez v6, :cond_3

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "AppOp permission exists for package "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of user "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but package doesn\'t exist or did not request "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/d;->l:[Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " access"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 264
    :cond_3
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No AppOps permission exists for package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 268
    :cond_4
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v4

    iput v4, v6, Lcom/android/settings/applications/d$a;->f:I

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 92
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private e()Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/d$a;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 159
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 160
    iget-object v3, p0, Lcom/android/settings/applications/d;->l:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 161
    iget-object v7, p0, Lcom/android/settings/applications/d;->f:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v6}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 163
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 174
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 175
    iget-object v4, p0, Lcom/android/settings/applications/d;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 176
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 177
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 178
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 180
    iget-object v10, p0, Lcom/android/settings/applications/d;->f:Landroid/content/pm/IPackageManager;

    invoke-interface {v10, v9, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v10

    const-string v11, "android"

    .line 1276
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/applications/d;->j:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    move v11, v1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v11, 0x1

    :goto_3
    if-nez v11, :cond_4

    if-eqz v10, :cond_4

    .line 183
    new-instance v10, Lcom/android/settings/applications/d$a;

    invoke-direct {v10, v9, v5}, Lcom/android/settings/applications/d$a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 184
    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    return-object v3

    :catch_0
    move-exception v2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PackageManager is dead. Can\'t get list of packages requesting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/applications/d;->l:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppStateAppOpsBridge"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/android/settings/applications/d$a;
    .locals 7

    .line 100
    new-instance v0, Lcom/android/settings/applications/d$a;

    new-instance v1, Landroid/os/UserHandle;

    .line 101
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/applications/d$a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/d;->f:Landroid/content/pm/IPackageManager;

    const v2, 0x401000

    iget-object v3, v0, Lcom/android/settings/applications/d$a;->b:Landroid/os/UserHandle;

    .line 105
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 103
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/d$a;->c:Landroid/content/pm/PackageInfo;

    .line 106
    iget-object v1, v0, Lcom/android/settings/applications/d$a;->c:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, v0, Lcom/android/settings/applications/d$a;->c:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 109
    iget-object v3, v0, Lcom/android/settings/applications/d$a;->c:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v1, :cond_1

    move v4, v2

    .line 111
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 112
    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/settings/applications/d;->l:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settings/applications/d;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 113
    iput-boolean v5, v0, Lcom/android/settings/applications/d$a;->e:Z

    .line 114
    aget v6, v3, v4

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 116
    iput-boolean v5, v0, Lcom/android/settings/applications/d$a;->d:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/d;->i:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/settings/applications/d;->k:[I

    invoke-virtual {v1, p2, p1, v3}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 125
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 126
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result p2

    iput p2, v0, Lcom/android/settings/applications/d$a;->f:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 129
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PackageManager is dead. Can\'t get package info "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppStateAppOpsBridge"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-object v0
.end method

.method protected a()V
    .locals 9

    .line 136
    invoke-direct {p0}, Lcom/android/settings/applications/d;->e()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1208
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1209
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1210
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-eqz v4, :cond_0

    .line 1214
    iget-object v5, p0, Lcom/android/settings/applications/d;->f:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/d;->l:[Ljava/lang/String;

    .line 1216
    invoke-interface {v5, v6, v1, v3}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1217
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1218
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    .line 1220
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 1221
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/d$a;

    if-eqz v8, :cond_2

    .line 1223
    iput-object v7, v8, Lcom/android/settings/applications/d$a;->c:Landroid/content/pm/PackageInfo;

    const/4 v7, 0x1

    .line 1224
    iput-boolean v7, v8, Lcom/android/settings/applications/d$a;->d:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1229
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PackageManager is dead. Can\'t get list of packages granted "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/applications/d;->l:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppStateAppOpsBridge"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/applications/d;->a(Landroid/util/SparseArray;)V

    .line 143
    iget-object v2, p0, Lcom/android/settings/applications/d;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_5

    .line 146
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 147
    iget-object v5, v4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 148
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    if-eqz v5, :cond_4

    .line 149
    iget-object v6, v4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput-object v5, v4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected abstract a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
.end method
