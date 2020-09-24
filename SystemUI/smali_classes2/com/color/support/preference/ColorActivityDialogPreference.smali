.class public Lcom/color/support/preference/ColorActivityDialogPreference;
.super Landroidx/preference/ListPreference;
.source "ColorActivityDialogPreference.java"


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field private mShowDivider:Z

.field mStatusText1:Ljava/lang/CharSequence;

.field mStatusText2:Ljava/lang/CharSequence;

.field mStatusText3:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorActivityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 92
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorActivityDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorActivityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorActivityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p4, 0x1

    .line 46
    iput-boolean p4, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mShowDivider:Z

    .line 66
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mContext:Landroid/content/Context;

    .line 67
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 68
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_mark:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status1:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 70
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status2:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 71
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status3:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorShowDivider:I

    iget-boolean p3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mShowDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mShowDivider:Z

    .line 76
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getAssignment()Ljava/lang/CharSequence;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getStatusText2()Ljava/lang/CharSequence;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getStatusText3()Ljava/lang/CharSequence;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isShowDivider()Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mShowDivider:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 196
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 197
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {v0, v2}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 200
    iget-object v3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 209
    iget-object v3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 210
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :cond_3
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 219
    iget-object v3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 221
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 224
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_5
    :goto_2
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText3:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 229
    iget-object v3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 230
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 231
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 234
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_7
    :goto_3
    sget v0, Lcolor/support/v7/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 239
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object p0

    .line 240
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 241
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 244
    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setJump(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorActivityDialogPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 173
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 265
    iput-boolean p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mShowDivider:Z

    .line 266
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 120
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText2(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText3(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->notifyChanged()V

    :cond_2
    return-void
.end method
