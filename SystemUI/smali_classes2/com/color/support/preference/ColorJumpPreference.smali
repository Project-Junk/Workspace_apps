.class public Lcom/color/support/preference/ColorJumpPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "ColorJumpPreference.java"


# static fields
.field public static final FORCE_CLICK:I = 0x1

.field public static final FORCE_UNCLICK:I = 0x2

.field public static final NORMAL:I


# instance fields
.field private mClickStyle:I

.field mContext:Landroid/content/Context;

.field mHasBorder:Z

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field mStatusText1:Ljava/lang/CharSequence;

.field mStatusText2:Ljava/lang/CharSequence;

.field mStatusText3:Ljava/lang/CharSequence;

.field mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 97
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorJumpPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p4, 0x0

    .line 58
    iput p4, p0, Lcom/color/support/preference/ColorJumpPreference;->mClickStyle:I

    .line 76
    iput-object p1, p0, Lcom/color/support/preference/ColorJumpPreference;->mContext:Landroid/content/Context;

    .line 77
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_mark:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 79
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 80
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status2:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 81
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status3:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 82
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_colorClickStyle:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/preference/ColorJumpPreference;->mClickStyle:I

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getClickStyle()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/color/support/preference/ColorJumpPreference;->mClickStyle:I

    return p0
.end method

.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/color/support/preference/ColorJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getStatusText2()Ljava/lang/CharSequence;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getStatusText3()Ljava/lang/CharSequence;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 220
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 222
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {v0, v2}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 225
    iget-object v3, p0, Lcom/color/support/preference/ColorJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 236
    iget v3, p0, Lcom/color/support/preference/ColorJumpPreference;->mClickStyle:I

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 244
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 255
    :cond_4
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 257
    iget-object v3, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 258
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 259
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 262
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :cond_6
    :goto_2
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 267
    iget-object v3, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 269
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 272
    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :cond_8
    :goto_3
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText3:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 277
    iget-object p0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 279
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 282
    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public setClickStyle(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/color/support/preference/ColorJumpPreference;->mClickStyle:I

    return-void
.end method

.method public setJump(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/color/support/preference/ColorJumpPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/color/support/preference/ColorJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 195
    iput-object p1, p0, Lcom/color/support/preference/ColorJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p0}, Lcom/color/support/preference/ColorJumpPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {p0}, Lcom/color/support/preference/ColorJumpPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText2(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {p0}, Lcom/color/support/preference/ColorJumpPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText3(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {p0}, Lcom/color/support/preference/ColorJumpPreference;->notifyChanged()V

    :cond_2
    return-void
.end method
