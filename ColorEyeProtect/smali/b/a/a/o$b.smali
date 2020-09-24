.class final Lb/a/a/o$b;
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
        "Lb/a/bb<",
        "*>;",
        "La/b/f$b;",
        "Lb/a/bb<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final a:Lb/a/a/o$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/o$b;

    invoke-direct {v0}, Lb/a/a/o$b;-><init>()V

    sput-object v0, Lb/a/a/o$b;->a:Lb/a/a/o$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, La/d/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lb/a/bb;La/b/f$b;)Lb/a/bb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/bb<",
            "*>;",
            "La/b/f$b;",
            ")",
            "Lb/a/bb<",
            "*>;"
        }
    .end annotation

    const-string p0, "element"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    instance-of p0, p2, Lb/a/bb;

    if-nez p0, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lb/a/bb;

    return-object p2
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb/a/bb;

    check-cast p2, La/b/f$b;

    invoke-virtual {p0, p1, p2}, Lb/a/a/o$b;->a(Lb/a/bb;La/b/f$b;)Lb/a/bb;

    move-result-object p0

    return-object p0
.end method
