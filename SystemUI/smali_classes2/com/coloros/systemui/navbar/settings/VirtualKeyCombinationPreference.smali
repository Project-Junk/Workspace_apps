.class public Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "VirtualKeyCombinationPreference.java"


# instance fields
.field private mCheckView:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mHideIconPosition:I

.field private mLeftIcon:I

.field private mLeftImage:Landroid/widget/ImageView;

.field private mMiddleIcon:I

.field private mMiddleImage:Landroid/widget/ImageView;

.field private mNavigationKeyLayoutDesc:I

.field private mRightIcon:I

.field private mRightImage:Landroid/widget/ImageView;

.field private mShowDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mShowDivider:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mChecked:Z

    const p1, 0x7f0808b0

    .line 42
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftIcon:I

    const p1, 0x7f0808aa

    .line 43
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleIcon:I

    const p1, 0x7f0808a2

    .line 44
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightIcon:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mHideIconPosition:I

    const p1, 0x7f11056d

    .line 51
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mNavigationKeyLayoutDesc:I

    .line 55
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mShowDivider:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mChecked:Z

    const p1, 0x7f0808b0

    .line 42
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftIcon:I

    const p1, 0x7f0808aa

    .line 43
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleIcon:I

    const p1, 0x7f0808a2

    .line 44
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightIcon:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mHideIconPosition:I

    const p1, 0x7f11056d

    .line 51
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mNavigationKeyLayoutDesc:I

    .line 60
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mShowDivider:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mChecked:Z

    const p1, 0x7f0808b0

    .line 42
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftIcon:I

    const p1, 0x7f0808aa

    .line 43
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleIcon:I

    const p1, 0x7f0808a2

    .line 44
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightIcon:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mHideIconPosition:I

    const p1, 0x7f11056d

    .line 51
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mNavigationKeyLayoutDesc:I

    .line 65
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0d0154

    .line 69
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setLayoutResource(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0470

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0471

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0472

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightImage:Landroid/widget/ImageView;

    const v0, 0x7f0a046e

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mCheckView:Landroid/widget/CheckBox;

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftImage:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftIcon:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 87
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 91
    iget v3, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleIcon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightIcon:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 96
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mCheckView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 100
    iget-boolean v1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    const v0, 0x7f0a03d8

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mNavigationKeyLayoutDesc:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    :cond_4
    iget p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mHideIconPosition:I

    const/4 v0, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 108
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 109
    :cond_5
    iget p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mHideIconPosition:I

    if-ne p1, v2, :cond_6

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightImage:Landroid/widget/ImageView;

    if-eqz p0, :cond_6

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 75
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 76
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mChecked:Z

    .line 152
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mCheckView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    .line 153
    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mChecked:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f11056d

    .line 160
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mNavigationKeyLayoutDesc:I

    goto :goto_0

    :cond_0
    const p1, 0x7f11056c

    .line 162
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mNavigationKeyLayoutDesc:I

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->notifyChanged()V

    return-void
.end method

.method public setHideIcon(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mHideIconPosition:I

    return-void
.end method

.method public setLeftImageIcon(I)V
    .locals 1

    .line 123
    iget v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftIcon:I

    if-eq v0, p1, :cond_0

    .line 124
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftIcon:I

    .line 125
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 126
    iget p0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mLeftIcon:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setMiddleImageIcon(I)V
    .locals 1

    .line 132
    iget v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleIcon:I

    if-eq v0, p1, :cond_0

    .line 133
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleIcon:I

    .line 134
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 135
    iget p0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mMiddleIcon:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setRightImageIcon(I)V
    .locals 1

    .line 141
    iget v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightIcon:I

    if-eq v0, p1, :cond_0

    .line 142
    iput p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightIcon:I

    .line 143
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 144
    iget p0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mRightIcon:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 117
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->mShowDivider:Z

    .line 118
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
