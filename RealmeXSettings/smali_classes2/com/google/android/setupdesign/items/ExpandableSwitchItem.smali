.class public Lcom/google/android/setupdesign/items/ExpandableSwitchItem;
.super Lcom/google/android/setupdesign/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field b:Z

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private final f:Landroidx/core/view/AccessibilityDelegateCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Z

    .line 56
    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->f:Landroidx/core/view/AccessibilityDelegateCompat;

    const/16 v0, 0x30

    .line 1105
    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Z

    .line 56
    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->f:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 76
    sget-object v0, Lcom/google/android/setupdesign/b$g;->SudExpandableSwitchItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    sget p2, Lcom/google/android/setupdesign/b$g;->SudExpandableSwitchItem_sudCollapsedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->d:Ljava/lang/CharSequence;

    .line 78
    sget p2, Lcom/google/android/setupdesign/b$g;->SudExpandableSwitchItem_sudExpandedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->e:Ljava/lang/CharSequence;

    .line 79
    sget p2, Lcom/google/android/setupdesign/b$g;->SudItem_sudIconGravity:I

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 2105
    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->c:I

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 9

    .line 142
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/SwitchItem;->a(Landroid/view/View;)V

    .line 143
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_items_expandable_switch_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    instance-of v1, v0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    .line 4095
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Z

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->setChecked(Z)V

    .line 5095
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Z

    .line 151
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 157
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->f:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 5175
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010036

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5176
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 5177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_4

    .line 5180
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5181
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    if-eqz v6, :cond_1

    .line 5183
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5186
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_4

    .line 5187
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    if-eqz v5, :cond_3

    .line 5189
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 164
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method protected final e()I
    .locals 1

    .line 85
    sget v0, Lcom/google/android/setupdesign/b$e;->sud_items_expandable_switch:I

    return v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Z

    if-eqz v0, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->e:Ljava/lang/CharSequence;

    return-object v0

    .line 3109
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 6095
    iget-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Z

    xor-int/lit8 v0, p1, 0x1

    if-eq p1, v0, :cond_0

    .line 6103
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 7064
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/items/AbstractItem;->a(II)V

    :cond_0
    return-void
.end method
