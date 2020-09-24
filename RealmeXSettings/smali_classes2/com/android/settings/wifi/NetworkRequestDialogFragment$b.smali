.class final Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;
.super Ljava/lang/Object;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/android/settingslib/wifi/WifiTracker;

.field final synthetic b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/android/settingslib/wifi/WifiTracker$b;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    new-instance p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;)V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->d:Lcom/android/settingslib/wifi/WifiTracker$b;

    .line 483
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->d:Lcom/android/settingslib/wifi/WifiTracker$b;

    invoke-static {p2, p1, p3}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->a(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    .line 485
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->b()Ljava/util/List;

    move-result-object v0

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/a;

    .line 1728
    iget-object v6, v4, Lcom/android/settingslib/wifi/a;->a:Ljava/lang/String;

    .line 514
    iget-object v7, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 515
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    .line 519
    iget-object v4, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ge v3, v5, :cond_1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lt v3, v5, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->b(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    :cond_2
    if-lez v3, :cond_3

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->c(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    :cond_3
    if-gez v3, :cond_4

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V

    goto :goto_1

    .line 536
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->d(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->b:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 493
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 494
    invoke-static {v0}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
