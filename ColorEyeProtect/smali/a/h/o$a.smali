.class final La/h/o$a;
.super La/d/b/h;

# interfaces
.implements La/d/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h/o;->a(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)La/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/d/b/h;",
        "La/d/a/m<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "La/j<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, La/h/o$a;->a:Ljava/util/List;

    iput-boolean p2, p0, La/h/o$a;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, La/d/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "La/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/h/o$a;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iget-boolean p0, p0, La/h/o$a;->b:Z

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, p0, v1}, La/h/o;->a(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)La/j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La/j;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, La/j;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, La/n;->a(Ljava/lang/Object;Ljava/lang/Object;)La/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, La/h/o$a;->a(Ljava/lang/CharSequence;I)La/j;

    move-result-object p0

    return-object p0
.end method
