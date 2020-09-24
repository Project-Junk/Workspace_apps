.class public final Lcom/google/a/b/f;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/f$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/a/b/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lcom/google/a/b/f$a<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 896
    invoke-static {p0, v0}, Lcom/google/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 897
    invoke-static {p1, v0}, Lcom/google/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    new-instance v0, Lcom/google/a/b/f$1;

    invoke-direct {v0, p0, p1}, Lcom/google/a/b/f$1;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method
