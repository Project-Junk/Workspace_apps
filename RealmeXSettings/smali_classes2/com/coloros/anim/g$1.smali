.class final Lcom/coloros/anim/g$1;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/anim/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/coloros/anim/e<",
        "Lcom/coloros/anim/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/coloros/anim/g$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/anim/g$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/coloros/anim/g$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/anim/g$1;->b:Ljava/lang/String;

    .line 2038
    new-instance v2, Lcom/coloros/anim/d/c;

    invoke-direct {v2, v0, v1}, Lcom/coloros/anim/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2058
    iget-object v0, v2, Lcom/coloros/anim/d/c;->b:Lcom/coloros/anim/d/b;

    invoke-virtual {v0}, Lcom/coloros/anim/d/b;->a()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2063
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/coloros/anim/d/a;

    .line 2064
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    .line 2066
    sget-object v3, Lcom/coloros/anim/d/a;->b:Lcom/coloros/anim/d/a;

    if-ne v1, v3, :cond_0

    .line 2067
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, v2, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/coloros/anim/g;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object v0

    goto :goto_0

    .line 2069
    :cond_0
    iget-object v1, v2, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/anim/g;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/coloros/anim/e;

    move-result-object v0

    .line 3031
    :goto_0
    iget-object v1, v0, Lcom/coloros/anim/e;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 4031
    iget-object v0, v0, Lcom/coloros/anim/e;->a:Ljava/lang/Object;

    .line 2072
    check-cast v0, Lcom/coloros/anim/a;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 2045
    new-instance v1, Lcom/coloros/anim/e;

    invoke-direct {v1, v0}, Lcom/coloros/anim/e;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 2048
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/coloros/anim/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v2}, Lcom/coloros/anim/d/c;->a()Lcom/coloros/anim/e;

    move-result-object v0

    return-object v0
.end method
