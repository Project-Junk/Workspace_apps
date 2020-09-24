.class public Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;
.super Landroidx/preference/Preference;
.source "ColorTouchVibrationPreference.java"


# instance fields
.field public a:Lcom/coloros/settings/feature/sound/controller/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0108

    .line 36
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/e;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/coloros/settings/feature/sound/controller/e;->b()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/e;

    :cond_0
    const v0, 0x7f0a05db

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    .line 74
    new-instance v0, Lcom/coloros/settings/feature/sound/controller/e;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/coloros/settings/feature/sound/controller/e;-><init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/e;

    .line 75
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/e;

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/coloros/settings/feature/sound/controller/e;->a()V

    :cond_1
    return-void
.end method
