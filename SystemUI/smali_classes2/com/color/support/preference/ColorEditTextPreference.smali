.class public Lcom/color/support/preference/ColorEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "ColorEditTextPreference.java"


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mJumpRes:Landroid/graphics/drawable/Drawable;

.field private mShowDivider:Z

.field private mStatusText1:Ljava/lang/CharSequence;

.field private mStatusText2:Ljava/lang/CharSequence;

.field private mStatusText3:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mShowDivider:Z

    .line 59
    iput-object p1, p0, Lcom/color/support/preference/ColorEditTextPreference;->mContext:Landroid/content/Context;

    .line 60
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_mark:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 62
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 63
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status2:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 64
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status3:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorShowDivider:I

    iget-boolean v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mShowDivider:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/preference/ColorEditTextPreference;->mShowDivider:Z

    .line 69
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorDividerDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorEditTextPreference;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorEditTextPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getAssignment()Ljava/lang/CharSequence;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getStatusText2()Ljava/lang/CharSequence;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText2:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getStatusText3()Ljava/lang/CharSequence;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText3:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 175
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 176
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 178
    invoke-static {v0, v2}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 179
    iget-object v3, p0, Lcom/color/support/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 180
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 188
    iget-object v3, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :cond_3
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 198
    iget-object v3, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 199
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 200
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 203
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :cond_5
    :goto_2
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText3:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 208
    iget-object v3, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 209
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 210
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 213
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_7
    :goto_3
    sget v0, Lcolor/support/v7/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 218
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object p0

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 220
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 223
    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iput-object p1, p0, Lcom/color/support/preference/ColorEditTextPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 269
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    iput-object p1, p0, Lcom/color/support/preference/ColorEditTextPreference;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 248
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setJump(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorEditTextPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 151
    iput-object p1, p0, Lcom/color/support/preference/ColorEditTextPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 235
    iput-boolean p1, p0, Lcom/color/support/preference/ColorEditTextPreference;->mShowDivider:Z

    .line 236
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText2(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText2:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 119
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText3(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText3:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText3:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorEditTextPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreference;->notifyChanged()V

    :cond_2
    return-void
.end method
