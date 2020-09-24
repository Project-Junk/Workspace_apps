.class public abstract La/b/b/a/j;
.super La/b/b/a/c;

# interfaces
.implements La/d/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/b/b/a/c;",
        "La/d/b/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/b/b/a/j;-><init>(ILa/b/c;)V

    return-void
.end method

.method public constructor <init>(ILa/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "La/b/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, La/b/b/a/c;-><init>(La/b/c;)V

    iput p1, p0, La/b/b/a/j;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 0

    iget p0, p0, La/b/b/a/j;->arity:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, La/b/b/a/j;->getCompletion()La/b/c;

    move-result-object v0

    if-nez v0, :cond_0

    check-cast p0, La/d/b/f;

    invoke-static {p0}, La/d/b/n;->a(La/d/b/f;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reflection.renderLambdaToString(this)"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, La/b/b/a/c;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
