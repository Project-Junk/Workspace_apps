.class public Lcom/coloros/settings/widget/preference/ColorGearPreference;
.super Lcom/android/settings/widget/GearPreference;
.source "ColorGearPreference.java"


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d010c

    .line 39
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/ColorGearPreference;->setLayoutResource(I)V

    .line 41
    sget-object v0, Lcom/android/settings/g$a;->SettingColorJumpPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorGearPreference;->a:Z

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d00c2

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorGearPreference;->b:Landroid/widget/TextView;

    .line 56
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorGearPreference;->a:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorGearPreference;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorGearPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060121

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorGearPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorGearPreference;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorGearPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060126

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorGearPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    const v0, 0x1020018

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 65
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    const/high16 v1, 0x41a00000    # 20.0f

    .line 68
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorGearPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 67
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 69
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 70
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 69
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    return-void
.end method
