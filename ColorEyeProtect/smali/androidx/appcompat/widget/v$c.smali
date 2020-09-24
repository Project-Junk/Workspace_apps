.class Landroidx/appcompat/widget/v$c;
.super Landroidx/appcompat/widget/ai;

# interfaces
.implements Landroidx/appcompat/widget/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/ListAdapter;

.field final synthetic b:Landroidx/appcompat/widget/v;

.field private h:Ljava/lang/CharSequence;

.field private final i:Landroid/graphics/Rect;

.field private j:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/v;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/ai;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/v$c;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/v$c;->b(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/v$c;->a(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/v$c;->d(I)V

    new-instance p2, Landroidx/appcompat/widget/v$c$1;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/v$c$1;-><init>(Landroidx/appcompat/widget/v$c;Landroidx/appcompat/widget/v;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/v$c;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Landroidx/appcompat/widget/v$c;)V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/ai;->b_()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/v$c;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->d()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->g()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/v$c;->i(I)V

    invoke-super {p0}, Landroidx/appcompat/widget/ai;->b_()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->e()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/v$c;->j(I)V

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Landroidx/appcompat/widget/v$c$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/v$c$2;-><init>(Landroidx/appcompat/widget/v$c;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Landroidx/appcompat/widget/v$c$3;

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/v$c$3;-><init>(Landroidx/appcompat/widget/v$c;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/v$c;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ai;->a(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/v$c;->a:Landroid/widget/ListAdapter;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/v$c;->h:Ljava/lang/CharSequence;

    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroidx/core/f/t;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/v$c;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/v$c;->j:I

    return-void
.end method

.method g()V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object v1, v1, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-static {v0}, Landroidx/appcompat/widget/bb;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object v0, v0, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object v0, v0, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object v0, v0, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object v2, v2, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {v2}, Landroidx/appcompat/widget/v;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {v3}, Landroidx/appcompat/widget/v;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget v4, v4, Landroidx/appcompat/widget/v;->a:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object v5, p0, Landroidx/appcompat/widget/v$c;->a:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/v;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-virtual {v5}, Landroidx/appcompat/widget/v;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object v6, v6, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget-object v6, v6, Landroidx/appcompat/widget/v;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/v$c;->h(I)V

    goto :goto_3

    :cond_3
    iget-object v4, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget v4, v4, Landroidx/appcompat/widget/v;->a:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    iget v4, v4, Landroidx/appcompat/widget/v;->a:I

    goto :goto_2

    :goto_3
    iget-object v4, p0, Landroidx/appcompat/widget/v$c;->b:Landroidx/appcompat/widget/v;

    invoke-static {v4}, Landroidx/appcompat/widget/bb;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->k()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->h()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/v$c;->h()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :goto_4
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/v$c;->b(I)V

    return-void
.end method

.method public h()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/v$c;->j:I

    return p0
.end method
