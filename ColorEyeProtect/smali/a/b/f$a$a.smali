.class final La/b/f$a$a;
.super La/d/b/h;

# interfaces
.implements La/d/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/f$a;->a(La/b/f;La/b/f;)La/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/d/b/h;",
        "La/d/a/m<",
        "La/b/f;",
        "La/b/f$b;",
        "La/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:La/b/f$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b/f$a$a;

    invoke-direct {v0}, La/b/f$a$a;-><init>()V

    sput-object v0, La/b/f$a$a;->a:La/b/f$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, La/d/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(La/b/f;La/b/f$b;)La/b/f;
    .locals 2

    const-string p0, "acc"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, La/b/f$b;->getKey()La/b/f$c;

    move-result-object p0

    invoke-interface {p1, p0}, La/b/f;->minusKey(La/b/f$c;)La/b/f;

    move-result-object p0

    sget-object p1, La/b/g;->a:La/b/g;

    if-ne p0, p1, :cond_0

    check-cast p2, La/b/f;

    goto :goto_1

    :cond_0
    sget-object p1, La/b/d;->a:La/b/d$b;

    check-cast p1, La/b/f$c;

    invoke-interface {p0, p1}, La/b/f;->get(La/b/f$c;)La/b/f$b;

    move-result-object p1

    check-cast p1, La/b/d;

    if-nez p1, :cond_1

    new-instance p1, La/b/b;

    invoke-direct {p1, p0, p2}, La/b/b;-><init>(La/b/f;La/b/f$b;)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    sget-object v0, La/b/d;->a:La/b/d$b;

    check-cast v0, La/b/f$c;

    invoke-interface {p0, v0}, La/b/f;->minusKey(La/b/f$c;)La/b/f;

    move-result-object p0

    sget-object v0, La/b/g;->a:La/b/g;

    if-ne p0, v0, :cond_2

    new-instance p0, La/b/b;

    check-cast p2, La/b/f;

    check-cast p1, La/b/f$b;

    invoke-direct {p0, p2, p1}, La/b/b;-><init>(La/b/f;La/b/f$b;)V

    goto :goto_0

    :cond_2
    new-instance v0, La/b/b;

    new-instance v1, La/b/b;

    invoke-direct {v1, p0, p2}, La/b/b;-><init>(La/b/f;La/b/f$b;)V

    check-cast v1, La/b/f;

    check-cast p1, La/b/f$b;

    invoke-direct {v0, v1, p1}, La/b/b;-><init>(La/b/f;La/b/f$b;)V

    move-object p0, v0

    :goto_0
    move-object p2, p0

    check-cast p2, La/b/f;

    :goto_1
    return-object p2
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La/b/f;

    check-cast p2, La/b/f$b;

    invoke-virtual {p0, p1, p2}, La/b/f$a$a;->a(La/b/f;La/b/f$b;)La/b/f;

    move-result-object p0

    return-object p0
.end method
