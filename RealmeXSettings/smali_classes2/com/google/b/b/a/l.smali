.class public final Lcom/google/b/b/a/l;
.super Lcom/google/b/u;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/b/b/a/l$a;,
        Lcom/google/b/b/a/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/b/f;

.field private final b:Lcom/google/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/b/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/b/v;

.field private final f:Lcom/google/b/b/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/a/l<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field private g:Lcom/google/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/u<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/b/r;Lcom/google/b/j;Lcom/google/b/f;Lcom/google/b/c/a;Lcom/google/b/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/r<",
            "TT;>;",
            "Lcom/google/b/j<",
            "TT;>;",
            "Lcom/google/b/f;",
            "Lcom/google/b/c/a<",
            "TT;>;",
            "Lcom/google/b/v;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/google/b/u;-><init>()V

    .line 47
    new-instance v0, Lcom/google/b/b/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/b/b/a/l$a;-><init>(Lcom/google/b/b/a/l;B)V

    iput-object v0, p0, Lcom/google/b/b/a/l;->f:Lcom/google/b/b/a/l$a;

    .line 54
    iput-object p1, p0, Lcom/google/b/b/a/l;->b:Lcom/google/b/r;

    .line 55
    iput-object p2, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/j;

    .line 56
    iput-object p3, p0, Lcom/google/b/b/a/l;->a:Lcom/google/b/f;

    .line 57
    iput-object p4, p0, Lcom/google/b/b/a/l;->d:Lcom/google/b/c/a;

    .line 58
    iput-object p5, p0, Lcom/google/b/b/a/l;->e:Lcom/google/b/v;

    return-void
.end method

.method private b()Lcom/google/b/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/u<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/b/b/a/l;->g:Lcom/google/b/u;

    if-eqz v0, :cond_0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/b/b/a/l;->a:Lcom/google/b/f;

    iget-object v1, p0, Lcom/google/b/b/a/l;->e:Lcom/google/b/v;

    iget-object v2, p0, Lcom/google/b/b/a/l;->d:Lcom/google/b/c/a;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/b/f;->a(Lcom/google/b/v;Lcom/google/b/c/a;)Lcom/google/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/a/l;->g:Lcom/google/b/u;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/j;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/google/b/b/a/l;->b()Lcom/google/b/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/b/u;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/google/b/b/l;->a(Lcom/google/b/d/a;)Lcom/google/b/k;

    move-result-object p1

    .line 1075
    instance-of v0, p1, Lcom/google/b/m;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/j;

    invoke-interface {v0, p1}, Lcom/google/b/j;->a(Lcom/google/b/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/b/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/b/b/a/l;->b:Lcom/google/b/r;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/google/b/b/a/l;->b()Lcom/google/b/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/b/u;->a(Lcom/google/b/d/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/google/b/d/c;->e()Lcom/google/b/d/c;

    return-void

    .line 81
    :cond_1
    invoke-interface {v0}, Lcom/google/b/r;->a()Lcom/google/b/k;

    move-result-object p2

    .line 82
    invoke-static {p2, p1}, Lcom/google/b/b/l;->a(Lcom/google/b/k;Lcom/google/b/d/c;)V

    return-void
.end method
