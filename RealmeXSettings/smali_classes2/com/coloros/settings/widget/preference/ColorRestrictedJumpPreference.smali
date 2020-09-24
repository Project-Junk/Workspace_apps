.class public Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "ColorRestrictedJumpPreference.java"


# instance fields
.field public a:Lcom/coloros/settings/widget/preference/a;

.field private b:Z

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lcom/coloros/settings/widget/preference/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/coloros/settings/widget/preference/a;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Lcom/coloros/settings/widget/preference/a;

    invoke-direct {v0, p1, p0, p2}, Lcom/coloros/settings/widget/preference/a;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    .line 50
    sget-object v0, Lcom/android/settings/g$a;->ColorRestrictedJumpPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->b:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p3, Lcom/coloros/settings/widget/preference/a;

    invoke-direct {p3, p1, p0, p2}, Lcom/coloros/settings/widget/preference/a;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/a;->b()V

    .line 84
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/a;->a(Landroidx/preference/PreferenceViewHolder;)V

    .line 64
    iget-boolean v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x1020016

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->c:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06029e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->performClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/a;->a(Lcom/android/settingslib/g$a;)Z

    return-void

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    return-void
.end method
