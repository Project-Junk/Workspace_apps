.class public final Lcom/android/settings/dashboard/a;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# static fields
.field private static a:Lcom/android/settings/dashboard/a;


# instance fields
.field private final b:Lcom/android/settingslib/applications/c;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/h/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/a;->c:Ljava/util/Map;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/a;->d:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/android/settingslib/applications/c;

    invoke-direct {v0}, Lcom/android/settingslib/applications/c;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/a;->b:Lcom/android/settingslib/applications/c;

    .line 66
    iget-object v0, p0, Lcom/android/settings/dashboard/a;->b:Lcom/android/settingslib/applications/c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/c;->a(Landroid/content/res/Resources;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settings/dashboard/a;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/settings/dashboard/a;->a:Lcom/android/settings/dashboard/a;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/settings/dashboard/a;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/dashboard/a;->a:Lcom/android/settings/dashboard/a;

    .line 59
    :cond_0
    sget-object p0, Lcom/android/settings/dashboard/a;->a:Lcom/android/settings/dashboard/a;

    return-object p0
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/h/b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/h/b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/h/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)V
    .locals 11

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/a;->e:Ljava/util/List;

    if-nez v0, :cond_9

    if-eqz p2, :cond_0

    .line 112
    iget-object p2, p0, Lcom/android/settings/dashboard/a;->c:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/android/settings/dashboard/a;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 115
    iget-object p2, p0, Lcom/android/settings/dashboard/a;->c:Ljava/util/Map;

    .line 1212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1213
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v7, v2

    .line 1215
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "user"

    .line 1216
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1217
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/UserHandle;

    .line 1219
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string v2, "com.android.settings.action.SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, v10

    move-object v3, p2

    move-object v5, v8

    .line 1221
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/h/d;->a(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    const-string v2, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    const-string v4, "com.android.settings.category.wireless"

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v10

    move-object v3, p2

    move-object v5, v8

    .line 1222
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/h/d;->a(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    const-string v2, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string v4, "com.android.settings.category.device"

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v10

    move-object v3, p2

    move-object v5, v8

    .line 1224
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/h/d;->a(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_3
    if-eqz v7, :cond_2

    const-string v2, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v10

    move-object v3, p2

    move-object v5, v8

    .line 1228
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/h/d;->a(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    const-string v2, "com.android.settings.action.IA_SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v10

    move-object v3, p2

    move-object v5, v8

    .line 1229
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/h/d;->a(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    .line 1233
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1234
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/h/c;

    .line 2137
    iget-object v2, v1, Lcom/android/settingslib/h/c;->g:Ljava/lang/String;

    .line 1236
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/h/b;

    if-nez v3, :cond_5

    .line 1238
    new-instance v3, Lcom/android/settingslib/h/b;

    invoke-direct {v3, v2}, Lcom/android/settingslib/h/b;-><init>(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    :cond_5
    invoke-virtual {v3, v1}, Lcom/android/settingslib/h/b;->a(Lcom/android/settingslib/h/c;)V

    goto :goto_1

    .line 1248
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1249
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/h/b;

    .line 3104
    iget-object v1, v1, Lcom/android/settingslib/h/b;->b:Ljava/util/List;

    sget-object v2, Lcom/android/settingslib/h/c;->h:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 115
    :cond_7
    iput-object v0, p0, Lcom/android/settings/dashboard/a;->e:Ljava/util/List;

    .line 116
    iget-object p2, p0, Lcom/android/settings/dashboard/a;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/h/b;

    .line 117
    iget-object v1, p0, Lcom/android/settings/dashboard/a;->d:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/settingslib/h/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 119
    :cond_8
    iget-object p2, p0, Lcom/android/settings/dashboard/a;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/settings/dashboard/a;->d:Ljava/util/Map;

    invoke-direct {p0, p2, v0}, Lcom/android/settings/dashboard/a;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 120
    iget-object p2, p0, Lcom/android/settings/dashboard/a;->d:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/dashboard/a;->d:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/util/Map;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/h/b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 197
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/h/b;

    .line 199
    invoke-virtual {v0}, Lcom/android/settingslib/h/b;->b()I

    move-result v1

    .line 200
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/settingslib/h/b;->b(I)Lcom/android/settingslib/h/c;

    move-result-object v3

    .line 5130
    iget-object v3, v3, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 203
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 204
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {v0, v1}, Lcom/android/settingslib/h/b;->a(I)V

    goto :goto_1

    .line 207
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 211
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/h/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/h/b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 137
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/h/c;

    .line 151
    sget-object v6, Lcom/android/settingslib/h/a;->a:Ljava/util/Map;

    .line 3137
    iget-object v5, v5, Lcom/android/settingslib/h/c;->g:Ljava/lang/String;

    .line 151
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v2

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/h/c;

    .line 161
    sget-object v2, Lcom/android/settingslib/h/a;->a:Ljava/util/Map;

    .line 4137
    iget-object v3, v1, Lcom/android/settingslib/h/c;->g:Ljava/lang/String;

    .line 162
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4141
    iput-object v2, v1, Lcom/android/settingslib/h/c;->g:Ljava/lang/String;

    .line 165
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/h/b;

    if-nez v3, :cond_5

    .line 167
    new-instance v3, Lcom/android/settingslib/h/b;

    invoke-direct {v3, v2}, Lcom/android/settingslib/h/b;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_5
    invoke-virtual {v3, v1}, Lcom/android/settingslib/h/b;->a(Lcom/android/settingslib/h/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 174
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/a;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/h/b;
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/a;->d(Landroid/content/Context;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/dashboard/a;->d:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/h/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/a;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p1, "CategoryManager"

    const-string v0, "Category is null, skipping blacklist update"

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/dashboard/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/android/settings/dashboard/a;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/h/b;

    move v3, v0

    .line 94
    :goto_1
    invoke-virtual {v2}, Lcom/android/settingslib/h/b;->b()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 95
    invoke-virtual {v2, v3}, Lcom/android/settingslib/h/b;->b(I)Lcom/android/settingslib/h/c;

    move-result-object v4

    .line 1130
    iget-object v4, v4, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 96
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 97
    invoke-virtual {v2, v3}, Lcom/android/settingslib/h/b;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/h/b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/a;->d(Landroid/content/Context;)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/dashboard/a;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/a;->b:Lcom/android/settingslib/applications/c;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/c;->a(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/android/settings/dashboard/a;->e:Ljava/util/List;

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/a;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
