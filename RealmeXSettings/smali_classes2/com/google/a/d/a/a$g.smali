.class final Lcom/google/a/d/a/a$g;
.super Lcom/google/a/d/a/a$a;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1303
    invoke-direct {p0, v0}, Lcom/google/a/d/a/a$a;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1303
    invoke-direct {p0}, Lcom/google/a/d/a/a$g;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/d/a/a$k;Lcom/google/a/d/a/a$k;)V
    .locals 0

    .line 1311
    iput-object p2, p1, Lcom/google/a/d/a/a$k;->c:Lcom/google/a/d/a/a$k;

    return-void
.end method

.method final a(Lcom/google/a/d/a/a$k;Ljava/lang/Thread;)V
    .locals 0

    .line 1306
    iput-object p2, p1, Lcom/google/a/d/a/a$k;->b:Ljava/lang/Thread;

    return-void
.end method

.method final a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$d;Lcom/google/a/d/a/a$d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a/a<",
            "*>;",
            "Lcom/google/a/d/a/a$d;",
            "Lcom/google/a/d/a/a$d;",
            ")Z"
        }
    .end annotation

    .line 1327
    monitor-enter p1

    .line 1328
    :try_start_0
    invoke-static {p1}, Lcom/google/a/d/a/a;->d(Lcom/google/a/d/a/a;)Lcom/google/a/d/a/a$d;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1329
    invoke-static {p1, p3}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$d;)Lcom/google/a/d/a/a$d;

    const/4 p2, 0x1

    .line 1330
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1332
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1333
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$k;Lcom/google/a/d/a/a$k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a/a<",
            "*>;",
            "Lcom/google/a/d/a/a$k;",
            "Lcom/google/a/d/a/a$k;",
            ")Z"
        }
    .end annotation

    .line 1316
    monitor-enter p1

    .line 1317
    :try_start_0
    invoke-static {p1}, Lcom/google/a/d/a/a;->c(Lcom/google/a/d/a/a;)Lcom/google/a/d/a/a$k;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1318
    invoke-static {p1, p3}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$k;)Lcom/google/a/d/a/a$k;

    const/4 p2, 0x1

    .line 1319
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1321
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1322
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final a(Lcom/google/a/d/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1338
    monitor-enter p1

    .line 1339
    :try_start_0
    invoke-static {p1}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1340
    invoke-static {p1, p3}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1341
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1343
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1344
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
