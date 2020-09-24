.class public Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectsAllPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;


# instance fields
.field private a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;->a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 53
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;->a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 3

    .line 72
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/16 v2, 0x575

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;->j:Lcom/android/settings/notification/w;

    const/16 v0, 0x1ff

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/w;->a(IZ)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object p1, p1, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {p1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result p1

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsAllPreferenceController;->a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Z)V

    return-void
.end method
