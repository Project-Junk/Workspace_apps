.class public Lcom/android/settings/development/GpuViewUpdatesPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "GpuViewUpdatesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "show_hw_screen_updates"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const-string v0, "debug.hwui.show_dirty_regions"

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 46
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "debug.hwui.show_dirty_regions"

    .line 47
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/android/settingslib/development/d;->a()Lcom/android/settingslib/development/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/d;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    const-string p1, "debug.hwui.show_dirty_regions"

    const/4 v0, 0x0

    .line 55
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 57
    iget-object v0, p0, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
