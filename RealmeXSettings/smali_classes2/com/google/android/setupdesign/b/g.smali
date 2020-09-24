.class public Lcom/google/android/setupdesign/b/g;
.super Ljava/lang/Object;
.source "RecyclerMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/google/android/setupdesign/DividerItemDecoration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:I

.field private final g:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private h:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Lcom/google/android/setupcompat/internal/TemplateLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/setupdesign/b/g;->g:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 79
    new-instance p1, Lcom/google/android/setupdesign/DividerItemDecoration;

    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->g:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/b/g;->c:Lcom/google/android/setupdesign/DividerItemDecoration;

    .line 82
    iput-object p2, p0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    iget-object p1, p0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/google/android/setupdesign/b/g;->g:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    instance-of p1, p2, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    if-eqz p1, :cond_0

    .line 86
    check-cast p2, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    invoke-virtual {p2}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupdesign/b/g;->b:Landroid/view/View;

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/google/android/setupdesign/b/g;->c:Lcom/google/android/setupdesign/DividerItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/g;->c()V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/google/android/setupdesign/b/g;->e:I

    .line 205
    iput p2, p0, Lcom/google/android/setupdesign/b/g;->f:I

    .line 206
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/g;->c()V

    return-void
.end method

.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->g:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/google/android/setupdesign/b$g;->SudRecyclerMixin:[I

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    sget p2, Lcom/google/android/setupdesign/b$g;->SudRecyclerMixin_android_entries:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    .line 108
    new-instance v1, Lcom/google/android/setupdesign/items/e;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/items/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/google/android/setupdesign/items/e;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/items/d;

    .line 111
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->g:Lcom/google/android/setupcompat/internal/TemplateLayout;

    instance-of v1, v0, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 1318
    iget-boolean v0, v0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    goto :goto_0

    :cond_0
    move v0, v2

    .line 116
    :goto_0
    new-instance v1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-direct {v1, p2, v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;-><init>(Lcom/google/android/setupdesign/items/d;Z)V

    .line 118
    sget p2, Lcom/google/android/setupdesign/b$g;->SudRecyclerMixin_sudHasStableIds:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->setHasStableIds(Z)V

    .line 119
    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/b/g;->a(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    :cond_1
    sget p2, Lcom/google/android/setupdesign/b$g;->SudRecyclerMixin_sudDividerInset:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eq p2, v0, :cond_2

    .line 2191
    invoke-virtual {p0, p2, v2}, Lcom/google/android/setupdesign/b/g;->a(II)V

    goto :goto_1

    .line 125
    :cond_2
    sget p2, Lcom/google/android/setupdesign/b$g;->SudRecyclerMixin_sudDividerInsetStart:I

    .line 126
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 127
    sget v0, Lcom/google/android/setupdesign/b$g;->SudRecyclerMixin_sudDividerInsetEnd:I

    .line 128
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 129
    invoke-virtual {p0, p2, v0}, Lcom/google/android/setupdesign/b/g;->a(II)V

    .line 132
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
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

    .line 185
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final b()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 177
    instance-of v1, v0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    .line 2197
    iget-object v0, v0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 4

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->g:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->c:Lcom/google/android/setupdesign/DividerItemDecoration;

    .line 3196
    iget-object v0, v0, Lcom/google/android/setupdesign/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 235
    iput-object v0, p0, Lcom/google/android/setupdesign/b/g;->h:Landroid/graphics/drawable/Drawable;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->h:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/setupdesign/b/g;->e:I

    iget v2, p0, Lcom/google/android/setupdesign/b/g;->f:I

    iget-object v3, p0, Lcom/google/android/setupdesign/b/g;->g:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 238
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/setupdesign/util/b;->a(Landroid/graphics/drawable/Drawable;IILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/b/g;->d:Landroid/graphics/drawable/Drawable;

    .line 245
    iget-object v0, p0, Lcom/google/android/setupdesign/b/g;->c:Lcom/google/android/setupdesign/DividerItemDecoration;

    iget-object v1, p0, Lcom/google/android/setupdesign/b/g;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/DividerItemDecoration;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
