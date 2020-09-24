.class final Lcom/google/a/b/f$1$1;
.super Lcom/google/a/b/a;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/f$1;->a()Lcom/google/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/b/f$1;


# direct methods
.method constructor <init>(Lcom/google/a/b/f$1;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/google/a/b/f$1$1;->c:Lcom/google/a/b/f$1;

    invoke-direct {p0}, Lcom/google/a/b/a;-><init>()V

    .line 903
    iget-object p1, p0, Lcom/google/a/b/f$1$1;->c:Lcom/google/a/b/f$1;

    iget-object p1, p1, Lcom/google/a/b/f$1;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/a/b/f$1$1;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/f$1$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/google/a/b/f$1$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 909
    iget-object v1, p0, Lcom/google/a/b/f$1$1;->c:Lcom/google/a/b/f$1;

    iget-object v1, v1, Lcom/google/a/b/f$1;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1121
    :cond_1
    sget v0, Lcom/google/a/b/a$a;->c:I

    iput v0, p0, Lcom/google/a/b/a;->a:I

    const/4 v0, 0x0

    return-object v0
.end method
