.class public Lcom/android/settings/notification/BadgePreferenceController;
.super Lcom/android/settings/notification/l;
.source "BadgePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "badge"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 49
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "notification_badging"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_5

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgePreferenceController;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->i:Z

    return v0

    :cond_5
    return v2
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 85
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz p2, :cond_0

    .line 86
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgePreferenceController;->a()V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz p2, :cond_1

    .line 89
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iput-boolean p1, p2, Lcom/android/settings/notification/k$a;->i:Z

    .line 90
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object p2, p2, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget v0, v0, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p2, v0, p1}, Lcom/android/settings/notification/k;->b(Ljava/lang/String;IZ)Z

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_1

    .line 71
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->c:Lcom/android/settingslib/g$a;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 1177
    iget-object v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    xor-int/lit8 v0, v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->i:Z

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
