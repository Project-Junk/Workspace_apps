.class public Lcom/google/android/setupdesign/GlifRecyclerLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "GlifRecyclerLayout.java"


# instance fields
.field protected b:Lcom/google/android/setupdesign/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/b/g;->a(Landroid/util/AttributeSet;I)V

    .line 68
    const-class p1, Lcom/google/android/setupdesign/b/g;

    iget-object p2, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 70
    const-class p1, Lcom/google/android/setupdesign/b/i;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/b/i;

    .line 71
    new-instance p2, Lcom/google/android/setupdesign/b/h;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/setupdesign/b/h;-><init>(Lcom/google/android/setupdesign/b/i;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1092
    iput-object p2, p1, Lcom/google/android/setupdesign/b/i;->a:Lcom/google/android/setupdesign/b/i$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 84
    sget p2, Lcom/google/android/setupdesign/b$e;->sud_glif_recycler_template:I

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 103
    sget p1, Lcom/google/android/setupdesign/b$d;->sud_recycler_view:I

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    .line 1153
    iget-object v0, v0, Lcom/google/android/setupdesign/b/g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 91
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Lcom/google/android/setupdesign/b/g;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v0}, Lcom/google/android/setupdesign/b/g;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GlifRecyclerLayout should use a template with recycler view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupdesign/b/g;->a(II)V

    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/g;->b()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    .line 3251
    iget-object v0, v0, Lcom/google/android/setupdesign/b/g;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    .line 2220
    iget v0, v0, Lcom/google/android/setupdesign/b/g;->e:I

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    .line 3225
    iget v0, v0, Lcom/google/android/setupdesign/b/g;->f:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    .line 3220
    iget v0, v0, Lcom/google/android/setupdesign/b/g;->e:I

    return v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    .line 2143
    iget-object v0, v0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 77
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/GlifLayout;->onLayout(ZIIII)V

    .line 78
    iget-object p1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/b/g;->a()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/g;->a(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    const/4 v1, 0x0

    .line 2191
    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupdesign/b/g;->a(II)V

    return-void
.end method

.method public setDividerItemDecoration(Lcom/google/android/setupdesign/DividerItemDecoration;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b:Lcom/google/android/setupdesign/b/g;

    .line 1261
    iget-object v1, v0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/google/android/setupdesign/b/g;->c:Lcom/google/android/setupdesign/DividerItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1262
    iput-object p1, v0, Lcom/google/android/setupdesign/b/g;->c:Lcom/google/android/setupdesign/DividerItemDecoration;

    .line 1263
    iget-object p1, v0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Lcom/google/android/setupdesign/b/g;->c:Lcom/google/android/setupdesign/DividerItemDecoration;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1264
    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/g;->c()V

    return-void
.end method
