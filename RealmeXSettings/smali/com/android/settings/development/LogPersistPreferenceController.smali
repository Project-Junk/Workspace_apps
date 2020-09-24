.class public Lcom/android/settings/development/LogPersistPreferenceController;
.super Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.source "LogPersistPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    iput-object p2, p0, Lcom/android/settings/development/LogPersistPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/LogPersistPreferenceController;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->e()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/development/LogPersistPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->a(Lcom/android/settings/development/m;)V

    return-void
.end method

.method final e()V
    .locals 1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final m_()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->m_()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 64
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/LogPersistPreferenceController;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->e()V

    return-void
.end method
