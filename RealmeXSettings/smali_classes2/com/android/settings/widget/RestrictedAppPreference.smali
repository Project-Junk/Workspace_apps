.class public Lcom/android/settings/widget/RestrictedAppPreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "RestrictedAppPreference.java"


# instance fields
.field public a:Lcom/android/settingslib/i;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d02a2

    .line 1058
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RestrictedAppPreference;->setWidgetLayoutResource(I)V

    .line 1059
    new-instance p1, Lcom/android/settingslib/i;

    invoke-virtual {p0}, Lcom/android/settings/widget/RestrictedAppPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/settingslib/i;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/widget/RestrictedAppPreference;->a:Lcom/android/settingslib/i;

    .line 1060
    iput-object p2, p0, Lcom/android/settings/widget/RestrictedAppPreference;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->a:Lcom/android/settingslib/i;

    invoke-virtual {v0}, Lcom/android/settingslib/i;->b()V

    .line 105
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->a:Lcom/android/settingslib/i;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/i;->a(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a056b

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->a:Lcom/android/settingslib/i;

    .line 1161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 69
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->a:Lcom/android/settingslib/i;

    invoke-virtual {v0}, Lcom/android/settingslib/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 2095
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->a:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setEnabled(Z)V

    return-void
.end method
