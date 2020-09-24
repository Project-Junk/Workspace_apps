.class public Lcom/android/settings/notification/ChannelGroupNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "ChannelGroupNotificationSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ChannelGroupSettings"

    return-object v0
.end method

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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->r:Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/d;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/d;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/b;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/n;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/h;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->r:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c2

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500c8

    return v0
.end method

.method public onResume()V
    .locals 6

    .line 43
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 44
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->o:Lcom/android/settings/notification/k$a;

    const-string v1, "ChannelGroupSettings"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->k:Landroid/app/NotificationChannelGroup;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Notification channel group posted twice to settings - old size "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->s:Ljava/util/List;

    .line 1084
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 1086
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->k:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120e72

    .line 1091
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v1, 0x0

    .line 1092
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1093
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1094
    iget-object v1, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->k:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    .line 1098
    iget-object v1, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->x:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1099
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 1100
    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->s:Ljava/util/List;

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->k:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    .line 1100
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->a(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroidx/preference/Preference;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/l;

    .line 52
    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->o:Lcom/android/settings/notification/k$a;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->n:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->k:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->j:Lcom/android/settingslib/g$a;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/l;->a(Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/g$a;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/l;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_3

    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->b_()V

    return-void

    :cond_5
    :goto_4
    const-string v0, "Missing package or uid or packageinfo or group"

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->finish()V

    return-void
.end method
