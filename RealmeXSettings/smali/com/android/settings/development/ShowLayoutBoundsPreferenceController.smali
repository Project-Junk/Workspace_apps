.class public Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "ShowLayoutBoundsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "debug_layout"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 60
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/sysprop/DisplayProperties;->debug_layout(Ljava/lang/Boolean;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/DisplayProperties;->debug_layout(Ljava/lang/Boolean;)V

    .line 47
    invoke-static {}, Lcom/android/settingslib/development/d;->a()Lcom/android/settingslib/development/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/d;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 53
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_layout()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
