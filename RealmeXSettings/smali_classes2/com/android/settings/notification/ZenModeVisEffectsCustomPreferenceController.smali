.class public Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectsCustomPreferenceController.java"


# instance fields
.field private a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1083
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x577

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 89
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f121ba6

    .line 2063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    const/16 v1, 0x578

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->a()V

    return-void
.end method

.method private synthetic b(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->a()V

    return-void
.end method

.method public static synthetic lambda$2gS3dziSfbXB0IjD5wgAQJXkj-U(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->b(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method public static synthetic lambda$dGGgzwm7ZCTx72Lah33QyfUI5MA(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 56
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$2gS3dziSfbXB0IjD5wgAQJXkj-U;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$2gS3dziSfbXB0IjD5wgAQJXkj-U;-><init>(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$a;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$dGGgzwm7ZCTx72Lah33QyfUI5MA;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$dGGgzwm7ZCTx72Lah33QyfUI5MA;-><init>(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$b;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->a:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    .line 1074
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v0, v0, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1075
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    .line 1077
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object v1, v1, Lcom/android/settings/notification/w;->b:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 70
    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->a(Z)V

    return-void
.end method
