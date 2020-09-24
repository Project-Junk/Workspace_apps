.class final Lb/a/ao;
.super Lb/a/as;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/as<",
        "Lb/a/ap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:La/d/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/b<",
            "Ljava/lang/Throwable;",
            "La/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/ap;La/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/ap;",
            "La/d/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "La/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lb/a/as;-><init>(Lb/a/ap;)V

    iput-object p2, p0, Lb/a/ao;->a:La/d/a/b;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lb/a/ao;->b(Ljava/lang/Throwable;)V

    sget-object p0, La/r;->a:La/r;

    return-object p0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lb/a/ao;->a:La/d/a/b;

    invoke-interface {p0, p1}, La/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvokeOnCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lb/a/w;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lb/a/w;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
