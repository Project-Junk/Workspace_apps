.class public Lcom/coloros/settings/widget/preference/ColorDensityPreference;
.super Lcom/color/support/preference/ColorEditTextPreference;
.source "ColorDensityPreference.java"

# interfaces
.implements Landroidx/preference/EditTextPreference$OnBindEditTextListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0, p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    invoke-virtual {p0, p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    .line 56
    sget-object v0, Lcom/android/settings/g$a;->SettingColorJumpPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->a:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()I
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 88
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .line 63
    invoke-super {p0}, Lcom/color/support/preference/ColorEditTextPreference;->onAttached()V

    .line 64
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 65
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f120757

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindEditText(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 96
    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorEditTextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f120fb6

    .line 73
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->setPositiveButtonText(I)V

    const v0, 0x1020010

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->b:Landroid/widget/TextView;

    .line 76
    iget-boolean p1, p0, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->a:Z

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060121

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060126

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x140

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 106
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit16 p1, p1, 0xa0

    .line 107
    div-int/2addr p1, p2

    const/16 p2, 0x78

    .line 108
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 109
    invoke-static {p1}, Lcom/android/settingslib/f/b;->a(I)V

    .line 112
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "display_density_forced"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorDensityPreference;->notifyChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DensityPreference"

    const-string v0, "Couldn\'t save density"

    .line 119
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
