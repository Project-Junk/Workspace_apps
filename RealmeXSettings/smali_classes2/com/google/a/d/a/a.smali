.class public abstract Lcom/google/a/d/a/a;
.super Lcom/google/a/d/a/a/a;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/a/d/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/d/a/a$g;,
        Lcom/google/a/d/a/a$e;,
        Lcom/google/a/d/a/a$j;,
        Lcom/google/a/d/a/a$a;,
        Lcom/google/a/d/a/a$f;,
        Lcom/google/a/d/a/a$b;,
        Lcom/google/a/d/a/a$c;,
        Lcom/google/a/d/a/a$d;,
        Lcom/google/a/d/a/a$k;,
        Lcom/google/a/d/a/a$i;,
        Lcom/google/a/d/a/a$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/d/a/a/a;",
        "Lcom/google/a/d/a/f<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Lcom/google/a/d/a/a$a;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private volatile e:Ljava/lang/Object;

.field private volatile f:Lcom/google/a/d/a/a$d;

.field private volatile g:Lcom/google/a/d/a/a$k;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 73
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/a/d/a/a;->a:Z

    .line 123
    const-class v0, Lcom/google/a/d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/a/d/a/a;->b:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 137
    :try_start_0
    new-instance v2, Lcom/google/a/d/a/a$j;

    invoke-direct {v2, v0}, Lcom/google/a/d/a/a$j;-><init>(B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 144
    :try_start_1
    new-instance v9, Lcom/google/a/d/a/a$e;

    const-class v3, Lcom/google/a/d/a/a$k;

    const-class v4, Ljava/lang/Thread;

    const-string v5, "b"

    .line 146
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v3, Lcom/google/a/d/a/a$k;

    const-class v5, Lcom/google/a/d/a/a$k;

    const-string v6, "c"

    .line 147
    invoke-static {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/google/a/d/a/a;

    const-class v6, Lcom/google/a/d/a/a$k;

    const-string v7, "g"

    .line 148
    invoke-static {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v3, Lcom/google/a/d/a/a;

    const-class v7, Lcom/google/a/d/a/a$d;

    const-string v8, "f"

    .line 149
    invoke-static {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v3, Lcom/google/a/d/a/a;

    const-class v8, Ljava/lang/Object;

    const-string v10, "e"

    .line 150
    invoke-static {v3, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/a/d/a/a$e;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    move-object v2, v9

    goto :goto_0

    :catch_1
    move-exception v1

    .line 157
    new-instance v3, Lcom/google/a/d/a/a$g;

    invoke-direct {v3, v0}, Lcom/google/a/d/a/a$g;-><init>(B)V

    move-object v0, v2

    move-object v2, v3

    .line 160
    :goto_0
    sput-object v2, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    .line 165
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v1, :cond_0

    .line 170
    sget-object v2, Lcom/google/a/d/a/a;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    sget-object v0, Lcom/google/a/d/a/a;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/a/d/a/a;->d:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/google/a/d/a/a/a;-><init>()V

    return-void
.end method

.method private a(Lcom/google/a/d/a/a$d;)Lcom/google/a/d/a/a$d;
    .locals 4

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a/a;->f:Lcom/google/a/d/a/a$d;

    .line 1048
    sget-object v1, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    sget-object v2, Lcom/google/a/d/a/a$d;->a:Lcom/google/a/d/a/a$d;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$d;Lcom/google/a/d/a/a$d;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 1052
    iget-object v1, p1, Lcom/google/a/d/a/a$d;->d:Lcom/google/a/d/a/a$d;

    .line 1053
    iput-object v0, p1, Lcom/google/a/d/a/a$d;->d:Lcom/google/a/d/a/a$d;

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$d;)Lcom/google/a/d/a/a$d;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/a/d/a/a;->f:Lcom/google/a/d/a/a$d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$k;)Lcom/google/a/d/a/a$k;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/a/d/a/a;->g:Lcom/google/a/d/a/a$k;

    return-object p1
.end method

.method static synthetic a(Lcom/google/a/d/a/a;)Ljava/lang/Object;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/google/a/d/a/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/google/a/d/a/f;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/google/a/d/a/a;->b(Lcom/google/a/d/a/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 911
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 918
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 920
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1350
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private a(Lcom/google/a/d/a/a$k;)V
    .locals 4

    const/4 v0, 0x0

    .line 224
    iput-object v0, p1, Lcom/google/a/d/a/a$k;->b:Ljava/lang/Thread;

    .line 228
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/a/d/a/a;->g:Lcom/google/a/d/a/a$k;

    .line 229
    sget-object v1, Lcom/google/a/d/a/a$k;->a:Lcom/google/a/d/a/a$k;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 234
    iget-object v2, p1, Lcom/google/a/d/a/a$k;->c:Lcom/google/a/d/a/a$k;

    .line 235
    iget-object v3, p1, Lcom/google/a/d/a/a$k;->b:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 238
    iput-object v2, v1, Lcom/google/a/d/a/a$k;->c:Lcom/google/a/d/a/a$k;

    .line 239
    iget-object p1, v1, Lcom/google/a/d/a/a$k;->b:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    .line 242
    :cond_3
    sget-object v3, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$k;Lcom/google/a/d/a/a$k;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1109
    :try_start_0
    invoke-static {p0}, Lcom/google/a/d/a/a;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 1110
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/google/a/d/a/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 1116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string v0, "CANCELLED"

    .line 1114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 1112
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic b()Lcom/google/a/d/a/a$a;
    .locals 1

    .line 67
    sget-object v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    return-object v0
.end method

.method private static b(Lcom/google/a/d/a/f;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 833
    instance-of v1, p0, Lcom/google/a/d/a/a$h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 838
    check-cast p0, Lcom/google/a/d/a/a;

    iget-object p0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    .line 839
    instance-of v0, p0, Lcom/google/a/d/a/a$b;

    if-eqz v0, :cond_1

    .line 843
    move-object v0, p0

    check-cast v0, Lcom/google/a/d/a/a$b;

    .line 844
    iget-boolean v1, v0, Lcom/google/a/d/a/a$b;->c:Z

    if-eqz v1, :cond_1

    .line 845
    iget-object p0, v0, Lcom/google/a/d/a/a$b;->d:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/a/d/a/a$b;

    iget-object v0, v0, Lcom/google/a/d/a/a$b;->d:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/google/a/d/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/a/d/a/a$b;->b:Lcom/google/a/d/a/a$b;

    :cond_1
    :goto_0
    return-object p0

    .line 853
    :cond_2
    instance-of v1, p0, Lcom/google/a/d/a/a/a;

    if-eqz v1, :cond_3

    .line 854
    move-object v1, p0

    check-cast v1, Lcom/google/a/d/a/a/a;

    .line 855
    invoke-static {v1}, Lcom/google/a/d/a/a/b;->a(Lcom/google/a/d/a/a/a;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 857
    new-instance p0, Lcom/google/a/d/a/a$c;

    invoke-direct {p0, v1}, Lcom/google/a/d/a/a$c;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 860
    :cond_3
    invoke-interface {p0}, Lcom/google/a/d/a/f;->isCancelled()Z

    move-result v1

    .line 862
    sget-boolean v3, Lcom/google/a/d/a/a;->a:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 863
    sget-object p0, Lcom/google/a/d/a/a$b;->b:Lcom/google/a/d/a/a$b;

    return-object p0

    .line 867
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/a/d/a/a;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 869
    new-instance v3, Lcom/google/a/d/a/a$b;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/a/d/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 876
    sget-object p0, Lcom/google/a/d/a/a;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_6
    return-object v3

    :catch_0
    move-exception p0

    .line 898
    new-instance v0, Lcom/google/a/d/a/a$c;

    invoke-direct {v0, p0}, Lcom/google/a/d/a/a$c;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-exception v0

    if-nez v1, :cond_7

    .line 890
    new-instance v1, Lcom/google/a/d/a/a$c;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/a/d/a/a$c;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 896
    :cond_7
    new-instance p0, Lcom/google/a/d/a/a$b;

    invoke-direct {p0, v2, v0}, Lcom/google/a/d/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_2
    move-exception v3

    if-eqz v1, :cond_8

    .line 879
    new-instance v1, Lcom/google/a/d/a/a$b;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/a/d/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 887
    :cond_8
    new-instance p0, Lcom/google/a/d/a/a$c;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/d/a/a$c;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 549
    instance-of v0, p0, Lcom/google/a/d/a/a$b;

    if-nez v0, :cond_2

    .line 551
    instance-of v0, p0, Lcom/google/a/d/a/a$c;

    if-nez v0, :cond_1

    .line 553
    sget-object v0, Lcom/google/a/d/a/a;->d:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 552
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/a/d/a/a$c;

    iget-object p0, p0, Lcom/google/a/d/a/a$c;->b:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 550
    :cond_2
    check-cast p0, Lcom/google/a/d/a/a$b;

    iget-object p0, p0, Lcom/google/a/d/a/a$b;->d:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p0}, Lcom/google/a/d/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method static synthetic b(Lcom/google/a/d/a/a;)V
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/google/a/d/a/a;->e(Lcom/google/a/d/a/a;)V

    return-void
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1138
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1143
    sget-object v1, Lcom/google/a/d/a/a;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuntimeException while executing runnable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c(Lcom/google/a/d/a/a;)Lcom/google/a/d/a/a$k;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/a/d/a/a;->g:Lcom/google/a/d/a/a$k;

    return-object p0
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-ne p1, p0, :cond_0

    const-string p1, "this future"

    return-object p1

    .line 1129
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/google/a/d/a/a;->a:Z

    return v0
.end method

.method static synthetic d(Lcom/google/a/d/a/a;)Lcom/google/a/d/a/a$d;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/a/d/a/a;->f:Lcom/google/a/d/a/a$d;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a/a;->g:Lcom/google/a/d/a/a$k;

    .line 1028
    sget-object v1, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    sget-object v2, Lcom/google/a/d/a/a$k;->a:Lcom/google/a/d/a/a$k;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$k;Lcom/google/a/d/a/a$k;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    .line 1030
    invoke-virtual {v0}, Lcom/google/a/d/a/a$k;->a()V

    .line 1029
    iget-object v0, v0, Lcom/google/a/d/a/a$k;->c:Lcom/google/a/d/a/a$k;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static e(Lcom/google/a/d/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a/a<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/google/a/d/a/a;->d()V

    .line 936
    invoke-direct {p0, v0}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a$d;)Lcom/google/a/d/a/a$d;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 940
    iget-object v0, p0, Lcom/google/a/d/a/a$d;->d:Lcom/google/a/d/a/a$d;

    .line 941
    iget-object v1, p0, Lcom/google/a/d/a/a$d;->b:Ljava/lang/Runnable;

    .line 942
    instance-of v2, v1, Lcom/google/a/d/a/a$f;

    if-eqz v2, :cond_1

    .line 943
    check-cast v1, Lcom/google/a/d/a/a$f;

    .line 949
    iget-object p0, v1, Lcom/google/a/d/a/a$f;->a:Lcom/google/a/d/a/a;

    .line 950
    iget-object v2, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    if-ne v2, v1, :cond_2

    .line 951
    iget-object v2, v1, Lcom/google/a/d/a/a$f;->b:Lcom/google/a/d/a/f;

    invoke-static {v2}, Lcom/google/a/d/a/a;->b(Lcom/google/a/d/a/f;)Ljava/lang/Object;

    move-result-object v2

    .line 952
    sget-object v3, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    invoke-virtual {v3, p0, v1, v2}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 958
    :cond_1
    iget-object p0, p0, Lcom/google/a/d/a/a$d;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lcom/google/a/d/a/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .locals 2

    .line 1004
    instance-of v0, p0, Lcom/google/a/d/a/a$h;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    .line 1006
    instance-of v1, v0, Lcom/google/a/d/a/a$c;

    if-eqz v1, :cond_0

    .line 1007
    check-cast v0, Lcom/google/a/d/a/a$c;

    iget-object v0, v0, Lcom/google/a/d/a/a$c;->b:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Runnable was null."

    .line 681
    invoke-static {p1, v0}, Lcom/google/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 682
    invoke-static {p2, v0}, Lcom/google/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0}, Lcom/google/a/d/a/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/google/a/d/a/a;->f:Lcom/google/a/d/a/a$d;

    .line 694
    sget-object v1, Lcom/google/a/d/a/a$d;->a:Lcom/google/a/d/a/a$d;

    if-eq v0, v1, :cond_2

    .line 695
    new-instance v1, Lcom/google/a/d/a/a$d;

    invoke-direct {v1, p1, p2}, Lcom/google/a/d/a/a$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 697
    :cond_0
    iput-object v0, v1, Lcom/google/a/d/a/a$d;->d:Lcom/google/a/d/a/a$d;

    .line 698
    sget-object v2, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$d;Lcom/google/a/d/a/a$d;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/google/a/d/a/a;->f:Lcom/google/a/d/a/a$d;

    .line 702
    sget-object v2, Lcom/google/a/d/a/a$d;->a:Lcom/google/a/d/a/a$d;

    if-ne v0, v2, :cond_0

    .line 707
    :cond_2
    invoke-static {p1, p2}, Lcom/google/a/d/a/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 724
    sget-object p1, Lcom/google/a/d/a/a;->d:Ljava/lang/Object;

    .line 725
    :cond_0
    sget-object v0, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 726
    invoke-static {p0}, Lcom/google/a/d/a/a;->e(Lcom/google/a/d/a/a;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 2

    .line 746
    new-instance v0, Lcom/google/a/d/a/a$c;

    invoke-static {p1}, Lcom/google/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/a/d/a/a$c;-><init>(Ljava/lang/Throwable;)V

    .line 747
    sget-object p1, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 748
    invoke-static {p0}, Lcom/google/a/d/a/a;->e(Lcom/google/a/d/a/a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cancel(Z)Z
    .locals 7

    .line 590
    iget-object v0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 592
    :goto_0
    instance-of v4, v0, Lcom/google/a/d/a/a$f;

    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 595
    sget-boolean v3, Lcom/google/a/d/a/a;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/a/d/a/a$b;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/a/d/a/a$b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lcom/google/a/d/a/a$b;->a:Lcom/google/a/d/a/a$b;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/google/a/d/a/a$b;->b:Lcom/google/a/d/a/a$b;

    :goto_1
    move-object v4, v0

    move v5, v2

    move-object v0, p0

    .line 604
    :cond_3
    :goto_2
    sget-object v6, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    invoke-virtual {v6, v0, v4, v3}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 611
    invoke-static {v0}, Lcom/google/a/d/a/a;->e(Lcom/google/a/d/a/a;)V

    .line 612
    instance-of v0, v4, Lcom/google/a/d/a/a$f;

    if-eqz v0, :cond_9

    .line 615
    check-cast v4, Lcom/google/a/d/a/a$f;

    iget-object v0, v4, Lcom/google/a/d/a/a$f;->b:Lcom/google/a/d/a/f;

    .line 616
    instance-of v4, v0, Lcom/google/a/d/a/a$h;

    if-eqz v4, :cond_6

    .line 624
    check-cast v0, Lcom/google/a/d/a/a;

    .line 625
    iget-object v4, v0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    if-nez v4, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v2

    .line 626
    :goto_3
    instance-of v6, v4, Lcom/google/a/d/a/a$f;

    or-int/2addr v5, v6

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    goto :goto_2

    .line 632
    :cond_6
    invoke-interface {v0, p1}, Lcom/google/a/d/a/f;->cancel(Z)Z

    goto :goto_4

    .line 638
    :cond_7
    iget-object v4, v0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    .line 639
    instance-of v6, v4, Lcom/google/a/d/a/a$f;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_8
    move v1, v2

    :cond_9
    :goto_4
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 508
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 511
    iget-object v0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 512
    :goto_0
    instance-of v4, v0, Lcom/google/a/d/a/a$f;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 513
    invoke-static {v0}, Lcom/google/a/d/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/google/a/d/a/a;->g:Lcom/google/a/d/a/a$k;

    .line 516
    sget-object v3, Lcom/google/a/d/a/a$k;->a:Lcom/google/a/d/a/a$k;

    if-eq v0, v3, :cond_9

    .line 517
    new-instance v3, Lcom/google/a/d/a/a$k;

    invoke-direct {v3, v2}, Lcom/google/a/d/a/a$k;-><init>(B)V

    .line 519
    :cond_3
    invoke-virtual {v3, v0}, Lcom/google/a/d/a/a$k;->a(Lcom/google/a/d/a/a$k;)V

    .line 520
    sget-object v4, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$k;Lcom/google/a/d/a/a$k;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 523
    :cond_4
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 525
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 531
    iget-object v0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    move v4, v2

    .line 532
    :goto_2
    instance-of v5, v0, Lcom/google/a/d/a/a$f;

    if-nez v5, :cond_6

    move v5, v1

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 533
    invoke-static {v0}, Lcom/google/a/d/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 526
    :cond_7
    invoke-direct {p0, v3}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a$k;)V

    .line 527
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 537
    :cond_8
    iget-object v0, p0, Lcom/google/a/d/a/a;->g:Lcom/google/a/d/a/a$k;

    .line 538
    sget-object v4, Lcom/google/a/d/a/a$k;->a:Lcom/google/a/d/a/a$k;

    if-ne v0, v4, :cond_3

    .line 542
    :cond_9
    iget-object v0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/d/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 509
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 400
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 402
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_19

    .line 405
    iget-object v6, v0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v8

    .line 406
    :goto_0
    instance-of v10, v6, Lcom/google/a/d/a/a$f;

    if-nez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    .line 407
    invoke-static {v6}, Lcom/google/a/d/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_3

    .line 410
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_2

    :cond_3
    move-wide v11, v9

    :goto_2
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_c

    .line 413
    iget-object v6, v0, Lcom/google/a/d/a/a;->g:Lcom/google/a/d/a/a$k;

    .line 414
    sget-object v15, Lcom/google/a/d/a/a$k;->a:Lcom/google/a/d/a/a$k;

    if-eq v6, v15, :cond_b

    .line 415
    new-instance v15, Lcom/google/a/d/a/a$k;

    invoke-direct {v15, v8}, Lcom/google/a/d/a/a$k;-><init>(B)V

    .line 417
    :cond_4
    invoke-virtual {v15, v6}, Lcom/google/a/d/a/a$k;->a(Lcom/google/a/d/a/a$k;)V

    .line 418
    sget-object v7, Lcom/google/a/d/a/a;->c:Lcom/google/a/d/a/a$a;

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Lcom/google/a/d/a/a$k;Lcom/google/a/d/a/a$k;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 420
    :cond_5
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 422
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_9

    .line 429
    iget-object v4, v0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    move v5, v8

    .line 430
    :goto_3
    instance-of v6, v4, Lcom/google/a/d/a/a$f;

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    move v6, v8

    :goto_4
    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    .line 431
    invoke-static {v4}, Lcom/google/a/d/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 435
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_5

    .line 438
    invoke-direct {v0, v15}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a$k;)V

    goto :goto_5

    .line 423
    :cond_9
    invoke-direct {v0, v15}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a$k;)V

    .line 424
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 443
    :cond_a
    iget-object v6, v0, Lcom/google/a/d/a/a;->g:Lcom/google/a/d/a/a$k;

    .line 444
    sget-object v7, Lcom/google/a/d/a/a$k;->a:Lcom/google/a/d/a/a$k;

    if-ne v6, v7, :cond_4

    .line 448
    :cond_b
    iget-object v1, v0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/a/d/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_c
    :goto_5
    cmp-long v6, v4, v9

    if-lez v6, :cond_11

    .line 453
    iget-object v4, v0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    if-eqz v4, :cond_d

    const/4 v5, 0x1

    goto :goto_6

    :cond_d
    move v5, v8

    .line 454
    :goto_6
    instance-of v6, v4, Lcom/google/a/d/a/a$f;

    if-nez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_7

    :cond_e
    move v6, v8

    :goto_7
    and-int/2addr v5, v6

    if-eqz v5, :cond_f

    .line 455
    invoke-static {v4}, Lcom/google/a/d/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 457
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_10

    .line 460
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_5

    .line 458
    :cond_10
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 463
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/a/d/a/a;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 465
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Waited "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_17

    .line 469
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (plus "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 471
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 472
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_13

    cmp-long v9, v4, v13

    if-lez v9, :cond_12

    goto :goto_8

    :cond_12
    move/from16 v16, v8

    goto :goto_9

    :cond_13
    :goto_8
    const/16 v16, 0x1

    :goto_9
    if-lez v3, :cond_15

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_14

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_15
    if-eqz v16, :cond_16

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/a/d/a/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 492
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_18
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_19
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    .line 571
    instance-of v0, v0, Lcom/google/a/d/a/a$b;

    return v0
.end method

.method public isDone()Z
    .locals 4

    .line 564
    iget-object v0, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 565
    :goto_0
    instance-of v0, v0, Lcom/google/a/d/a/a$f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int v0, v3, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {p0}, Lcom/google/a/d/a/a;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 1064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/d/a/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1066
    invoke-direct {p0, v0}, Lcom/google/a/d/a/a;->a(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 2096
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/a/d/a/a;->e:Ljava/lang/Object;

    .line 2097
    instance-of v3, v1, Lcom/google/a/d/a/a$f;

    if-eqz v3, :cond_2

    .line 2098
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setFuture=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/google/a/d/a/a$f;

    iget-object v1, v1, Lcom/google/a/d/a/a$f;->b:Lcom/google/a/d/a/f;

    invoke-direct {p0, v1}, Lcom/google/a/d/a/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2099
    :cond_2
    instance-of v1, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_3

    .line 2100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remaining delay=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2101
    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown from implementation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 1078
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "PENDING, info=["

    .line 1079
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1080
    :cond_4
    invoke-virtual {p0}, Lcom/google/a/d/a/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1081
    invoke-direct {p0, v0}, Lcom/google/a/d/a/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_5
    const-string v1, "PENDING"

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
