.class public Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;
.super Landroidx/preference/Preference;
.source "ColorCommonVibrationPreference.java"


# instance fields
.field private a:Lcom/coloros/settings/feature/sound/controller/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0108

    .line 37
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 66
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1077
    iget-boolean v2, v0, Lcom/coloros/settings/feature/sound/controller/b;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1080
    iget-object v2, v0, Lcom/coloros/settings/feature/sound/controller/b;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V

    .line 1081
    iput-boolean v1, v0, Lcom/coloros/settings/feature/sound/controller/b;->d:Z

    .line 70
    :cond_0
    iput-object v3, p0, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/b;

    :cond_1
    const v0, 0x7f0a05db

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    .line 73
    new-instance v0, Lcom/coloros/settings/feature/sound/controller/b;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/coloros/settings/feature/sound/controller/b;-><init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/b;

    .line 74
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorCommonVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/b;

    if-eqz p1, :cond_5

    .line 2062
    iget-boolean v0, p1, Lcom/coloros/settings/feature/sound/controller/b;->d:Z

    if-nez v0, :cond_5

    .line 2071
    iget-object v0, p1, Lcom/coloros/settings/feature/sound/controller/b;->b:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const/4 v3, 0x3

    const-string v4, "common_vibration_intensity"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2073
    iget-object v2, p1, Lcom/coloros/settings/feature/sound/controller/b;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    move v1, v4

    :cond_4
    :goto_0
    invoke-virtual {v2, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setThumbIndex(I)V

    .line 2066
    iget-object v0, p1, Lcom/coloros/settings/feature/sound/controller/b;->c:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    iget-object v1, p1, Lcom/coloros/settings/feature/sound/controller/b;->e:Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->setOnSectionSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;)V

    .line 2067
    iput-boolean v4, p1, Lcom/coloros/settings/feature/sound/controller/b;->d:Z

    :cond_5
    return-void
.end method
