.class public Lcom/color/support/preference/ColorListPreference;
.super Landroidx/preference/ListPreference;
.source "ColorListPreference.java"


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field mStatusText1:Ljava/lang/CharSequence;

.field mStatusText2:Ljava/lang/CharSequence;

.field mStatusText3:Ljava/lang/CharSequence;

.field mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object p1, p0, Lcom/color/support/preference/ColorListPreference;->mContext:Landroid/content/Context;

    .line 59
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_mark:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 61
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 62
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status2:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 63
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status3:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorListPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getAssignment()Ljava/lang/CharSequence;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/color/support/preference/ColorListPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/color/support/preference/ColorListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getStatusText2()Ljava/lang/CharSequence;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText2:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getStatusText3()Ljava/lang/CharSequence;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText3:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 171
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 173
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {v0, v2}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 176
    iget-object v3, p0, Lcom/color/support/preference/ColorListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 185
    iget-object v3, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 186
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 187
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :cond_3
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 195
    iget-object v3, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 197
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 200
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_5
    :goto_2
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText3:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 205
    iget-object v3, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 206
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 207
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 210
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :cond_7
    :goto_3
    sget v0, Lcolor/support/v7/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 216
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object p0

    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 218
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 221
    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iput-object p1, p0, Lcom/color/support/preference/ColorListPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 243
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setJump(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorListPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 147
    iput-object p1, p0, Lcom/color/support/preference/ColorListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 148
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText2(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText2:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText3(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText3:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText3:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorListPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreference;->notifyChanged()V

    :cond_2
    return-void
.end method
