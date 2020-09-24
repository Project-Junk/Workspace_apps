.class public Lcom/color/support/preference/ColorMultiSelectListPreference;
.super Landroidx/preference/MultiSelectListPreference;
.source "ColorMultiSelectListPreference.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->f:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->f:Ljava/util/Set;

    .line 65
    iput-object p1, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->a:Landroid/content/Context;

    .line 66
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_mark:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->e:Landroid/graphics/drawable/Drawable;

    .line 68
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->b:Ljava/lang/CharSequence;

    .line 69
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status2:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->c:Ljava/lang/CharSequence;

    .line 70
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status3:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->d:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->g:Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iput-object p1, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->g:Ljava/lang/CharSequence;

    .line 249
    invoke-virtual {p0}, Lcom/color/support/preference/ColorMultiSelectListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 178
    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 179
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 181
    invoke-static {v0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 182
    iget-object v3, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 191
    iget-object v3, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->b:Ljava/lang/CharSequence;

    .line 192
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :cond_3
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 201
    iget-object v3, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->c:Ljava/lang/CharSequence;

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 203
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 206
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :cond_5
    :goto_2
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText3:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 211
    iget-object v3, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->d:Ljava/lang/CharSequence;

    .line 212
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 213
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 216
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :cond_7
    :goto_3
    sget v0, Lcolor/support/v7/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 1238
    iget-object v0, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->g:Ljava/lang/CharSequence;

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 227
    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method
