.class public Lcom/color/support/preference/ColorSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "ColorSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/preference/ColorSwitchPreference$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/color/support/preference/ColorSwitchPreference$a;

.field private b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:Lcom/color/support/widget/ColorSwitch;

.field private f:Z

.field private g:I

.field private h:F

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 104
    sget v0, Lcolor/support/v7/appcompat/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p4, Lcom/color/support/preference/ColorSwitchPreference$a;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/color/support/preference/ColorSwitchPreference$a;-><init>(Lcom/color/support/preference/ColorSwitchPreference;B)V

    iput-object p4, p0, Lcom/color/support/preference/ColorSwitchPreference;->a:Lcom/color/support/preference/ColorSwitchPreference$a;

    const/4 p4, 0x1

    .line 53
    iput-boolean p4, p0, Lcom/color/support/preference/ColorSwitchPreference;->b:Z

    .line 131
    sget-object p4, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 133
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorShowDivider:I

    iget-boolean p4, p0, Lcom/color/support/preference/ColorSwitchPreference;->b:Z

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->b:Z

    .line 134
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorDividerDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->c:Landroid/graphics/drawable/Drawable;

    .line 135
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorEnalbeClickSpan:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->d:Z

    .line 136
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_hasBorder:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->f:Z

    .line 137
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_preference_icon_radius:I

    const/16 p4, 0xe

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->g:I

    .line 138
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorPreference_colorAssignment:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/preference/ColorSwitchPreference;->k:Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/color/support/preference/ColorSwitchPreference;->h:F

    .line 142
    iget p1, p0, Lcom/color/support/preference/ColorSwitchPreference;->h:F

    const/high16 p2, 0x41600000    # 14.0f

    mul-float/2addr p2, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/color/support/preference/ColorSwitchPreference;->i:I

    const/high16 p2, 0x42100000    # 36.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, p3

    float-to-int p1, p1

    .line 143
    iput p1, p0, Lcom/color/support/preference/ColorSwitchPreference;->j:I

    return-void
.end method

.method static synthetic a(Lcom/color/support/preference/ColorSwitchPreference;Ljava/lang/Object;)Z
    .locals 1

    .line 3085
    invoke-virtual {p0}, Lcom/color/support/preference/ColorSwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3088
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/preference/ColorSwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/color/support/preference/ColorSwitchPreference;->e:Lcom/color/support/widget/ColorSwitch;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSwitch;->setShouldPlaySound(Z)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 148
    sget v0, Lcolor/support/v7/appcompat/R$id;->color_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_0
    const v0, 0x1020040

    .line 153
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    instance-of v2, v0, Lcom/color/support/widget/ColorSwitch;

    if-eqz v2, :cond_1

    .line 155
    move-object v3, v0

    check-cast v3, Lcom/color/support/widget/ColorSwitch;

    const/4 v4, 0x0

    .line 156
    invoke-virtual {v3, v4}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    iput-object v3, p0, Lcom/color/support/preference/ColorSwitchPreference;->e:Lcom/color/support/widget/ColorSwitch;

    :cond_1
    if-eqz v2, :cond_2

    .line 160
    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    .line 161
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSwitch;->setLaidOut()V

    .line 162
    iget-object v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->a:Lcom/color/support/preference/ColorSwitchPreference$a;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    :cond_2
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 166
    iget-boolean v0, p0, Lcom/color/support/preference/ColorSwitchPreference;->d:Z

    if-eqz v0, :cond_3

    const v0, 0x1020010

    .line 167
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/color/support/preference/ColorSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 170
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 171
    new-instance v2, Lcom/color/support/preference/ColorSwitchPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/color/support/preference/ColorSwitchPreference$1;-><init>(Lcom/color/support/preference/ColorSwitchPreference;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    :cond_3
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 205
    instance-of v2, v0, Lcom/color/support/widget/ColorRoundImageView;

    if-eqz v2, :cond_6

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    move-object v2, v0

    check-cast v2, Lcom/color/support/widget/ColorRoundImageView;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 210
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->g:I

    .line 211
    iget v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->g:I

    iget v3, p0, Lcom/color/support/preference/ColorSwitchPreference;->i:I

    if-ge v2, v3, :cond_4

    .line 212
    iput v3, p0, Lcom/color/support/preference/ColorSwitchPreference;->g:I

    goto :goto_0

    .line 213
    :cond_4
    iget v3, p0, Lcom/color/support/preference/ColorSwitchPreference;->j:I

    if-le v2, v3, :cond_5

    .line 214
    iput v3, p0, Lcom/color/support/preference/ColorSwitchPreference;->g:I

    .line 218
    :cond_5
    :goto_0
    check-cast v0, Lcom/color/support/widget/ColorRoundImageView;

    iget-boolean v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->f:Z

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorRoundImageView;->setHasBorder(Z)V

    .line 219
    iget v2, p0, Lcom/color/support/preference/ColorSwitchPreference;->g:I

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorRoundImageView;->setBorderRectRadius(I)V

    .line 223
    :cond_6
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcolor/support/v7/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 1314
    iget-object v0, p0, Lcom/color/support/preference/ColorSwitchPreference;->k:Ljava/lang/CharSequence;

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 227
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_7
    const/16 v0, 0x8

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public onClick()V
    .locals 2

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, v0}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    .line 2260
    iget-object v1, p0, Lcom/color/support/preference/ColorSwitchPreference;->e:Lcom/color/support/widget/ColorSwitch;

    if-eqz v1, :cond_0

    .line 2261
    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorSwitch;->setTactileFeedbackEnabled(Z)V

    .line 240
    :cond_0
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->onClick()V

    return-void
.end method
