.class final Lb/a/av;
.super Lb/a/ba;


# instance fields
.field private final c:La/d/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/m<",
            "Lb/a/s;",
            "La/b/c<",
            "-",
            "La/r;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/f;La/d/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/f;",
            "La/d/a/m<",
            "-",
            "Lb/a/s;",
            "-",
            "La/b/c<",
            "-",
            "La/r;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/ba;-><init>(La/b/f;Z)V

    iput-object p2, p0, Lb/a/av;->c:La/d/a/m;

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 2

    iget-object v0, p0, Lb/a/av;->c:La/d/a/m;

    move-object v1, p0

    check-cast v1, La/b/c;

    invoke-static {v0, p0, v1}, Lb/a/b/a;->a(La/d/a/m;Ljava/lang/Object;La/b/c;)V

    return-void
.end method
