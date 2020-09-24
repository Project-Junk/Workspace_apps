.class final Lcom/google/b/b/a/h$1;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Lcom/google/b/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/b/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
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

    .line 41
    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 42
    new-instance p2, Lcom/google/b/b/a/h;

    invoke-direct {p2, p1}, Lcom/google/b/b/a/h;-><init>(Lcom/google/b/f;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
