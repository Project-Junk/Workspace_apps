.class public abstract Landroidx/recyclerview/widget/RecyclerView$a;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$w;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$b;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6979
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v0, 0x0

    .line 6980
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 7410
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->a(II)V

    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 1

    .line 7441
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    .line 7392
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$c;)V
    .locals 1

    .line 7281
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7059
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 7135
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7139
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return-void

    .line 7136
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()I
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final b(II)V
    .locals 1

    .line 7473
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->d(II)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c;)V
    .locals 1

    .line 7295
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 7093
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->c:I

    .line 7094
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7095
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->e:J

    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    .line 7097
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->a(II)V

    const-string v0, "RV OnBindView"

    .line 7100
    invoke-static {v0}, Landroidx/core/c/a;->a(Ljava/lang/String;)V

    .line 7101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->y()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)V

    .line 7102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->x()V

    .line 7103
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7104
    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz p2, :cond_1

    .line 7105
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    .line 7107
    :cond_1
    invoke-static {}, Landroidx/core/c/a;->a()V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public c(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    .line 7071
    invoke-static {v0}, Landroidx/core/c/a;->a(Ljava/lang/String;)V

    .line 7072
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    .line 7073
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7078
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7081
    invoke-static {}, Landroidx/core/c/a;->a()V

    return-object p1

    .line 7074
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 7081
    invoke-static {}, Landroidx/core/c/a;->a()V

    .line 7082
    throw p1
.end method

.method public final c(II)V
    .locals 1

    .line 7492
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->b(II)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 7169
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return v0
.end method

.method public final d(I)V
    .locals 2

    .line 7364
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$b;->a(II)V

    return-void
.end method

.method public final d(II)V
    .locals 1

    .line 7526
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$b;->c(II)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 7261
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b;->a()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .line 7348
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b;->b()V

    return-void
.end method
