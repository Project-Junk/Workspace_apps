.class public Lcom/coloros/settings/widget/preference/ColorMarkPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "ColorMarkPreference.java"


# instance fields
.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040187

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 59
    iput p4, p0, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->c:I

    .line 37
    sget-object v0, Lcom/android/settings/g$a;->ColorMarkPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    invoke-virtual {p1, p4, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->c:I

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    const v0, 0x7f0a0183

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 71
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    .line 72
    iget v3, p0, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->c:I

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x7f0a0163

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 80
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    .line 81
    iget v3, p0, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
