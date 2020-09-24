.class public Lcom/android/settings/notification/ZenOnboardingActivity;
.super Landroid/app/Activity;
.source "ZenOnboardingActivity.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/widget/RadioButton;

.field d:Landroid/widget/RadioButton;

.field private e:Landroid/app/NotificationManager;

.field private f:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8

    .line 2160
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2162
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2161
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    const-string v1, "zen_settings_updated"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2166
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    return v2

    .line 2176
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_zen_settings_suggestion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_7

    .line 2182
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 2183
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/b;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/a;

    move-result-object v0

    .line 2184
    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v4, "pref_zen_suggestion_first_display_time_ms"

    .line 2188
    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2190
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v4, v0

    goto :goto_2

    :cond_4
    const-wide/16 v5, -0x1

    .line 2192
    invoke-interface {p0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :goto_2
    const-wide/32 v6, 0x48190800

    add-long/2addr v4, v6

    cmp-long p0, v0, v4

    if-gez p0, :cond_5

    move p0, v2

    goto :goto_3

    :cond_5
    move p0, v3

    .line 2198
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "still show zen suggestion based on time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenOnboardingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    return v2

    :cond_7
    :goto_4
    return v3
.end method


# virtual methods
.method public launchSettings(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->f:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x563

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 118
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 1108
    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->e:Landroid/app/NotificationManager;

    .line 62
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 1113
    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->f:Lcom/android/internal/logging/MetricsLogger;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "zen_settings_suggestion_viewed"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const p1, 0x7f0d03c2

    .line 2073
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->setContentView(I)V

    const p1, 0x7f0a07db

    .line 2075
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->a:Landroid/view/View;

    const p1, 0x7f0a07d7

    .line 2076
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->b:Landroid/view/View;

    const p1, 0x7f0a07dc

    .line 2077
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->c:Landroid/widget/RadioButton;

    const p1, 0x7f0a07d8

    .line 2078
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->d:Landroid/widget/RadioButton;

    .line 2080
    new-instance p1, Lcom/android/settings/notification/ZenOnboardingActivity$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/ZenOnboardingActivity$1;-><init>(Lcom/android/settings/notification/ZenOnboardingActivity;)V

    .line 2088
    new-instance v1, Lcom/android/settings/notification/ZenOnboardingActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenOnboardingActivity$2;-><init>(Lcom/android/settings/notification/ZenOnboardingActivity;)V

    .line 2096
    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->a:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2097
    iget-object v2, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2099
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2100
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2102
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2103
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->f:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x564

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 4

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->e:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/app/NotificationManager$Policy;

    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    or-int/lit8 v1, v1, 0x10

    const/4 v2, 0x2

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 131
    invoke-static {}, Landroid/app/NotificationManager$Policy;->getAllSuppressedVisualEffects()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->e:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->f:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x562

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->f:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x57e

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "zen_settings_updated"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenOnboardingActivity;->finishAndRemoveTask()V

    return-void
.end method
