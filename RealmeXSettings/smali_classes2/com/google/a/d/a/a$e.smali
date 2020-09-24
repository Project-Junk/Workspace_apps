.class final Lcom/google/a/d/a/a$e;
.super Lcom/google/a/d/a/a$a;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a$k;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a$k;",
            "Lcom/google/a/d/a/a$k;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a;",
            "Lcom/google/a/d/a/a$k;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a;",
            "Lcom/google/a/d/a/a$d;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a$k;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a$k;",
            "Lcom/google/a/d/a/a$k;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a;",
            "Lcom/google/a/d/a/a$k;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a;",
            "Lcom/google/a/d/a/a$d;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/a/d/a/a;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1263
    invoke-direct {p0, v0}, Lcom/google/a/d/a/a$a;-><init>(B)V

    .line 1264
    iput-object p1, p0, Lcom/google/a/d/a/a$e;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1265
    iput-object p2, p0, Lcom/google/a/d/a/a$e;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1266
    iput-object p3, p0, Lcom/google/a/d/a/a$e;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1267
    iput-object p4, p0, Lcom/google/a/d/a/a$e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1268
    iput-object p5, p0, Lcom/google/a/d/a/a$e;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/d/a/a$k;Lcom/google/a/d/a/a$k;)V
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/google/a/d/a/a$e;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/a/d/a/a$k;Ljava/lang/Thread;)V
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/google/a/d/a/a$e;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 1288
    iget-object v0, p0, Lcom/google/a/d/a/a$e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 1283
    iget-object v0, p0, Lcom/google/a/d/a/a$e;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 1293
    iget-object v0, p0, Lcom/google/a/d/a/a$e;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
