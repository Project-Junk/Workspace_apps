.class public Lcom/android/setupwizardlib/items/SwitchItem;
.super Lcom/android/setupwizardlib/items/Item;
.source "SwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/Item;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->c:Z

    .line 67
    sget-object v1, Lcom/android/setupwizardlib/b$g;->SuwSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwSwitchItem_android_checked:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->c:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/Item;->a(Landroid/view/View;)V

    .line 111
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_items_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->c:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 114
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1076
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->b:Z

    .line 115
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method

.method protected e()I
    .locals 1

    .line 94
    sget v0, Lcom/android/setupwizardlib/b$e;->suw_items_switch:I

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 128
    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->c:Z

    return-void
.end method
