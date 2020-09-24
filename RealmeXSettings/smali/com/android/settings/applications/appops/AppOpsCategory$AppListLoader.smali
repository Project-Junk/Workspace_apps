.class public Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/a$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/android/settings/applications/appops/AppOpsCategory$b;

.field final b:Lcom/android/settings/applications/appops/a;

.field final c:Lcom/android/settings/applications/appops/a$c;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/android/settings/applications/appops/AppOpsCategory$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appops/a;Lcom/android/settings/applications/appops/a$c;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance p1, Lcom/android/settings/applications/appops/AppOpsCategory$b;

    invoke-direct {p1}, Lcom/android/settings/applications/appops/AppOpsCategory$b;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->a:Lcom/android/settings/applications/appops/AppOpsCategory$b;

    .line 124
    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->b:Lcom/android/settings/applications/appops/a;

    .line 125
    iput-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->c:Lcom/android/settings/applications/appops/a$c;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/a$b;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->isReset()Z

    .line 146
    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->d:Ljava/util/List;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1129
    iget-object v1, v0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->b:Lcom/android/settings/applications/appops/a;

    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->c:Lcom/android/settings/applications/appops/a$c;

    sget-object v3, Lcom/android/settings/applications/appops/a;->n:Ljava/util/Comparator;

    .line 1530
    iget-object v4, v1, Lcom/android/settings/applications/appops/a;->a:Landroid/content/Context;

    .line 1532
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1533
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1536
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v9, 0x5a

    .line 1537
    new-array v9, v9, [I

    const/4 v10, 0x0

    move v11, v10

    .line 1538
    :goto_0
    iget-object v12, v2, Lcom/android/settings/applications/appops/a$c;->a:[I

    array-length v12, v12

    if-ge v11, v12, :cond_1

    .line 1539
    iget-object v12, v2, Lcom/android/settings/applications/appops/a$c;->b:[Z

    aget-boolean v12, v12, v11

    if-eqz v12, :cond_0

    .line 1540
    iget-object v12, v2, Lcom/android/settings/applications/appops/a$c;->a:[I

    aget v12, v12, v11

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1541
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1542
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    iget-object v12, v2, Lcom/android/settings/applications/appops/a$c;->a:[I

    aget v12, v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    iget-object v12, v2, Lcom/android/settings/applications/appops/a$c;->a:[I

    aget v12, v12, v11

    aput v11, v9, v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1553
    :cond_1
    iget-object v9, v1, Lcom/android/settings/applications/appops/a;->b:Landroid/app/AppOpsManager;

    iget-object v2, v2, Lcom/android/settings/applications/appops/a$c;->a:[I

    invoke-virtual {v9, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    move v11, v10

    .line 1557
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 1558
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    .line 1559
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v4, v5, v13, v9}, Lcom/android/settings/applications/appops/a;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/a$a;

    move-result-object v13

    if-eqz v13, :cond_2

    move v14, v10

    .line 1563
    :goto_2
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 1564
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$OpEntry;

    .line 1565
    invoke-static {v6, v12, v13, v15}, Lcom/android/settings/applications/appops/a;->a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/a$a;Landroid/app/AppOpsManager$OpEntry;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1580
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1581
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1582
    iget-object v11, v1, Lcom/android/settings/applications/appops/a;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v2, v10}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    move v11, v10

    .line 1584
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_b

    .line 1585
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 1586
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v14, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4, v5, v13, v14}, Lcom/android/settings/applications/appops/a;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/a$a;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 1593
    iget-object v14, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v14, :cond_a

    move-object v15, v9

    move-object/from16 v16, v15

    move v14, v10

    .line 1594
    :goto_4
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v9, v9

    if-ge v14, v9, :cond_a

    .line 1595
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v9, :cond_5

    .line 1596
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v9, v9, v14

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_4

    goto :goto_5

    :cond_4
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move v2, v10

    goto/16 :goto_a

    :cond_5
    :goto_5
    move v9, v10

    .line 1605
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    .line 1606
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v14

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1611
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2246
    iget-object v10, v13, Lcom/android/settings/applications/appops/a$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_6

    const/4 v10, 0x1

    goto :goto_7

    :cond_6
    const/4 v10, 0x0

    :goto_7
    if-nez v10, :cond_8

    if-nez v15, :cond_7

    .line 1615
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    iget-object v10, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v10, v1, v15}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_8

    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v0, v16

    .line 1620
    :goto_8
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    .line 1621
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Landroid/app/AppOpsManager$OpEntry;-><init>(II)V

    .line 1622
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-static {v6, v0, v13, v1}, Lcom/android/settings/applications/appops/a;->a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/a$a;Landroid/app/AppOpsManager$OpEntry;)V

    move-object/from16 v16, v0

    goto :goto_9

    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_6

    :cond_9
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move v10, v2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_4

    :cond_a
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move v2, v10

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v10, v2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_3

    .line 1631
    :cond_b
    invoke-static {v6, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v6
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/util/List;

    .line 3204
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    return-void
.end method

.method public onReset()V
    .locals 3

    .line 215
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onStopLoading()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->d:Ljava/util/List;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->e:Lcom/android/settings/applications/appops/AppOpsCategory$c;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->e:Lcom/android/settings/applications/appops/AppOpsCategory$c;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->e:Lcom/android/settings/applications/appops/AppOpsCategory$c;

    :cond_1
    return-void
.end method

.method public onStartLoading()V
    .locals 7

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->onContentChanged()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->a(Ljava/util/List;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->e:Lcom/android/settings/applications/appops/AppOpsCategory$c;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory$c;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appops/AppOpsCategory$c;-><init>(Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->e:Lcom/android/settings/applications/appops/AppOpsCategory$c;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->a:Lcom/android/settings/applications/appops/AppOpsCategory$b;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1073
    iget-object v2, v0, Lcom/android/settings/applications/appops/AppOpsCategory$b;->a:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    .line 1074
    iget v3, v0, Lcom/android/settings/applications/appops/AppOpsCategory$b;->b:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    if-nez v3, :cond_4

    and-int/lit16 v2, v2, 0x304

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    .line 1077
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Lcom/android/settings/applications/appops/AppOpsCategory$b;->b:I

    .line 185
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    if-eqz v5, :cond_6

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->forceLoad()V

    :cond_6
    return-void
.end method

.method public onStopLoading()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;->cancelLoad()Z

    return-void
.end method
