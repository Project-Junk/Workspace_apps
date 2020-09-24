.class final Lb/a/a/o$d;
.super La/d/b/h;

# interfaces
.implements La/d/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/d/b/h;",
        "La/d/a/m<",
        "Lb/a/a/s;",
        "La/b/f$b;",
        "Lb/a/a/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lb/a/a/o$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/o$d;

    invoke-direct {v0}, Lb/a/a/o$d;-><init>()V

    sput-object v0, Lb/a/a/o$d;->a:Lb/a/a/o$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, La/d/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lb/a/a/s;La/b/f$b;)Lb/a/a/s;
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lb/a/bb;

    if-eqz p0, :cond_0

    check-cast p2, Lb/a/bb;

    invoke-virtual {p1}, Lb/a/a/s;->c()La/b/f;

    move-result-object p0

    invoke-interface {p2, p0}, Lb/a/bb;->b(La/b/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb/a/a/s;->a(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb/a/a/s;

    check-cast p2, La/b/f$b;

    invoke-virtual {p0, p1, p2}, Lb/a/a/o$d;->a(Lb/a/a/s;La/b/f$b;)Lb/a/a/s;

    move-result-object p0

    return-object p0
.end method
