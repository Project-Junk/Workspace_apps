.class final Lcom/google/b/f$4;
.super Lcom/google/b/u;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/u<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/u;


# direct methods
.method constructor <init>(Lcom/google/b/u;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/google/b/f$4;->a:Lcom/google/b/u;

    invoke-direct {p0}, Lcom/google/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Lcom/google/b/f$4;->a:Lcom/google/b/u;

    invoke-virtual {v0, p1}, Lcom/google/b/u;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 1394
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/b/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2390
    iget-object v0, p0, Lcom/google/b/f$4;->a:Lcom/google/b/u;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/b/u;->a(Lcom/google/b/d/c;Ljava/lang/Object;)V

    return-void
.end method
