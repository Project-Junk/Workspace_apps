.class final Lcom/android/settingslib/applications/ApplicationsState$e;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;B)V
    .locals 0

    .line 1407
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$e;-><init>(Lcom/android/settingslib/applications/ApplicationsState;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 1433
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1434
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1435
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1436
    :goto_0
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_0

    .line 1437
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->a(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1439
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1440
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1441
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1442
    :goto_1
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 1443
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 1445
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1446
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1447
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1448
    :goto_2
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 1449
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->c(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 1451
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1452
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "android.intent.action.USER_ADDED"

    .line 1472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v0, :cond_7

    .line 1473
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->a(Lcom/android/settingslib/applications/ApplicationsState;I)V

    return-void

    :cond_7
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1475
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->b(Lcom/android/settingslib/applications/ApplicationsState;I)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    const-string v2, "android.intent.extra.changed_package_list"

    .line 1459
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 1460
    array-length v2, p2

    if-nez v2, :cond_a

    goto :goto_6

    .line 1464
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1466
    array-length p1, p2

    move v0, v1

    :goto_4
    if-ge v0, p1, :cond_c

    aget-object v2, p2, v0

    move v3, v1

    .line 1467
    :goto_5
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 1468
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$e;->a:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/settingslib/applications/ApplicationsState;->c(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    return-void
.end method
