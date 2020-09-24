.class public Lcom/color/support/preference/ColorActivityDialogPreference;
.super Landroidx/preference/ListPreference;
.source "ColorActivityDialogPreference.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/CharSequence;

.field e:Landroid/content/Context;

.field f:Ljava/lang/CharSequence;

.field g:Ljava/lang/CharSequence;

.field h:Ljava/lang/CharSequence;

.field i:Landroid/graphics/drawable/Drawable;


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
    iput-boolean p4, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->a:Z

    .line 66
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->e:Landroid/content/Context;

    .line 67
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 68
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_mark:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->i:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status1:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->f:Ljava/lang/CharSequence;

    .line 70
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status2:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->g:Ljava/lang/CharSequence;

    .line 71
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status3:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->h:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorShowDivider:I

    iget-boolean p3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->a:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->a:Z

    .line 76
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->b:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    :cond_1
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->f:Ljava/lang/CharSequence;

    .line 120
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->b:Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {p0}, Lcom/color/support/preference/ColorActivityDialogPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 196
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 197
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 199
    invoke-static {v0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 200
    iget-object v3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText1:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 209
    iget-object v3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->f:Ljava/lang/CharSequence;

    .line 210
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :cond_3
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText2:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 219
    iget-object v3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->g:Ljava/lang/CharSequence;

    .line 220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 221
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 224
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_5
    :goto_2
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText3:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 229
    iget-object v3, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->h:Ljava/lang/CharSequence;

    .line 230
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 231
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 234
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_7
    :goto_3
    sget v0, Lcolor/support/v7/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 1276
    iget-object v0, p0, Lcom/color/support/preference/ColorActivityDialogPreference;->b:Ljava/lang/CharSequence;

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 241
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 244
    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method
