.class public abstract Lcom/b/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/j$1;

    invoke-direct {v0, p0}, Lcom/b/a/j$1;-><init>(Lcom/b/a/j;)V

    return-object v0
.end method

.method public abstract a(Lcom/b/a/b/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/b/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/b/a/b/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/b/c;",
            "TT;)V"
        }
    .end annotation
.end method
