.class final Lcom/google/b/b/a/b$a;
.super Lcom/google/b/u;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/b/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/u<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/u<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/b/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/b/f;Ljava/lang/reflect/Type;Lcom/google/b/u;Lcom/google/b/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/b/u<",
            "TE;>;",
            "Lcom/google/b/b/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/google/b/u;-><init>()V

    .line 68
    new-instance v0, Lcom/google/b/b/a/m;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/b/b/a/m;-><init>(Lcom/google/b/f;Lcom/google/b/u;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/b/b/a/b$a;->a:Lcom/google/b/u;

    .line 70
    iput-object p4, p0, Lcom/google/b/b/a/b$a;->b:Lcom/google/b/b/i;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1074
    invoke-virtual {p1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/b/d/b;->i:Lcom/google/b/d/b;

    if-ne v0, v1, :cond_0

    .line 1075
    invoke-virtual {p1}, Lcom/google/b/d/a;->k()V

    const/4 p1, 0x0

    return-object p1

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/google/b/b/a/b$a;->b:Lcom/google/b/b/i;

    invoke-interface {v0}, Lcom/google/b/b/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1080
    invoke-virtual {p1}, Lcom/google/b/d/a;->a()V

    .line 1081
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/google/b/b/a/b$a;->a:Lcom/google/b/u;

    invoke-virtual {v1, p1}, Lcom/google/b/u;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 1083
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1085
    :cond_1
    invoke-virtual {p1}, Lcom/google/b/d/a;->b()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/b/d/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    .line 1091
    invoke-virtual {p1}, Lcom/google/b/d/c;->e()Lcom/google/b/d/c;

    return-void

    .line 1095
    :cond_0
    invoke-virtual {p1}, Lcom/google/b/d/c;->a()Lcom/google/b/d/c;

    .line 1096
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/google/b/b/a/b$a;->a:Lcom/google/b/u;

    invoke-virtual {v1, p1, v0}, Lcom/google/b/u;->a(Lcom/google/b/d/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 1099
    :cond_1
    invoke-virtual {p1}, Lcom/google/b/d/c;->b()Lcom/google/b/d/c;

    return-void
.end method
