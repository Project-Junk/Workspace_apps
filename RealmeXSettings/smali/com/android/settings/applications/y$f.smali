.class final Lcom/android/settings/applications/y$f;
.super Lcom/android/settings/applications/y$c;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field A:J

.field final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/applications/y$g;",
            ">;"
        }
    .end annotation
.end field

.field final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/y$f;",
            ">;"
        }
    .end annotation
.end field

.field final p:I

.field final q:Ljava/lang/String;

.field r:I

.field s:Lcom/android/settings/applications/y$f;

.field t:I

.field u:I

.field v:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field w:Lcom/android/settings/applications/y$d;

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 410
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/y$c;-><init>(ZI)V

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    .line 387
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const v1, 0x7f12141e

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/y$f;->f:Ljava/lang/String;

    .line 413
    iput p2, p0, Lcom/android/settings/applications/y$f;->p:I

    .line 414
    iput-object p3, p0, Lcom/android/settings/applications/y$f;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(Landroid/content/pm/PackageManager;)V
    .locals 9

    .line 418
    iget-object v0, p0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x400000

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/y$f;->q:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 425
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, p0, Lcom/android/settings/applications/y$f;->p:I

    if-ne v2, v3, :cond_1

    .line 426
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    .line 427
    iget-object v2, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    .line 428
    iput-object v1, p0, Lcom/android/settings/applications/y$f;->c:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 436
    :catch_0
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/y$f;->p:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 439
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 441
    :try_start_1
    aget-object v2, v1, v4

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 443
    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    .line 444
    iget-object v3, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    .line 445
    iput-object v2, p0, Lcom/android/settings/applications/y$f;->c:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 453
    :catch_1
    :cond_2
    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    .line 455
    :try_start_2
    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 456
    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_3

    .line 457
    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 460
    iput-object v5, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    .line 461
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    .line 462
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, p0, Lcom/android/settings/applications/y$f;->c:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 473
    iget-object v0, p0, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/y$g;

    iget-object v0, v0, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 475
    iput-object v0, p0, Lcom/android/settings/applications/y$f;->c:Landroid/content/pm/PackageItemInfo;

    .line 476
    iget-object v0, p0, Lcom/android/settings/applications/y$f;->c:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    .line 477
    iget-object p1, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    return-void

    .line 483
    :cond_5
    :try_start_3
    aget-object v1, v1, v4

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 485
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    .line 486
    iget-object p1, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/android/settings/applications/y$f;->c:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/y$f;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/y$f;

    .line 595
    invoke-virtual {v2, p1, p2}, Lcom/android/settings/applications/y$f;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 596
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget v3, v2, Lcom/android/settings/applications/y$f;->r:I

    if-lez v3, :cond_0

    .line 598
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 10

    .line 494
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/y$g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 500
    new-instance v1, Lcom/android/settings/applications/y$g;

    iget v5, p0, Lcom/android/settings/applications/y$f;->b:I

    invoke-direct {v1, v5}, Lcom/android/settings/applications/y$g;-><init>(I)V

    .line 501
    iput-object p2, v1, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 503
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/high16 v7, 0x400000

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 505
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 503
    invoke-interface {v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    .line 507
    iget-object v5, v1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_0

    const-string v5, "RunningService"

    .line 508
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getServiceInfo returned null for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 514
    :catch_0
    :cond_0
    iget-object v5, v1, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 515
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    .line 514
    invoke-static {v0, v5, v6}, Lcom/android/settings/applications/y;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings/applications/y$g;->d:Ljava/lang/CharSequence;

    .line 516
    iget-object v5, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/y$f;->d:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    iput-object v5, p0, Lcom/android/settings/applications/y$f;->e:Ljava/lang/String;

    .line 517
    iget-object v5, v1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v1, Lcom/android/settings/applications/y$g;->c:Landroid/content/pm/PackageItemInfo;

    .line 518
    iget-object v5, p0, Lcom/android/settings/applications/y$f;->n:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    .line 520
    :goto_1
    iget v6, p0, Lcom/android/settings/applications/y$f;->g:I

    iput v6, v1, Lcom/android/settings/applications/y$g;->g:I

    .line 521
    iput-object p2, v1, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 522
    iget-wide v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget-wide v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    goto :goto_2

    :cond_3
    const-wide/16 v6, -0x1

    .line 523
    :goto_2
    iget-wide v8, v1, Lcom/android/settings/applications/y$g;->h:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_4

    .line 524
    iput-wide v6, v1, Lcom/android/settings/applications/y$g;->h:J

    move v5, v4

    .line 527
    :cond_4
    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v6, :cond_6

    .line 528
    iget-boolean v6, v1, Lcom/android/settings/applications/y$g;->p:Z

    if-eqz v6, :cond_5

    .line 529
    iput-boolean v3, v1, Lcom/android/settings/applications/y$g;->p:Z

    move v5, v4

    .line 533
    :cond_5
    :try_start_1
    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 534
    iget p2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12141a

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/applications/y$g;->f:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 538
    :catch_1
    iput-object v2, v1, Lcom/android/settings/applications/y$g;->f:Ljava/lang/String;

    goto :goto_3

    .line 541
    :cond_6
    iget-boolean p2, v1, Lcom/android/settings/applications/y$g;->p:Z

    if-nez p2, :cond_7

    .line 542
    iput-boolean v4, v1, Lcom/android/settings/applications/y$g;->p:Z

    move v5, v4

    .line 545
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f121420

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/applications/y$g;->f:Ljava/lang/String;

    :goto_3
    return v5
.end method

.method final a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6

    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 572
    iget-object v4, p0, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/y$f;

    .line 573
    iget-object v5, v4, Lcom/android/settings/applications/y$f;->s:Lcom/android/settings/applications/y$f;

    if-eq v5, p0, :cond_0

    .line 575
    iput-object p0, v4, Lcom/android/settings/applications/y$f;->s:Lcom/android/settings/applications/y$f;

    move v2, v3

    .line 577
    :cond_0
    iput p3, v4, Lcom/android/settings/applications/y$f;->g:I

    .line 578
    invoke-virtual {v4, p2}, Lcom/android/settings/applications/y$f;->a(Landroid/content/pm/PackageManager;)V

    .line 579
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/settings/applications/y$f;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :cond_1
    iget p1, p0, Lcom/android/settings/applications/y$f;->t:I

    iget-object p2, p0, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 584
    iget-object p1, p0, Lcom/android/settings/applications/y$f;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/y$f;->t:I

    move v2, v3

    :cond_2
    return v2
.end method
