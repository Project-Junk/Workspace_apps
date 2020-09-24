.class public final Lb/a/a/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lb/a/a/m;

.field private static final b:La/d/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/m<",
            "Ljava/lang/Object;",
            "La/b/f$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:La/d/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/m<",
            "Lb/a/bb<",
            "*>;",
            "La/b/f$b;",
            "Lb/a/bb<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:La/d/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/m<",
            "Lb/a/a/s;",
            "La/b/f$b;",
            "Lb/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:La/d/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/m<",
            "Lb/a/a/s;",
            "La/b/f$b;",
            "Lb/a/a/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/a/a/m;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/a/o;->a:Lb/a/a/m;

    sget-object v0, Lb/a/a/o$a;->a:Lb/a/a/o$a;

    check-cast v0, La/d/a/m;

    sput-object v0, Lb/a/a/o;->b:La/d/a/m;

    sget-object v0, Lb/a/a/o$b;->a:Lb/a/a/o$b;

    check-cast v0, La/d/a/m;

    sput-object v0, Lb/a/a/o;->c:La/d/a/m;

    sget-object v0, Lb/a/a/o$d;->a:Lb/a/a/o$d;

    check-cast v0, La/d/a/m;

    sput-object v0, Lb/a/a/o;->d:La/d/a/m;

    sget-object v0, Lb/a/a/o$c;->a:Lb/a/a/o$c;

    check-cast v0, La/d/a/m;

    sput-object v0, Lb/a/a/o;->e:La/d/a/m;

    return-void
.end method

.method public static final a(La/b/f;)Ljava/lang/Object;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lb/a/a/o;->b:La/d/a/m;

    invoke-interface {p0, v0, v1}, La/b/f;->fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    return-object p0
.end method

.method public static final a(La/b/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lb/a/a/o;->a(La/b/f;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lb/a/a/o;->a:Lb/a/a/m;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lb/a/a/s;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lb/a/a/s;-><init>(La/b/f;I)V

    sget-object p1, Lb/a/a/o;->d:La/d/a/m;

    invoke-interface {p0, v0, p1}, La/b/f;->fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    check-cast p1, Lb/a/bb;

    invoke-interface {p1, p0}, Lb/a/bb;->b(La/b/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(La/b/f;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb/a/a/o;->a:Lb/a/a/m;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lb/a/a/s;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lb/a/a/s;

    invoke-virtual {v0}, Lb/a/a/s;->b()V

    sget-object v0, Lb/a/a/o;->e:La/d/a/m;

    invoke-interface {p0, p1, v0}, La/b/f;->fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lb/a/a/o;->c:La/d/a/m;

    invoke-interface {p0, v0, v1}, La/b/f;->fold(Ljava/lang/Object;La/d/a/m;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lb/a/bb;

    invoke-interface {v0, p0, p1}, Lb/a/bb;->a(La/b/f;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method
