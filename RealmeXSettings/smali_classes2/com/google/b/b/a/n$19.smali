.class final Lcom/google/b/b/a/n$19;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/b/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/b/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/f;Lcom/google/b/c/a;)Lcom/google/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/f;",
            "Lcom/google/b/c/a<",
            "TT;>;)",
            "Lcom/google/b/u<",
            "TT;>;"
        }
    .end annotation

    .line 1094
    iget-object p2, p2, Lcom/google/b/c/a;->a:Ljava/lang/Class;

    .line 575
    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 579
    :cond_0
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lcom/google/b/f;->a(Ljava/lang/Class;)Lcom/google/b/u;

    move-result-object p1

    .line 580
    new-instance p2, Lcom/google/b/b/a/n$19$1;

    invoke-direct {p2, p0, p1}, Lcom/google/b/b/a/n$19$1;-><init>(Lcom/google/b/b/a/n$19;Lcom/google/b/u;)V

    return-object p2
.end method
