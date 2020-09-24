.class public Lcom/google/android/setupdesign/b/c;
.super Ljava/lang/Object;
.source "ListMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public c:I

.field private final d:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private e:Landroid/widget/ListView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Lcom/google/android/setupcompat/internal/TemplateLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/setupdesign/b/c;->d:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 59
    sget-object v0, Lcom/google/android/setupdesign/b$g;->SudListMixin:[I

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 62
    sget p3, Lcom/google/android/setupdesign/b$g;->SudListMixin_android_entries:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 64
    new-instance v0, Lcom/google/android/setupdesign/items/e;

    invoke-direct {v0, p1}, Lcom/google/android/setupdesign/items/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/google/android/setupdesign/items/e;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/ItemGroup;

    .line 65
    new-instance p3, Lcom/google/android/setupdesign/items/c;

    invoke-direct {p3, p1}, Lcom/google/android/setupdesign/items/c;-><init>(Lcom/google/android/setupdesign/items/d;)V

    invoke-virtual {p0, p3}, Lcom/google/android/setupdesign/b/c;->a(Landroid/widget/ListAdapter;)V

    .line 67
    :cond_0
    sget p1, Lcom/google/android/setupdesign/b$g;->SudListMixin_sudDividerInset:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 1140
    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupdesign/b/c;->a(II)V

    goto :goto_0

    .line 71
    :cond_1
    sget p1, Lcom/google/android/setupdesign/b$g;->SudListMixin_sudDividerInsetStart:I

    .line 72
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 73
    sget p3, Lcom/google/android/setupdesign/b$g;->SudListMixin_sudDividerInsetEnd:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 74
    invoke-virtual {p0, p1, p3}, Lcom/google/android/setupdesign/b/c;->a(II)V

    .line 76
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private d()V
    .locals 5

    .line 178
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/c;->a()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 183
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 184
    iget-object v1, p0, Lcom/google/android/setupdesign/b/c;->d:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lcom/google/android/setupdesign/b/c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 188
    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/b/c;->f:Landroid/graphics/drawable/Drawable;

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/google/android/setupdesign/b/c;->f:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/google/android/setupdesign/b/c;->b:I

    iget v3, p0, Lcom/google/android/setupdesign/b/c;->c:I

    iget-object v4, p0, Lcom/google/android/setupdesign/b/c;->d:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 191
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/setupdesign/util/b;->a(Landroid/graphics/drawable/Drawable;IILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/b/c;->a:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v1, p0, Lcom/google/android/setupdesign/b/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/android/setupdesign/b/c;->e:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/setupdesign/b/c;->d:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/setupdesign/b/c;->e:Landroid/widget/ListView;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/b/c;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method public final a(II)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/google/android/setupdesign/b/c;->b:I

    .line 154
    iput p2, p0, Lcom/google/android/setupdesign/b/c;->c:I

    .line 155
    invoke-direct {p0}, Lcom/google/android/setupdesign/b/c;->d()V

    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/c;->a()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/android/setupdesign/b/c;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/google/android/setupdesign/b/c;->d()V

    :cond_0
    return-void
.end method

.method public final c()Landroid/widget/ListAdapter;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/google/android/setupdesign/b/c;->a()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 121
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
