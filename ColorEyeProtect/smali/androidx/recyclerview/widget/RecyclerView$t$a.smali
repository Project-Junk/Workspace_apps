.class public Landroidx/recyclerview/widget/RecyclerView$t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method private b()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->e:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:I

    if-lt p0, v1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    const/4 v2, -0x1

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->c(I)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->f:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->f:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t$a;->b()V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->G:Landroidx/recyclerview/widget/RecyclerView$w;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->a(IIILandroid/view/animation/Interpolator;)V

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->g:I

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->g:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->f:Z

    goto :goto_0

    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->g:I

    :goto_0
    return-void
.end method

.method a()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
