.class public Lcom/android/settings/notification/HighImportancePreferenceController;
.super Lcom/android/settings/notification/l;
.source "HighImportancePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private j:Lcom/android/settings/notification/NotificationSettingsBase$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->j:Lcom/android/settings/notification/NotificationSettingsBase$a;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "high_importance"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/HighImportancePreferenceController;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_1

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 77
    iget-object p2, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/HighImportancePreferenceController;->a()V

    .line 80
    iget-object p1, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->j:Lcom/android/settings/notification/NotificationSettingsBase$a;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase$a;->a()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->c:Lcom/android/settingslib/g$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 67
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/HighImportancePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method
