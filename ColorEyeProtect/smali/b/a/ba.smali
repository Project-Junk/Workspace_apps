.class Lb/a/ba;
.super Lb/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a<",
        "La/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(La/b/f;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lb/a/a;-><init>(La/b/f;Z)V

    return-void
.end method


# virtual methods
.method protected f(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb/a/ba;->a:La/b/f;

    invoke-static {p0, p1}, Lb/a/p;->a(La/b/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected p()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
