.class public Lcom/color/support/preference/ColorPreference;
.super Landroidx/preference/Preference;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/preference/ColorPreference;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/color/support/preference/ColorPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/preference/ColorPreference;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object v0, Lcolor/support/v7/a/a$n;->ColorPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$n;->ColorPreference_colorAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/preference/ColorPreference;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/ColorPreference;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/color/support/widget/ColorRoundImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/color/support/widget/ColorRoundImageView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/color/support/preference/ColorPreference;->c:I

    iget v1, p0, Lcom/color/support/preference/ColorPreference;->c:I

    iget v2, p0, Lcom/color/support/preference/ColorPreference;->e:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/color/support/preference/ColorPreference;->e:I

    :goto_0
    iput v1, p0, Lcom/color/support/preference/ColorPreference;->c:I

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/color/support/preference/ColorPreference;->c:I

    iget v2, p0, Lcom/color/support/preference/ColorPreference;->f:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/color/support/preference/ColorPreference;->f:I

    goto :goto_0

    :cond_1
    :goto_1
    check-cast v0, Lcom/color/support/widget/ColorRoundImageView;

    iget-boolean v1, p0, Lcom/color/support/preference/ColorPreference;->b:Z

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorRoundImageView;->setHasBorder(Z)V

    iget v1, p0, Lcom/color/support/preference/ColorPreference;->c:I

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorRoundImageView;->setBorderRectRadius(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/color/support/preference/ColorPreference;->d:Z

    if-eqz v0, :cond_3

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/preference/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v1, Lcom/color/support/preference/ColorPreference$1;

    invoke-direct {v1, p0, v0}, Lcom/color/support/preference/ColorPreference$1;-><init>(Lcom/color/support/preference/ColorPreference;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    sget v0, Lcolor/support/v7/a/a$g;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/color/support/preference/ColorPreference;->c()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const/16 p0, 0x8

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
