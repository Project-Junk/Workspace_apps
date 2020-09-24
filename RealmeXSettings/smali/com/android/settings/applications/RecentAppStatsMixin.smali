.class public Lcom/android/settings/applications/RecentAppStatsMixin;
.super Ljava/lang/Object;
.source "RecentAppStatsMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RecentAppStatsMixin$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/a/j;",
        "Ljava/util/Comparator<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Landroid/content/Context;

.field private final f:Landroid/content/pm/PackageManager;

.field private final g:Landroid/os/PowerManager;

.field private final h:Landroid/app/usage/UsageStatsManager;

.field private final i:Lcom/coloros/settingslib/applications/ApplicationsState;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/RecentAppStatsMixin$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 70
    sput-object v0, Lcom/android/settings/applications/RecentAppStatsMixin;->b:Ljava/util/Set;

    const-string v1, "android"

    const-string v2, "com.android.phone"

    const-string v3, "com.android.settings"

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.providers.calendar"

    const-string v6, "com.android.providers.media"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->e:Landroid/content/Context;

    const/4 p1, 0x3

    .line 82
    iput p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->d:I

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->c:I

    .line 84
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->f:Landroid/content/pm/PackageManager;

    .line 85
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->e:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->g:Landroid/os/PowerManager;

    .line 86
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->e:Landroid/content/Context;

    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->h:Landroid/app/usage/UsageStatsManager;

    .line 87
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->e:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 87
    invoke-static {p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->i:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->a:Ljava/util/List;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->j:Ljava/util/List;

    return-void
.end method

.method private synthetic a()V
    .locals 12

    .line 96
    iget v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->d:I

    .line 1115
    iget-object v1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->k:Ljava/util/Calendar;

    .line 1117
    iget-object v1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->k:Ljava/util/Calendar;

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1118
    iget-object v1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->g:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->h:Landroid/app/usage/UsageStatsManager;

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->k:Ljava/util/Calendar;

    .line 1121
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1120
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    .line 1124
    :goto_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1125
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_8

    .line 1127
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    .line 1161
    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1162
    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->k:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    const-string v9, "RecentAppStatsMixin"

    if-gez v8, :cond_1

    .line 1163
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid timestamp (usage time is more than 24 hours ago), skipping "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v7, v4

    goto :goto_3

    .line 1168
    :cond_1
    sget-object v8, Lcom/android/settings/applications/RecentAppStatsMixin;->b:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1169
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "System package, skipping "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1172
    :cond_2
    iget-object v8, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->e:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 1175
    :cond_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1176
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1178
    iget-object v10, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v8, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1180
    iget-object v8, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->i:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget v10, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->c:I

    .line 1181
    invoke-virtual {v8, v7, v10}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1182
    iget-object v10, v8, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_4

    iget-object v8, v8, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v8}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1183
    :cond_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Not a user visible or instant app, skipping "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_7

    .line 1131
    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1132
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    if-nez v8, :cond_6

    .line 1134
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1136
    :cond_6
    invoke-virtual {v8, v6}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1139
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1141
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 1144
    iget-object v3, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->i:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 1145
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->c:I

    .line 1144
    invoke-virtual {v3, v5, v6}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1149
    iget-object v3, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_9

    .line 97
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RecentAppStatsMixin$a;

    .line 98
    new-instance v2, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$xtVrmbSjREPHAfdu6SZsHrA5ueg;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$xtVrmbSjREPHAfdu6SZsHrA5ueg;-><init>(Lcom/android/settings/applications/RecentAppStatsMixin;Lcom/android/settings/applications/RecentAppStatsMixin$a;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_b
    return-void
.end method

.method private synthetic b(Lcom/android/settings/applications/RecentAppStatsMixin$a;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/settings/applications/RecentAppStatsMixin$a;->onReloadDataCompleted(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$LqWdCT1lqySOyx99FlQzA1my3is(Lcom/android/settings/applications/RecentAppStatsMixin;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->a()V

    return-void
.end method

.method public static synthetic lambda$xtVrmbSjREPHAfdu6SZsHrA5ueg(Lcom/android/settings/applications/RecentAppStatsMixin;Lcom/android/settings/applications/RecentAppStatsMixin$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/RecentAppStatsMixin;->b(Lcom/android/settings/applications/RecentAppStatsMixin$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/applications/RecentAppStatsMixin$a;)V
    .locals 1
    .param p1    # Lcom/android/settings/applications/RecentAppStatsMixin$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 52
    check-cast p1, Landroid/app/usage/UsageStats;

    check-cast p2, Landroid/app/usage/UsageStats;

    .line 1106
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 95
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$LqWdCT1lqySOyx99FlQzA1my3is;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$LqWdCT1lqySOyx99FlQzA1my3is;-><init>(Lcom/android/settings/applications/RecentAppStatsMixin;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
