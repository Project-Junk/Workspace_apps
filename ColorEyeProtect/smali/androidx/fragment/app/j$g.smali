.class Landroidx/fragment/app/j$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/fragment/app/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field final a:Z

.field final b:Landroidx/fragment/app/a;

.field private c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidx/fragment/app/j$g;->a:Z

    iput-object p1, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/fragment/app/j$g;->c:I

    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-object p0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->k()V

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/fragment/app/j$g;->c:I

    return-void
.end method

.method public c()Z
    .locals 0

    iget p0, p0, Landroidx/fragment/app/j$g;->c:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()V
    .locals 7

    iget v0, p0, Landroidx/fragment/app/j$g;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-object v3, v3, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v4, v3, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v5, v3, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/d;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/d;->setOnStartEnterTransitionListener(Landroidx/fragment/app/d$c;)V

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Landroidx/fragment/app/d;->isPostponed()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroidx/fragment/app/d;->startPostponedEnterTransition()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-object v1, v1, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v3, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-boolean p0, p0, Landroidx/fragment/app/j$g;->a:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v3, p0, v0, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    iget-boolean p0, p0, Landroidx/fragment/app/j$g;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method
