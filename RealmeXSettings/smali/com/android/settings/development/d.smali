.class public Lcom/android/settings/development/d;
.super Lcom/android/settingslib/development/a;
.source "AdbPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field protected final a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/a;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/development/d;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/settings/development/d;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/settings/development/d;->b:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/d;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/development/d;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/EnableAdbWarningDialog;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final m_()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/android/settingslib/development/a;->m_()V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settings/development/d;->a(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/development/d;->b:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
