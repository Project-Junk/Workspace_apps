.class public Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBlockedEffectsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/notification/ZenModeSettings$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_block_effects_settings"

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 32
    new-instance p2, Lcom/android/settings/notification/ZenModeSettings$a;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/ZenModeSettings$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;->a:Lcom/android/settings/notification/ZenModeSettings$a;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_block_effects_settings"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;->a:Lcom/android/settings/notification/ZenModeSettings$a;

    .line 1107
    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->g:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeSettings$a;->c(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
