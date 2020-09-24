.class final Lcom/coloros/settings/feature/security/location/c$c;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/c;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/settings/feature/security/location/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/settings/feature/security/location/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/settings/feature/security/location/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/security/location/c;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c$c;->a:Lcom/coloros/settings/feature/security/location/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 333
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c$c;->b:Ljava/util/Set;

    .line 339
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c$c;->c:Ljava/util/Set;

    .line 346
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c$c;->d:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/security/location/c;B)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/location/c$c;-><init>(Lcom/coloros/settings/feature/security/location/c;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v0, 0x3

    const-string v1, "SettingsInjector"

    .line 352
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "handleMessage start: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v2, v6, :cond_4

    if-eq v2, v7, :cond_2

    if-eq v2, v0, :cond_1

    .line 378
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "Unexpected what: "

    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/coloros/settings/feature/security/location/c$b;

    .line 370
    iget-object v8, p0, Lcom/coloros/settings/feature/security/location/c$c;->c:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 371
    iget-object v8, p0, Lcom/coloros/settings/feature/security/location/c$c;->d:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x5

    .line 372
    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 373
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Timed out after "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coloros/settings/feature/security/location/c$b;->a()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " millis trying to get status for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/coloros/settings/feature/security/location/c$b;

    .line 1529
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v8, v2, Lcom/coloros/settings/feature/security/location/c$b;->c:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    .line 1530
    invoke-virtual {v2}, Lcom/coloros/settings/feature/security/location/c$b;->a()J

    move-result-wide v8

    .line 1531
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " update took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " millis"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_3
    iget-object v8, p0, Lcom/coloros/settings/feature/security/location/c$c;->c:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v8, p0, Lcom/coloros/settings/feature/security/location/c$c;->d:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {p0, v0, v2}, Lcom/coloros/settings/feature/security/location/c$c;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 359
    :cond_4
    iput-boolean v6, p0, Lcom/coloros/settings/feature/security/location/c$c;->e:Z

    .line 383
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_f

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v6, :cond_6

    goto/16 :goto_3

    .line 394
    :cond_6
    iget-boolean v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->e:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->d:Ljava/util/Set;

    .line 395
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 396
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "reloading because idle and reload requesteed "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_7
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->b:Ljava/util/Set;

    iget-object v6, p0, Lcom/coloros/settings/feature/security/location/c$c;->a:Lcom/coloros/settings/feature/security/location/c;

    .line 2068
    iget-object v6, v6, Lcom/coloros/settings/feature/security/location/c;->b:Ljava/util/Set;

    .line 400
    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 401
    iput-boolean v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->e:Z

    .line 405
    :cond_8
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 406
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    .line 407
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "nothing left to do for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    .line 412
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/settings/feature/security/location/c$b;

    .line 413
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2482
    iget-object v2, v6, Lcom/coloros/settings/feature/security/location/c$b;->d:Lcom/coloros/settings/feature/security/location/c;

    .line 3068
    iget-object v2, v2, Lcom/coloros/settings/feature/security/location/c;->a:Landroid/content/Context;

    const-string v8, "activity"

    .line 2483
    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2484
    iget-object v8, v6, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    iget-object v8, v8, Lcom/coloros/settings/feature/security/location/a;->e:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2485
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2486
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot start service as user "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    iget-object v4, v4, Lcom/coloros/settings/feature/security/location/a;->e:Landroid/os/UserHandle;

    .line 2487
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not running"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2486
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2491
    :cond_b
    new-instance v2, Lcom/coloros/settings/feature/security/location/c$b$1;

    invoke-direct {v2, v6}, Lcom/coloros/settings/feature/security/location/c$b$1;-><init>(Lcom/coloros/settings/feature/security/location/c$b;)V

    .line 2505
    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 2507
    iget-object v8, v6, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    .line 3112
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 3113
    iget-object v10, v8, Lcom/coloros/settings/feature/security/location/a;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/coloros/settings/feature/security/location/a;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "messenger"

    .line 2508
    invoke-virtual {v9, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2510
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": sending update intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/coloros/settings/feature/security/location/c$b;->c:J

    goto :goto_1

    .line 2515
    :cond_c
    iput-wide v4, v6, Lcom/coloros/settings/feature/security/location/c$b;->c:J

    .line 2520
    :goto_1
    iget-object v2, v6, Lcom/coloros/settings/feature/security/location/c$b;->d:Lcom/coloros/settings/feature/security/location/c;

    .line 4068
    iget-object v2, v2, Lcom/coloros/settings/feature/security/location/c;->a:Landroid/content/Context;

    .line 2520
    iget-object v4, v6, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    iget-object v4, v4, Lcom/coloros/settings/feature/security/location/a;->e:Landroid/os/UserHandle;

    invoke-virtual {v2, v9, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 417
    :cond_d
    :goto_2
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$c;->c:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {p0, v0, v6}, Lcom/coloros/settings/feature/security/location/c$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    .line 422
    invoke-virtual {p0, v2, v4, v5}, Lcom/coloros/settings/feature/security/location/c$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage end "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", started loading "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    .line 388
    :cond_f
    :goto_3
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "too many services already live for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusLoadingHandler{mSettingsToLoad="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/c$c;->b:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingsBeingLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/c$c;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimedOutSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/c$c;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReloadRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/location/c$c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
