.class abstract Landroidx/g/a/a/i$e;
.super Landroidx/g/a/a/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/g/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field protected l:[Landroidx/core/graphics/b$b;

.field m:Ljava/lang/String;

.field n:I

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/g/a/a/i$d;-><init>(Landroidx/g/a/a/i$1;)V

    iput-object v0, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/g/a/a/i$e;->n:I

    return-void
.end method

.method public constructor <init>(Landroidx/g/a/a/i$e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/g/a/a/i$d;-><init>(Landroidx/g/a/a/i$1;)V

    iput-object v0, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/g/a/a/i$e;->n:I

    iget-object v0, p1, Landroidx/g/a/a/i$e;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/g/a/a/i$e;->m:Ljava/lang/String;

    iget v0, p1, Landroidx/g/a/a/i$e;->o:I

    iput v0, p0, Landroidx/g/a/a/i$e;->o:I

    iget-object p1, p1, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {p0, p1}, Landroidx/core/graphics/b$b;->a([Landroidx/core/graphics/b$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPathData()[Landroidx/core/graphics/b$b;
    .locals 0

    iget-object p0, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/g/a/a/i$e;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setPathData([Landroidx/core/graphics/b$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/g/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {p0, p1}, Landroidx/core/graphics/b;->b([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)V

    :goto_0
    return-void
.end method
