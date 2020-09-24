.class public abstract Lcom/android/settingslib/development/b;
.super Lcom/android/settingslib/core/a;
.source "DeveloperOptionsPreferenceController.java"


# instance fields
.field public d:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settingslib/development/b;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/development/b;->d:Landroidx/preference/Preference;

    return-void
.end method

.method public g()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/settingslib/development/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settingslib/development/b;->l_()V

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k_()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/settingslib/development/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/development/b;->m_()V

    :cond_0
    return-void
.end method

.method protected l_()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/development/b;->d:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected m_()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/development/b;->d:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
