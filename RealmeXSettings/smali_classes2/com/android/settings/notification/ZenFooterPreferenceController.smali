.class public Lcom/android/settings/notification/ZenFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/settings/notification/ZenFooterPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, v0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenFooterPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, v0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 38
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/notification/ZenFooterPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, v0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez v0, :cond_0

    const v0, 0x7f121b5d

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenFooterPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, v0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f121b5a

    .line 48
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
