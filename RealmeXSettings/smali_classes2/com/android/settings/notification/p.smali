.class public final Lcom/android/settings/notification/p;
.super Lcom/android/settingslib/core/a;
.source "RecentNotifyingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# static fields
.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/fragment/app/Fragment;

.field private final e:Landroid/content/pm/PackageManager;

.field private final f:Lcom/android/settings/notification/k;

.field private g:Landroid/app/usage/IUsageStatsManager;

.field private final h:Landroid/util/IconDrawableFactory;

.field private i:Ljava/util/Calendar;

.field private final j:Lcom/coloros/settingslib/applications/ApplicationsState;

.field private k:Landroidx/preference/PreferenceCategory;

.field private l:Landroidx/preference/Preference;

.field private m:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/notification/p;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Landroid/app/Application;Landroidx/fragment/app/Fragment;)V
    .locals 7

    if-nez p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p5}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p5

    :goto_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/p;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/coloros/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/coloros/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/p;->h:Landroid/util/IconDrawableFactory;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/p;->e:Landroid/content/pm/PackageManager;

    .line 107
    iput-object p6, p0, Lcom/android/settings/notification/p;->d:Landroidx/fragment/app/Fragment;

    .line 108
    iput-object p5, p0, Lcom/android/settings/notification/p;->j:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 109
    iput-object p2, p0, Lcom/android/settings/notification/p;->f:Lcom/android/settings/notification/k;

    .line 110
    iput-object p3, p0, Lcom/android/settings/notification/p;->g:Landroid/app/usage/IUsageStatsManager;

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/p;->b:Ljava/util/List;

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/p;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/android/settings/notification/p;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/android/settings/notification/p;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-static {p4, p1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/android/settings/notification/p;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/p;->a:Ljava/util/List;

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/p;->i:Ljava/util/Calendar;

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/p;->i:Ljava/util/Calendar;

    const/4 v1, 0x6

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v9, 0x0

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/p;->g:Landroid/app/usage/IUsageStatsManager;

    iget-object v3, p0, Lcom/android/settings/notification/p;->i:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/settings/notification/p;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move v7, v1

    .line 172
    invoke-interface/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 175
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    if-eqz v9, :cond_0

    .line 178
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 180
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 181
    :cond_1
    :goto_2
    invoke-virtual {v9}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {v9, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 184
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 186
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/notification/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotifyingApp;

    if-nez v4, :cond_2

    .line 188
    new-instance v4, Landroid/service/notification/NotifyingApp;

    invoke-direct {v4}, Landroid/service/notification/NotifyingApp;-><init>()V

    .line 189
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/settings/notification/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/notification/NotifyingApp;->setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;

    .line 191
    invoke-virtual {v4, v1}, Landroid/service/notification/NotifyingApp;->setUserId(I)Landroid/service/notification/NotifyingApp;

    .line 193
    :cond_2
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 194
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/service/notification/NotifyingApp;->setLastNotified(J)Landroid/service/notification/NotifyingApp;

    goto :goto_2

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/p;->a:Ljava/util/List;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/android/settings/notification/p;->a()V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/notification/p;->c()Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/p;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/p;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 225
    iget-object v1, v0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    const v2, 0x7f1211bf

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->setTitle(I)V

    .line 226
    iget-object v1, v0, Lcom/android/settings/notification/p;->m:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 227
    iget-object v1, v0, Lcom/android/settings/notification/p;->l:Landroidx/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, v0, Lcom/android/settings/notification/p;->l:Landroidx/preference/Preference;

    const v4, 0x7f0806be

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setIcon(I)V

    .line 232
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 233
    iget-object v4, v0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    .line 235
    iget-object v7, v0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v7

    .line 236
    invoke-virtual {v7}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "all_notifications"

    .line 237
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 238
    check-cast v7, Lcom/android/settings/notification/NotificationAppPreference;

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_5

    move-object/from16 v7, p2

    .line 243
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/NotifyingApp;

    .line 245
    invoke-virtual {v8}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v9

    .line 246
    iget-object v10, v0, Lcom/android/settings/notification/p;->j:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 247
    invoke-virtual {v8}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 253
    invoke-virtual {v8}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v11

    invoke-static {v11, v9}, Lcom/android/settings/notification/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/notification/NotificationAppPreference;

    if-nez v11, :cond_2

    .line 256
    new-instance v11, Lcom/android/settings/notification/NotificationAppPreference;

    move-object/from16 v12, p1

    invoke-direct {v11, v12}, Lcom/android/settings/notification/NotificationAppPreference;-><init>(Landroid/content/Context;)V

    move v13, v5

    goto :goto_2

    :cond_2
    move-object/from16 v12, p1

    move v13, v2

    .line 259
    :goto_2
    invoke-virtual {v8}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v14

    invoke-static {v14, v9}, Lcom/android/settings/notification/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/notification/NotificationAppPreference;->setKey(Ljava/lang/String;)V

    .line 260
    iget-object v14, v10, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/android/settings/notification/NotificationAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v14, v0, Lcom/android/settings/notification/p;->h:Landroid/util/IconDrawableFactory;

    iget-object v15, v10, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v15}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/notification/NotificationAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x2

    .line 1082
    iput v14, v11, Lcom/android/settingslib/TwoTargetPreference;->p:I

    .line 263
    iget-object v14, v0, Lcom/android/settings/notification/p;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual {v8}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v17

    move/from16 v19, v4

    sub-long v3, v15, v17

    long-to-double v3, v3

    .line 263
    invoke-static {v14, v3, v4, v2}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/android/settings/notification/NotificationAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v11, v6}, Lcom/android/settings/notification/NotificationAppPreference;->setOrder(I)V

    .line 266
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package"

    .line 267
    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v4, v10, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v14, "uid"

    invoke-virtual {v3, v14, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    new-instance v4, Lcom/android/settings/core/f;

    iget-object v14, v0, Lcom/android/settings/notification/p;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    invoke-direct {v4, v14}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v14, Lcom/android/settings/notification/AppNotificationSettings;

    .line 270
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v4

    const v14, 0x7f120f0d

    const/4 v8, 0x0

    .line 2063
    invoke-virtual {v4, v8, v14}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v4

    .line 272
    invoke-virtual {v4, v3}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget-object v14, v10, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 273
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-direct {v4, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/settings/core/f;->a(Landroid/os/UserHandle;)Lcom/android/settings/core/f;

    move-result-object v3

    const/16 v4, 0x85

    .line 274
    invoke-virtual {v3, v4}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v3

    .line 269
    invoke-virtual {v11, v3}, Lcom/android/settings/notification/NotificationAppPreference;->setIntent(Landroid/content/Intent;)V

    .line 277
    iget-object v3, v0, Lcom/android/settings/notification/p;->mContext:Landroid/content/Context;

    iget-object v4, v10, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v4}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/settings/notification/NotificationAppPreference;->b(Z)V

    .line 278
    new-instance v3, Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;

    invoke-direct {v3, v0, v9, v10}, Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;-><init>(Lcom/android/settings/notification/p;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    invoke-virtual {v11, v3}, Lcom/android/settings/notification/NotificationAppPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    iget-object v3, v10, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 285
    invoke-static {v9, v3}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;I)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 284
    invoke-virtual {v11, v3}, Lcom/android/settings/notification/NotificationAppPreference;->a(Z)V

    if-nez v13, :cond_4

    .line 288
    iget-object v3, v0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v11}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_3
    move-object/from16 v12, p1

    move-object v8, v3

    move/from16 v19, v4

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object v3, v8

    move/from16 v4, v19

    goto/16 :goto_1

    .line 292
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 293
    iget-object v3, v0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    :cond_6
    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 3

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 325
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/android/settings/notification/p;->e:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/settings/notification/p;->j:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 330
    invoke-virtual {v0, p1, p2}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 331
    iget-object v0, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 332
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not a user visible or instant app, skipping "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecentNotisCtrl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic a(Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 279
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    .line 280
    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;IZ)Z

    return p4
.end method

.method private b()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/notification/p;->m:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/notification/p;->l:Landroidx/preference/Preference;

    const v2, 0x7f120f0d

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/notification/p;->l:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_notifications"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/settings/notification/p;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    iget-object v2, p0, Lcom/android/settings/notification/p;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotifyingApp;

    .line 302
    iget-object v5, p0, Lcom/android/settings/notification/p;->j:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 303
    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v7

    .line 302
    invoke-virtual {v5, v6, v7}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 307
    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/notification/p;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$cT8Rx8KXN4VSHFRbmgJtjBYbMwM(Lcom/android/settings/notification/p;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/p;->a(Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/notification/p;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    const-string v0, "all_notifications"

    .line 140
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/p;->l:Landroidx/preference/Preference;

    const-string v0, "all_notifications_divider"

    .line 141
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/p;->m:Landroidx/preference/Preference;

    .line 142
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/p;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "recent_notifications_category"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/core/d;->updateNonIndexableKeys(Ljava/util/List;)V

    const-string v0, "recent_notifications_category"

    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "all_notifications_divider"

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/notification/p;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/p;->a(Landroid/content/Context;)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/notification/p;->l:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/p;->mContext:Landroid/content/Context;

    const v1, 0x7f1211c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
