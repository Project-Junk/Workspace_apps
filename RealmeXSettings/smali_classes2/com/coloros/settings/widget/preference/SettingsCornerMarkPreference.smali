.class public Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "SettingsCornerMarkPreference.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 59
    iget v0, p0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a:I

    if-eq v0, p1, :cond_0

    .line 60
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a:I

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a017e

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 48
    iget v0, p0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a:I

    if-gtz v0, :cond_0

    const/16 v0, 0x8

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a:I

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/utils/bq;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
