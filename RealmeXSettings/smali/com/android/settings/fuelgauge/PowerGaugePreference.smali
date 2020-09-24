.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "PowerGaugePreference.java"


# instance fields
.field a:Lcom/android/settings/fuelgauge/c;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/c;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/c;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p3, :cond_0

    .line 61
    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p1, 0x7f0d0281

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setWidgetLayoutResource(I)V

    .line 64
    iput-object p5, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->a:Lcom/android/settings/fuelgauge/c;

    .line 65
    iput-object p4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->b:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->c:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 107
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a07a4

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f08087d

    .line 112
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const v0, 0x1020016

    .line 118
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
