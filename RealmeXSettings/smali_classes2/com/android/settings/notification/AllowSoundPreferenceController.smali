.class public Lcom/android/settings/notification/AllowSoundPreferenceController;
.super Lcom/android/settings/notification/l;
.source "AllowSoundPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private j:Lcom/android/settings/notification/NotificationSettingsBase$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    .line 43
    iput-object p2, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->j:Lcom/android/settings/notification/NotificationSettingsBase$a;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "allow_sound"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "miscellaneous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_1

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, -0x3e8

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 76
    :goto_0
    iget-object p2, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/AllowSoundPreferenceController;->a()V

    .line 79
    iget-object p1, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->j:Lcom/android/settings/notification/NotificationSettingsBase$a;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase$a;->a()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 63
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->c:Lcom/android/settingslib/g$a;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 1177
    iget-object v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->a:Landroid/app/NotificationChannel;

    .line 67
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v2, -0x3e8

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    return-void

    :cond_2
    const-string p1, "AllowSoundPrefContr"

    const-string v0, "tried to updatestate on a null channel?!"

    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
