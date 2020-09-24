.class public Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;
.super Landroidx/preference/Preference;
.source "ColorRingVibrationPreference.java"


# instance fields
.field public a:Lcom/coloros/settings/feature/sound/controller/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0108

    .line 37
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/d;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/coloros/settings/feature/sound/controller/d;->b()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/d;

    :cond_0
    const v0, 0x7f0a05db

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    .line 85
    new-instance v0, Lcom/coloros/settings/feature/sound/controller/d;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/coloros/settings/feature/sound/controller/d;-><init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/d;

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRingVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/d;

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/coloros/settings/feature/sound/controller/d;->a()V

    :cond_1
    return-void
.end method
