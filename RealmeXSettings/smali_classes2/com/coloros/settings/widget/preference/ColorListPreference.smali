.class public Lcom/coloros/settings/widget/preference/ColorListPreference;
.super Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;
.source "ColorListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorListPreference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setValue(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorListPreference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method
