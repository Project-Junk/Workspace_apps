.class final Lb/a/a/o$a;
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
        "Ljava/lang/Object;",
        "La/b/f$b;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lb/a/a/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/o$a;

    invoke-direct {v0}, Lb/a/a/o$a;-><init>()V

    sput-object v0, Lb/a/a/o$a;->a:Lb/a/a/o$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, La/d/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;La/b/f$b;)Ljava/lang/Object;
    .locals 0

    const-string p0, "element"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lb/a/bb;

    if-eqz p0, :cond_3

    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    return-object p2

    :cond_3
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, La/b/f$b;

    invoke-virtual {p0, p1, p2}, Lb/a/a/o$a;->a(Ljava/lang/Object;La/b/f$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
