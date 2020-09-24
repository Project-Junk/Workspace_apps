.class Landroidx/d/b/a$a;
.super Landroidx/core/f/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/d/b/a;


# direct methods
.method constructor <init>(Landroidx/d/b/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    invoke-direct {p0}, Landroidx/core/f/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/f/a/c;
    .locals 0

    iget-object p0, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    invoke-virtual {p0, p1}, Landroidx/d/b/a;->a(I)Landroidx/core/f/a/c;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/f/a/c;->a(Landroidx/core/f/a/c;)Landroidx/core/f/a/c;

    move-result-object p0

    return-object p0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/d/b/a;->a(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public b(I)Landroidx/core/f/a/c;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    iget p1, p1, Landroidx/d/b/a;->a:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    iget p1, p1, Landroidx/d/b/a;->b:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/d/b/a$a;->a(I)Landroidx/core/f/a/c;

    move-result-object p0

    return-object p0
.end method
