.class final La/h/d;
.super Ljava/lang/Object;

# interfaces
.implements La/g/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/g/a<",
        "La/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:La/d/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/m<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "La/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILa/d/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "La/d/a/m<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "La/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/h/d;->a:Ljava/lang/CharSequence;

    iput p2, p0, La/h/d;->b:I

    iput p3, p0, La/h/d;->c:I

    iput-object p4, p0, La/h/d;->d:La/d/a/m;

    return-void
.end method

.method public static final synthetic a(La/h/d;)I
    .locals 0

    iget p0, p0, La/h/d;->c:I

    return p0
.end method

.method public static final synthetic b(La/h/d;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, La/h/d;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(La/h/d;)La/d/a/m;
    .locals 0

    iget-object p0, p0, La/h/d;->d:La/d/a/m;

    return-object p0
.end method

.method public static final synthetic d(La/h/d;)I
    .locals 0

    iget p0, p0, La/h/d;->b:I

    return p0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "La/e/c;",
            ">;"
        }
    .end annotation

    new-instance v0, La/h/d$a;

    invoke-direct {v0, p0}, La/h/d$a;-><init>(La/h/d;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
