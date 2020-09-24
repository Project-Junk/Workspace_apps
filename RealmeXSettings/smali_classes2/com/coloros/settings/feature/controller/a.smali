.class public abstract Lcom/coloros/settings/feature/controller/a;
.super Lcom/android/settingslib/core/a;
.source "ColorStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field protected a:Landroidx/preference/Preference;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/coloros/settings/feature/controller/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Landroidx/preference/Preference;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/controller/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/controller/a;->a:Landroidx/preference/Preference;

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/controller/a;->a:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/controller/a;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/feature/controller/a;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/controller/a;->a(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/controller/a;->a(Landroidx/preference/Preference;)V

    return-void
.end method
