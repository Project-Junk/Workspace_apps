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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->f:Ljava/util/Set;

    .line 59
    iput-object p1, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->a:Landroid/content/Context;

    .line 60
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_mark:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->e:Landroid/graphics/drawable/Drawable;

    .line 62
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->b:Ljava/lang/CharSequence;

    .line 63
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status2:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->c:Ljava/lang/CharSequence;

    .line 64
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorJumpPreference_color_jump_status3:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->d:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->g:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/l;)V
    .locals 5

    .line 126
    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreference;->a(Landroidx/preference/l;)V

    .line 127
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {v0, v2}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    .line 130
    iget-object v3, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_1
    :goto_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText1:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 139
    iget-object v3, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->b:Ljava/lang/CharSequence;

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 141
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_3
    :goto_1
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText2:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 149
    iget-object v3, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->c:Ljava/lang/CharSequence;

    .line 150
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 154
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :cond_5
    :goto_2
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_statusText3:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 159
    iget-object v3, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->d:Ljava/lang/CharSequence;

    .line 160
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 161
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 164
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :cond_7
    :goto_3
    sget v0, Lcolor/support/v7/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 170
    invoke-virtual {p0}, Lcom/color/support/preference/ColorMultiSelectListPreference;->o()Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 172
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 175
    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/color/support/preference/ColorMultiSelectListPreference;->g:Ljava/lang/CharSequence;

    return-object v0
.end method
