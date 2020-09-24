.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$2;
.super Landroidx/preference/Preference;
.source "ColorToggleFeaturePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;Landroid/content/Context;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$2;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;

    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$2;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
