.class public Lcom/android/setupwizardlib/items/ExpandableSwitchItem;
.super Lcom/android/setupwizardlib/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->e:Z

    .line 58
    sget-object v0, Lcom/android/setupwizardlib/b$g;->SuwExpandableSwitchItem:[I

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwExpandableSwitchItem_suwCollapsedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->c:Ljava/lang/CharSequence;

    .line 61
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwExpandableSwitchItem_suwExpandedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->d:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 9

    .line 132
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/SwitchItem;->a(Landroid/view/View;)V

    .line 133
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_items_expandable_switch_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    instance-of v1, v0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    .line 3079
    iget-boolean v1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->e:Z

    .line 137
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setChecked(Z)V

    .line 3154
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010036

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3155
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3156
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 3157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_4

    .line 3160
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3161
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    if-eqz v6, :cond_1

    .line 3163
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3166
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_4

    .line 3167
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    if-eqz v5, :cond_3

    .line 3169
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method protected final e()I
    .locals 1

    .line 67
    sget v0, Lcom/android/setupwizardlib/b$e;->suw_items_expandable_switch:I

    return v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->e:Z

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->d:Ljava/lang/CharSequence;

    return-object v0

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 4079
    iget-boolean p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->e:Z

    xor-int/lit8 v0, p1, 0x1

    if-eq p1, v0, :cond_0

    .line 4089
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->e:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 5064
    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/items/AbstractItem;->a(II)V

    :cond_0
    return-void
.end method
