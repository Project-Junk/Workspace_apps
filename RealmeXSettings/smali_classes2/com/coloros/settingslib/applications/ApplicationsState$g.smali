.class public Lcom/coloros/settingslib/applications/ApplicationsState$g;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lcom/coloros/settingslib/applications/ApplicationsState;


# direct methods
.method protected constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState;)V
    .locals 0

    .line 1507
    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1509
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1510
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1511
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 1512
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1513
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->f:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1515
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1516
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1517
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1518
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->f:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 1521
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 1522
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1523
    iget-object v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState;->f:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method final b()V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState;->f:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1532
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 1533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1534
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1535
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1536
    :goto_0
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_0

    .line 1537
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->d(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1539
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1541
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1542
    :goto_1
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 1543
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->e(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 1545
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1546
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1547
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1548
    :goto_2
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 1549
    iget-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->f(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1551
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1552
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "android.intent.action.USER_ADDED"

    .line 1572
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v0, :cond_7

    .line 1573
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Lcom/coloros/settingslib/applications/ApplicationsState;I)V

    return-void

    :cond_7
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1574
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1575
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settingslib/applications/ApplicationsState;->c(Lcom/coloros/settingslib/applications/ApplicationsState;I)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    const-string v2, "android.intent.extra.changed_package_list"

    .line 1559
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 1560
    array-length v2, p2

    if-nez v2, :cond_a

    goto :goto_6

    .line 1564
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1566
    array-length p1, p2

    move v0, v1

    :goto_4
    if-ge v0, p1, :cond_c

    aget-object v2, p2, v0

    move v3, v1

    .line 1567
    :goto_5
    iget-object v4, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 1568
    iget-object v4, p0, Lcom/coloros/settingslib/applications/ApplicationsState$g;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v5, v4, Lcom/coloros/settingslib/applications/ApplicationsState;->v:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/coloros/settingslib/applications/ApplicationsState;->f(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    return-void
.end method
