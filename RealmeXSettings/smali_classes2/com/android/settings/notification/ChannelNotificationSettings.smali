.class public Lcom/android/settings/notification/ChannelNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "ChannelNotificationSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ChannelSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/d;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/d;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/MinImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/MinImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/HighImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/HighImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/AllowSoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/AllowSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/SoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settings/notification/SoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/VibrationPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/VibrationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/b;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/h;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/VisibilityPreferenceController;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/VisibilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/LightsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/LightsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/BadgePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/BadgePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DndPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/DndPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/n;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/BubblePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->b:Lcom/android/settings/notification/k;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/notification/BubblePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/k;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x109

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150031

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/l;

    .line 76
    instance-of v2, v1, Landroid/preference/PreferenceManager$OnActivityResultListener;

    if-eqz v2, :cond_0

    .line 77
    check-cast v1, Landroid/preference/PreferenceManager$OnActivityResultListener;

    .line 78
    invoke-interface {v1, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/notification/NotificationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "fromSettings"

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 59
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 60
    iget v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->f:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->i:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->n:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/l;

    .line 67
    iget-object v2, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->o:Lcom/android/settings/notification/k$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->n:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->k:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/ChannelNotificationSettings;->j:Lcom/android/settingslib/g$a;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/l;->a(Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/g$a;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/l;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->b_()V

    return-void

    :cond_2
    :goto_1
    const-string v0, "ChannelSettings"

    const-string v1, "Missing package or uid or packageinfo or channel"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelNotificationSettings;->finish()V

    return-void
.end method
