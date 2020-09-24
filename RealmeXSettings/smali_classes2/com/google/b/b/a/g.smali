.class public final Lcom/google/b/b/a/g;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/b/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/b/b/a/g$a;
    }
.end annotation


# instance fields
.field final a:Z

.field private final b:Lcom/google/b/b/c;


# direct methods
.method public constructor <init>(Lcom/google/b/b/c;Z)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/b/b/a/g;->b:Lcom/google/b/b/c;

    .line 112
    iput-boolean p2, p0, Lcom/google/b/b/a/g;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/f;Lcom/google/b/c/a;)Lcom/google/b/u;
    .locals 11
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

    .line 1101
    iget-object v0, p2, Lcom/google/b/c/a;->b:Ljava/lang/reflect/Type;

    .line 2094
    iget-object v1, p2, Lcom/google/b/c/a;->a:Ljava/lang/Class;

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/google/b/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/google/b/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    aget-object v2, v0, v1

    .line 2140
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 2142
    :cond_1
    invoke-static {v2}, Lcom/google/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/b/c/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/b/f;->a(Lcom/google/b/c/a;)Lcom/google/b/u;

    move-result-object v2

    goto :goto_1

    .line 2140
    :cond_2
    :goto_0
    sget-object v2, Lcom/google/b/b/a/n;->f:Lcom/google/b/u;

    :goto_1
    move-object v7, v2

    const/4 v2, 0x1

    .line 126
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/b/c/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/b/f;->a(Lcom/google/b/c/a;)Lcom/google/b/u;

    move-result-object v9

    .line 127
    iget-object v3, p0, Lcom/google/b/b/a/g;->b:Lcom/google/b/b/c;

    invoke-virtual {v3, p2}, Lcom/google/b/b/c;->a(Lcom/google/b/c/a;)Lcom/google/b/b/i;

    move-result-object v10

    .line 131
    new-instance p2, Lcom/google/b/b/a/g$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/b/b/a/g$a;-><init>(Lcom/google/b/b/a/g;Lcom/google/b/f;Ljava/lang/reflect/Type;Lcom/google/b/u;Ljava/lang/reflect/Type;Lcom/google/b/u;Lcom/google/b/b/i;)V

    return-object p2
.end method
