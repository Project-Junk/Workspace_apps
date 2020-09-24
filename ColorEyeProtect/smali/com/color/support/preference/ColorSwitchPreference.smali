.class public Lcom/color/support/preference/ColorSwitchPreference;
.super Landroidx/preference/SwitchPreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/preference/ColorSwitchPreference$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/color/support/preference/ColorSwitchPreference$a;

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Lcom/color/support/widget/ColorSwitch;

.field private g:Z

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$b;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p4, Lcom/color/support/preference/ColorSwitchPreference$a;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/color/support/preference/ColorSwitchPreference$a;-><init>(Lcom/color/support/preference/ColorSwitchPreference;Lcom/color/support/preference/ColorSwitchPreference$1;)V

    iput-object p4, p0, Lcom/color/support/preference/ColorSwitchPreference;->b:Lcom/color/support/preference/ColorSwitchPreference$a;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/color/support/preference/ColorSwitchPreference;->c:Z

    sget-object p4, Lcolor/support/v7/a/a$n;->ColorPreference:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$n;->ColorPreference_colorShowDivider:I

    iget-boolean p4, p0, Lcom/color/support/preference/ColorSwitchPreference;->c:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->c:Z

    sget p3, Lcolor/support/v7/a/a$n;->ColorPreference_colorDividerDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->d:Landroid/graphics/drawable/Drawable;

    sget p3, Lcolor/support/v7/a/a$n;->ColorPreference_colorEnalbeClickSpan:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->e:Z

    sget p3, Lcolor/support/v7/a/a$n;->ColorPreference_hasBorder:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->g:Z

    sget p3, Lcolor/support/v7/a/a$n;->ColorPreference_preference_icon_radius:I

    const/16 p4, 0xe

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->h:I

    sget p3, Lcolor/support/v7/a/a$n;->ColorPreference_colorAssignment:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->l:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/color/support/preference/ColorSwitchPreference;->i:F

    iget p1, p0, Lcom/color/support/preference/ColorSwitchPreference;->i:F

    const/high16 p2, 0x41600000    # 14.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/preference/ColorSwitchPreference;->j:I

    iget p1, p0, Lcom/color/support/preference/ColorSwitchPreference;->i:F

    const/high16 p3, 0x42100000    # 36.0f

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/color/support/preference/ColorSwitchPreference;->k:I

    return-void
.end method

.method static synthetic a(Lcom/color/support/preference/ColorSwitchPreference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorSwitchPreference;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/preference/ColorSwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/preference/ColorSwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$c;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/ColorSwitchPreference;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/preference/ColorSwitchPreference;->f:Lcom/color/support/widget/ColorSwitch;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/preference/ColorSwitchPreference;->f:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSwitch;->setShouldPlaySound(Z)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 5

    sget v0, Lcolor/support/v7/a/a$g;->color_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_0
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/color/support/widget/ColorSwitch;

    if-eqz v2, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/color/support/widget/ColorSwitch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v3, p0, Lcom/color/support/preference/ColorSwitchPreference;->f:Lcom/color/support/widget/ColorSwitch;

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/l;)V

    if-eqz v2, :cond_2

    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSwitch;->d()V

    iget-object v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->b:Lcom/color/support/preference/ColorSwitchPreference$a;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/color/support/preference/ColorSwitchPreference;->e:Z

    if-eqz v0, :cond_3

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/preference/ColorSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v2, Lcom/color/support/preference/ColorSwitchPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/color/support/preference/ColorSwitchPreference$1;-><init>(Lcom/color/support/preference/ColorSwitchPreference;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    iget-object v0, p1, Landroidx/preference/l;->a:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v2, v0, Lcom/color/support/widget/ColorRoundImageView;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/color/support/widget/ColorRoundImageView;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->h:I

    iget v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->h:I

    iget v3, p0, Lcom/color/support/preference/ColorSwitchPreference;->j:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->j:I

    :goto_0
    iput v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->h:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->h:I

    iget v3, p0, Lcom/color/support/preference/ColorSwitchPreference;->k:I

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->k:I

    goto :goto_0

    :cond_5
    :goto_1
    check-cast v0, Lcom/color/support/widget/ColorRoundImageView;

    iget-boolean v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->g:Z

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorRoundImageView;->setHasBorder(Z)V

    iget v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->h:I

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorRoundImageView;->setBorderRectRadius(I)V

    :cond_6
    iget-object p1, p1, Landroidx/preference/l;->a:Landroid/view/View;

    sget v0, Lcolor/support/v7/a/a$g;->assignment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/color/support/preference/ColorSwitchPreference;->b()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/preference/ColorSwitchPreference;->c(Z)V

    invoke-super {p0}, Landroidx/preference/SwitchPreference;->onClick()V

    return-void
.end method
