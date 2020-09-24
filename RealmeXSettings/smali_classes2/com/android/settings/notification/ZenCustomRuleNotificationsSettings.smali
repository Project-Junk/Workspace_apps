.class public Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;
.super Lcom/android/settings/notification/t;
.source "ZenCustomRuleNotificationsSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/notification/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->c:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_mute_notifications"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_hide_notifications"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_custom"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->c:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "footer_preference"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->c:Ljava/util/List;

    return-object p1
.end method

.method final c()Ljava/lang/String;
    .locals 1

    const-string v0, "restrict_category"

    return-object v0
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/android/settings/notification/t;->d()V

    return-void
.end method

.method public final bridge synthetic e()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/android/settings/notification/t;->e()V

    return-void
.end method

.method public bridge synthetic getHelpResource()I
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/android/settings/notification/t;->getHelpResource()I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x648

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150158

    return v0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/notification/t;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/android/settings/notification/t;->onResume()V

    return-void
.end method
