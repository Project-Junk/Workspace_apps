.class public Lcom/android/settings/development/LogdSizePreferenceController;
.super Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;
.source "LogdSizePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final m_()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->m_()V

    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/LogdSizePreferenceController;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/LogdSizePreferenceController;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
