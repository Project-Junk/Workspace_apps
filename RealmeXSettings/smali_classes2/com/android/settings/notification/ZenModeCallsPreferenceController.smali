.class public Lcom/android/settings/notification/ZenModeCallsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeCallsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/android/settings/notification/ZenModeSettings$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->a:Ljava/lang/String;

    .line 38
    new-instance p2, Lcom/android/settings/notification/ZenModeSettings$a;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/ZenModeSettings$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->b:Lcom/android/settings/notification/ZenModeSettings$a;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeCallsPreferenceController;->b:Lcom/android/settings/notification/ZenModeSettings$a;

    .line 1107
    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->g:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeSettings$a;->a(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/16 v0, 0x8

    .line 59
    invoke-static {v0}, Lcom/android/settings/notification/w;->g(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
