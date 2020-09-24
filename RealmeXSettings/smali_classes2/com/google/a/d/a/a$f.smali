.class final Lcom/google/a/d/a/a$f;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/d/a/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/a/d/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/d/a/f<",
            "+TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final run()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/google/a/d/a/a$f;->a:Lcom/google/a/d/a/a;

    invoke-static {v0}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/a;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a/a$f;->b:Lcom/google/a/d/a/f;

    invoke-static {v0}, Lcom/google/a/d/a/a;->a(Lcom/google/a/d/a/f;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    invoke-static {}, Lcom/google/a/d/a/a;->b()Lcom/google/a/d/a/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/d/a/a$f;->a:Lcom/google/a/d/a/a;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/a/d/a/a$a;->a(Lcom/google/a/d/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/google/a/d/a/a$f;->a:Lcom/google/a/d/a/a;

    invoke-static {v0}, Lcom/google/a/d/a/a;->b(Lcom/google/a/d/a/a;)V

    :cond_1
    return-void
.end method
