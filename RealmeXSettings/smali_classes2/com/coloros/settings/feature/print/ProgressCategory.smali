.class public Lcom/coloros/settings/feature/print/ProgressCategory;
.super Lcom/coloros/settings/feature/print/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/print/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "ProgressCategory"

    .line 36
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->d:Z

    .line 40
    iput-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->f:Z

    .line 41
    iput-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->g:Z

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->h:Z

    .line 44
    iput-boolean p2, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->i:Z

    .line 45
    iput p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->j:I

    const p1, 0x7f0d00ab

    .line 49
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/print/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/print/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "ProgressCategory"

    .line 36
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->d:Z

    .line 40
    iput-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->f:Z

    .line 41
    iput-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->g:Z

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->h:Z

    .line 44
    iput-boolean p2, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->i:Z

    .line 45
    iput p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->j:I

    const p1, 0x7f0d00ab

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/print/ProgressCategory;->setLayoutResource(I)V

    .line 56
    iput p3, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->c:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/print/ProgressCategory;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 143
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->d:Z

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 72
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/print/ProgressCategoryBase;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a048d

    .line 74
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a048e

    .line 75
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 76
    iget v3, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->j:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget v1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->j:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-boolean v1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 80
    iget-object v3, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1301ba

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070734

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070210

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070733

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 91
    iget-object v3, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    :cond_0
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a05a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorLoadingView;

    .line 94
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0137

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 95
    new-instance v1, Lcom/coloros/settings/feature/print/ProgressCategory$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/print/ProgressCategory$1;-><init>(Lcom/coloros/settings/feature/print/ProgressCategory;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->getPreferenceCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/print/ProgressCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->e:Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 106
    :goto_1
    iget-boolean v4, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->d:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Lcom/color/support/widget/ColorLoadingView;->setVisibility(I)V

    .line 107
    iget-boolean v0, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->i:Z

    if-nez v0, :cond_4

    goto :goto_3

    .line 110
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->d:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    invoke-virtual {p1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 113
    iget-boolean v0, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->h:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 114
    iget-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->d:Z

    if-nez p1, :cond_8

    if-eqz v1, :cond_8

    iget p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->c:I

    if-nez p1, :cond_6

    goto :goto_4

    .line 120
    :cond_6
    iget-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->f:Z

    if-nez p1, :cond_9

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->e:Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

    if-nez p1, :cond_7

    .line 122
    new-instance p1, Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/print/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->e:Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

    .line 126
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->e:Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;->setSelectable(Z)V

    .line 128
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->e:Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

    iget v0, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->c:I

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;->a(I)V

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->e:Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/print/ProgressCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 130
    iput-boolean v3, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->f:Z

    goto :goto_5

    .line 115
    :cond_8
    :goto_4
    iget-boolean p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->f:Z

    if-eqz p1, :cond_9

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->e:Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/print/ProgressCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 117
    iput-boolean v2, p0, Lcom/coloros/settings/feature/print/ProgressCategory;->f:Z

    :cond_9
    :goto_5
    return-void
.end method
