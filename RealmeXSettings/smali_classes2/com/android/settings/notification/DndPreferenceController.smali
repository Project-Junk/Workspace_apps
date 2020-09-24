.class public Lcom/android/settings/notification/DndPreferenceController;
.super Lcom/android/settings/notification/l;
.source "DndPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bypass_dnd"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/android/settings/notification/DndPreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 61
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 62
    iget-object p2, p0, Lcom/android/settings/notification/DndPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/notification/DndPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/DndPreferenceController;->a()V

    :cond_0
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->c:Lcom/android/settingslib/g$a;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 1177
    iget-object v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    xor-int/lit8 v0, v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
