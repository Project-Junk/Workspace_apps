.class final Lcom/google/a/d/a/a$k;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation


# static fields
.field static final a:Lcom/google/a/d/a/a$k;


# instance fields
.field volatile b:Ljava/lang/Thread;

.field volatile c:Lcom/google/a/d/a/a$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Lcom/google/a/d/a/a$k;

    invoke-direct {v0}, Lcom/google/a/d/a/a$k;-><init>()V

    sput-object v0, Lcom/google/a/d/a/a$k;->a:Lcom/google/a/d/a/a$k;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Lcom/google/a/d/a/a;->b()Lcom/google/a/d/a/a$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a$k;Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/a/d/a/a$k;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 206
    iput-object v1, p0, Lcom/google/a/d/a/a$k;->b:Ljava/lang/Thread;

    .line 207
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/a/d/a/a$k;)V
    .locals 1

    .line 197
    invoke-static {}, Lcom/google/a/d/a/a;->b()Lcom/google/a/d/a/a$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a$k;Lcom/google/a/d/a/a$k;)V

    return-void
.end method
