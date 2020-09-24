.class public Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeSettingsFooterPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "footer_preference"

    .line 54
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 55
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->a:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private a(Landroid/service/notification/ZenModeConfig;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, ""

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 130
    iget-object v10, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 132
    sget-object v2, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->h:Lcom/android/settings/notification/AbstractZenModePreferenceController$b;

    iget-object v10, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/android/settings/notification/AbstractZenModePreferenceController$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 134
    iget-object v9, v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v10, 0x7f121b7f

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v2, v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 139
    iget-object v1, v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121b83

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2192
    :cond_1
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v10

    cmp-long v2, v10, v3

    if-lez v2, :cond_3

    .line 144
    sget-object v2, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->h:Lcom/android/settings/notification/AbstractZenModePreferenceController$b;

    iget-object v9, v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 3184
    iget-object v2, v2, Lcom/android/settings/notification/AbstractZenModePreferenceController$b;->a:Landroid/content/Context;

    .line 3188
    invoke-static {v10, v11}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v12

    .line 3184
    invoke-static {v2, v10, v11, v12, v9}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v2

    .line 146
    iget-object v9, v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v12, 0x7f121b82

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v2, v13, v7

    invoke-virtual {v9, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v10, -0x1

    .line 155
    :cond_3
    :goto_1
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 156
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 158
    iget-object v12, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 4179
    invoke-static {v12}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 4180
    invoke-static {v12}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    move v12, v7

    goto :goto_4

    :cond_5
    :goto_3
    move v12, v8

    :goto_4
    const v13, 0x7f121b7e

    if-nez v12, :cond_6

    .line 159
    iget-object v1, v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v2, v3, v7

    invoke-virtual {v1, v13, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :cond_6
    sget-object v12, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->h:Lcom/android/settings/notification/AbstractZenModePreferenceController$b;

    iget-object v14, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 4196
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-wide v14, 0x7fffffffffffffffL

    move-wide v3, v14

    goto :goto_6

    .line 4201
    :cond_7
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 4202
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v14

    .line 4203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v3

    .line 4206
    invoke-virtual {v14}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 4207
    iget-object v12, v12, Lcom/android/settings/notification/AbstractZenModePreferenceController$b;->a:Landroid/content/Context;

    const-string v5, "alarm"

    .line 5222
    invoke-virtual {v12, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 5223
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 5224
    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v5

    goto :goto_5

    :cond_8
    const-wide/16 v5, 0x0

    .line 4208
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8, v5, v6}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 4209
    invoke-virtual {v14, v3, v4}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v7

    if-eqz v7, :cond_a

    move-wide v3, v5

    goto :goto_6

    :cond_9
    const-wide/16 v3, -0x1

    :cond_a
    :goto_6
    cmp-long v5, v3, v10

    if-lez v5, :cond_b

    .line 167
    iget-object v5, v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v13, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move-wide v10, v3

    goto :goto_7

    :cond_b
    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    move v6, v8

    move v8, v7

    :goto_7
    move v7, v8

    const-wide/16 v3, 0x0

    move v8, v6

    goto/16 :goto_2

    :cond_d
    return-object v9
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;)V
    .locals 2

    .line 6191
    new-instance v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;-><init>()V

    .line 6192
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {v1}, Lcom/android/settings/notification/w;->e()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 6202
    iput-object v1, v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->a:Landroid/app/NotificationManager$Policy;

    .line 6193
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->a:Landroidx/fragment/app/FragmentManager;

    const-class v1, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "footer_preference"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->isAvailable()Z

    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_6

    .line 2111
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {v1}, Lcom/android/settings/notification/w;->e()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 1091
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 1092
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 2177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_0

    .line 2179
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2182
    :cond_0
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2183
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2184
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1096
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1098
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1099
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1102
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1103
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1105
    new-instance v0, Lcom/android/settings/utils/a$a;

    new-instance v3, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$1;-><init>(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;)V

    const-string v4, "link"

    invoke-direct {v0, v4, v3}, Lcom/android/settings/utils/a$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x2

    .line 1112
    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121b80

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    .line 1114
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f121b81

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v4, v2, [Lcom/android/settings/utils/a$a;

    aput-object v0, v4, v7

    invoke-static {v1, v4}, Lcom/android/settings/utils/a;->a(Ljava/lang/CharSequence;[Lcom/android/settings/utils/a$a;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v2

    .line 1112
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 1120
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->a(Landroid/service/notification/ZenModeConfig;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method
