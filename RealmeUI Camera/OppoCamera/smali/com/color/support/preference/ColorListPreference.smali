.class public Lcom/color/support/preference/ColorListPreference;
.super Landroidx/preference/ListPreference;
.source "ColorListPreference.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/color/support/preference/ColorListPreference;->a:Landroid/content/Context;

    .line 50
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_mark:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorListPreference;->e:Landroid/graphics/drawable/Drawable;

    .line 52
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorListPreference;->b:Ljava/lang/CharSequence;

    .line 53
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status2:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorListPreference;->c:Ljava/lang/CharSequence;

    .line 54
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status3:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorListPreference;->d:Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorListPreference;->f:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/l;)V
    .locals 5

    .line 116
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->a(Landroidx/preference/l;)V

    .line 118
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {v0, v2}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    .line 121
    iget-object v3, p0, Lcom/color/support/preference/ColorListPreference;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText1:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 130
    iget-object v3, p0, Lcom/color/support/preference/ColorListPreference;->b:Ljava/lang/CharSequence;

    .line 131
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :cond_3
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText2:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 140
    iget-object v3, p0, Lcom/color/support/preference/ColorListPreference;->c:Ljava/lang/CharSequence;

    .line 141
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 142
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 145
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_5
    :goto_2
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText3:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 150
    iget-object v3, p0, Lcom/color/support/preference/ColorListPreference;->d:Ljava/lang/CharSequence;

    .line 151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 155
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :cond_7
    :goto_3
    sget v0, Lcolor/support/v7/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 161
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreference;->h()Ljava/lang/CharSequence;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 166
    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->f:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iput-object p1, p0, Lcom/color/support/preference/ColorListPreference;->f:Ljava/lang/CharSequence;

    .line 178
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreference;->i()V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/color/support/preference/ColorListPreference;->f:Ljava/lang/CharSequence;

    return-object v0
.end method
