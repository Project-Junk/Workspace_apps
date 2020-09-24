.class public Lcom/android/setupwizardlib/b/e;
.super Ljava/lang/Object;
.source "ListMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/b/g;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public c:I

.field private d:Lcom/android/setupwizardlib/TemplateLayout;

.field private e:Landroid/widget/ListView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Lcom/android/setupwizardlib/TemplateLayout;
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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/setupwizardlib/b/e;->d:Lcom/android/setupwizardlib/TemplateLayout;

    .line 63
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 64
    sget-object v0, Lcom/android/setupwizardlib/b$g;->SuwListMixin:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 67
    sget p3, Lcom/android/setupwizardlib/b$g;->SuwListMixin_android_entries:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 69
    new-instance v0, Lcom/android/setupwizardlib/items/d;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/items/d;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p3}, Lcom/android/setupwizardlib/items/d;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/items/ItemGroup;

    .line 71
    new-instance p3, Lcom/android/setupwizardlib/items/b;

    invoke-direct {p3, p1}, Lcom/android/setupwizardlib/items/b;-><init>(Lcom/android/setupwizardlib/items/c;)V

    invoke-virtual {p0, p3}, Lcom/android/setupwizardlib/b/e;->a(Landroid/widget/ListAdapter;)V

    .line 73
    :cond_0
    sget p1, Lcom/android/setupwizardlib/b$g;->SuwListMixin_suwDividerInset:I

    const/4 p3, -0x1

    .line 74
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 1153
    invoke-virtual {p0, p1, v1}, Lcom/android/setupwizardlib/b/e;->a(II)V

    goto :goto_0

    .line 78
    :cond_1
    sget p1, Lcom/android/setupwizardlib/b$g;->SuwListMixin_suwDividerInsetStart:I

    .line 79
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 80
    sget p3, Lcom/android/setupwizardlib/b$g;->SuwListMixin_suwDividerInsetEnd:I

    .line 81
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 82
    invoke-virtual {p0, p1, p3}, Lcom/android/setupwizardlib/b/e;->a(II)V

    .line 84
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private d()V
    .locals 5

    .line 195
    invoke-virtual {p0}, Lcom/android/setupwizardlib/b/e;->a()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 200
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/setupwizardlib/b/e;->d:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/android/setupwizardlib/b/e;->f:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 205
    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/android/setupwizardlib/b/e;->f:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/setupwizardlib/b/e;->b:I

    iget v3, p0, Lcom/android/setupwizardlib/b/e;->c:I

    iget-object v4, p0, Lcom/android/setupwizardlib/b/e;->d:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static {v1, v2, v3, v4}, Lcom/android/setupwizardlib/util/a;->a(Landroid/graphics/drawable/Drawable;IILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/b/e;->a:Landroid/graphics/drawable/Drawable;

    .line 214
    iget-object v1, p0, Lcom/android/setupwizardlib/b/e;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/setupwizardlib/b/e;->e:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/setupwizardlib/b/e;->d:Lcom/android/setupwizardlib/TemplateLayout;

    const v1, 0x102000a

    .line 2109
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/setupwizardlib/b/e;->e:Landroid/widget/ListView;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/b/e;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method public final a(II)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/android/setupwizardlib/b/e;->b:I

    .line 167
    iput p2, p0, Lcom/android/setupwizardlib/b/e;->c:I

    .line 168
    invoke-direct {p0}, Lcom/android/setupwizardlib/b/e;->d()V

    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/android/setupwizardlib/b/e;->a()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/setupwizardlib/b/e;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/setupwizardlib/b/e;->d()V

    :cond_0
    return-void
.end method

.method public final c()Landroid/widget/ListAdapter;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/android/setupwizardlib/b/e;->a()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 130
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
