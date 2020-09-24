.class public Lcom/google/android/setupdesign/items/Item;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "Item.java"


# instance fields
.field private b:Z

.field c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:Z

.field private i:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->b:Z

    .line 44
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    const/16 v0, 0x10

    .line 46
    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->c:I

    .line 50
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->b:Z

    .line 44
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    const/16 v2, 0x10

    .line 46
    iput v2, p0, Lcom/google/android/setupdesign/items/Item;->c:I

    .line 55
    sget-object v3, Lcom/google/android/setupdesign/b$g;->SudItem:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->b:Z

    .line 57
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_android_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->d:Landroid/graphics/drawable/Drawable;

    .line 58
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->g:Ljava/lang/CharSequence;

    .line 59
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_android_summary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->f:Ljava/lang/CharSequence;

    .line 60
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_android_layout:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->e()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->e:I

    .line 61
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_android_visible:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    .line 62
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_sudIconTint:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    .line 63
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_sudIconGravity:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->c:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1153
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .line 163
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2137
    iget-object v1, p0, Lcom/google/android/setupdesign/items/Item;->g:Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_items_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->f()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_0
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_items_icon_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3092
    iget-object v1, p0, Lcom/google/android/setupdesign/items/Item;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 178
    sget v2, Lcom/google/android/setupdesign/b$d;->sud_items_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 181
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3207
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 3208
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 183
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget v1, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 189
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 190
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_2

    .line 191
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/google/android/setupdesign/items/Item;->c:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 193
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 195
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5051
    :goto_2
    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a:I

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 2051
    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->b:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/android/setupdesign/items/Item;->e:I

    return v0
.end method

.method protected e()I
    .locals 1

    .line 68
    sget v0, Lcom/google/android/setupdesign/b$e;->sud_items_default:I

    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->f:Ljava/lang/CharSequence;

    return-object v0
.end method
