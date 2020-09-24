.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;
.super Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;
.source "ColorBalanceSeekBarPreference.java"


# instance fields
.field private final g:Landroid/content/Context;

.field private h:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

.field private q:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404a8

    const v1, 0x101008e

    .line 42
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->g:Landroid/content/Context;

    const p1, 0x7f0d0251

    .line 46
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 52
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    instance-of v0, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    if-nez v0, :cond_0

    const v0, 0x7f0a05db

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->h:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    if-nez v0, :cond_1

    const-string v0, "com.android.internal.R.id.seekbar"

    .line 56
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->h:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    instance-of v0, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->a:Lcom/color/support/widget/seekbar/ColorSeekBar;

    check-cast v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->h:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    :cond_1
    :goto_0
    const-string v0, "com.android.internal.R.id.icon"

    .line 61
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->q:Landroid/widget/ImageView;

    .line 1066
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->h:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    if-eqz p1, :cond_2

    .line 1069
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->g:Landroid/content/Context;

    .line 1070
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "master_balance"

    .line 1069
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    .line 1073
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->h:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->setMax(I)V

    .line 1074
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->h:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->setProgress(I)V

    .line 1075
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->h:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBarPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->setEnabled(Z)V

    :cond_2
    return-void
.end method
