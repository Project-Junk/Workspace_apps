.class public Lcom/android/setupwizardlib/items/Item;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "Item.java"


# instance fields
.field b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->b:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->g:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->e()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/items/Item;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->b:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->g:Z

    .line 49
    sget-object v1, Lcom/android/setupwizardlib/b$g;->SuwItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwItem_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/Item;->b:Z

    .line 51
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwItem_android_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/Item;->c:Landroid/graphics/drawable/Drawable;

    .line 52
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwItem_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/Item;->f:Ljava/lang/CharSequence;

    .line 53
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwItem_android_summary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/Item;->e:Ljava/lang/CharSequence;

    .line 54
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwItem_android_layout:I

    .line 55
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->e()I

    move-result v1

    .line 54
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/items/Item;->d:I

    .line 56
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwItem_android_visible:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/Item;->g:Z

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1129
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .line 139
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2113
    iget-object v1, p0, Lcom/android/setupwizardlib/items/Item;->f:Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_items_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->f()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_0
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_items_icon_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3085
    iget-object v1, p0, Lcom/android/setupwizardlib/items/Item;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 154
    sget v2, Lcom/android/setupwizardlib/b$d;->suw_items_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 157
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3174
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 3175
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 159
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5056
    :goto_1
    iget v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->a:I

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 2056
    iget v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->a:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->b:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/setupwizardlib/items/Item;->d:I

    return v0
.end method

.method protected e()I
    .locals 1

    .line 61
    sget v0, Lcom/android/setupwizardlib/b$e;->suw_items_default:I

    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/items/Item;->e:Ljava/lang/CharSequence;

    return-object v0
.end method
