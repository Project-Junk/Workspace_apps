.class public final Lb/a/e;
.super Lb/a/ar;

# interfaces
.implements Lb/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ar<",
        "Lb/a/at;",
        ">;",
        "Lb/a/d;"
    }
.end annotation


# instance fields
.field public final a:Lb/a/f;


# direct methods
.method public constructor <init>(Lb/a/at;Lb/a/f;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childJob"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lb/a/ap;

    invoke-direct {p0, p1}, Lb/a/ar;-><init>(Lb/a/ap;)V

    iput-object p2, p0, Lb/a/e;->a:Lb/a/f;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lb/a/e;->b(Ljava/lang/Throwable;)V

    sget-object p0, La/r;->a:La/r;

    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb/a/e;->b:Lb/a/ap;

    check-cast p0, Lb/a/at;

    invoke-virtual {p0, p1}, Lb/a/at;->e(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lb/a/e;->a:Lb/a/f;

    iget-object p0, p0, Lb/a/e;->b:Lb/a/ap;

    check-cast p0, Lb/a/ay;

    invoke-interface {p1, p0}, Lb/a/f;->a(Lb/a/ay;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb/a/e;->a:Lb/a/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
