.class public abstract Lcom/android/settings/wifi/p2p/a;
.super Lcom/android/settingslib/core/a;
.source "P2pCategoryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field protected a:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->a:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->a:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/preference/Preference;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->a:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 58
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/a;->a:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/a;->a:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/a;->a:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
