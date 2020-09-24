.class public Lcom/android/settings/search/SettingsSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "SettingsSearchIndexablesProvider.java"


# static fields
.field private static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 92
    sput-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->a:Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->a:Ljava/util/Collection;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SettingsSearchProvider"

    .line 244
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/search/c;->a()Lcom/android/settingslib/o/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settingslib/o/a;->a()Ljava/util/Collection;

    move-result-object v1

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    invoke-static {v3}, Lcom/android/settings/search/b;->a(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v4

    .line 259
    :try_start_0
    invoke-interface {v4, p0}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 274
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    sget-object v5, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->a:Ljava/util/Collection;

    invoke-interface {v3, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " tried to add an empty non-indexable key"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "debug.com.android.settings.search.crash_on_error"

    .line 267
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error trying to get non-indexable keys from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 268
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    return-object v2
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/c;->a()Lcom/android/settingslib/o/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingslib/o/a;->a()Ljava/util/Collection;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 307
    invoke-static {v2}, Lcom/android/settings/search/b;->a(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v3

    const/4 v4, 0x1

    .line 314
    invoke-interface {v3, p0, v4}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 320
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/SearchIndexableResource;

    .line 321
    iget-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 322
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    iget-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    :goto_2
    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 324
    sget-object v6, Lcom/android/settings/search/f;->a:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Landroid/provider/SearchIndexableResource;->rank:I

    goto :goto_1

    .line 330
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/c;->a()Lcom/android/settingslib/o/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingslib/o/a;->a()Ljava/util/Collection;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 344
    invoke-static {v2}, Lcom/android/settings/search/b;->a(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v3

    const/4 v4, 0x1

    .line 346
    invoke-interface {v3, p0, v4}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 355
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/e;

    .line 358
    iget-object v6, v5, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 359
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 361
    :cond_1
    sget-object v6, Lcom/android/settings/search/f;->a:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/android/settings/search/e;->rank:I

    goto :goto_1

    .line 367
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 154
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    sget-object v2, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 158
    aput-object v1, v2, v3

    .line 159
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 123
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/e;

    .line 126
    sget-object v2, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 127
    iget v4, v1, Lcom/android/settings/search/e;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 128
    iget-object v4, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 129
    iget-object v4, v1, Lcom/android/settings/search/e;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 130
    iget-object v4, v1, Lcom/android/settings/search/e;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 131
    iget-object v4, v1, Lcom/android/settings/search/e;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 132
    iget-object v4, v1, Lcom/android/settings/search/e;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 133
    iget-object v4, v1, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 134
    iget-object v4, v1, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 135
    iget v4, v1, Lcom/android/settings/search/e;->iconResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 136
    iget-object v4, v1, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 137
    iget-object v4, v1, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 138
    iget-object v4, v1, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 139
    iget-object v4, v1, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 140
    iget v1, v1, Lcom/android/settings/search/e;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 141
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public querySiteMapPairs()Landroid/database/Cursor;
    .locals 9

    .line 167
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    .line 174
    invoke-virtual {v2, v1}, Lcom/android/settings/overlay/b;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/dashboard/b;->a()Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "child_class"

    const-string v4, "parent_class"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/h/b;

    .line 177
    sget-object v5, Lcom/android/settings/dashboard/d;->b:Ljava/util/Map;

    iget-object v6, v2, Lcom/android/settingslib/h/b;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 182
    invoke-virtual {v2}, Lcom/android/settingslib/h/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/h/c;

    const/4 v7, 0x0

    .line 1241
    iget-object v8, v6, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    if-eqz v8, :cond_2

    .line 2241
    iget-object v6, v6, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    const-string v7, "com.android.settings.FRAGMENT_CLASS"

    .line 185
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    if-eqz v7, :cond_1

    .line 191
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 192
    invoke-virtual {v6, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 193
    invoke-virtual {v6, v3, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 201
    :cond_3
    new-instance v1, Lcom/android/settings/search/f;

    invoke-direct {v1}, Lcom/android/settings/search/f;-><init>()V

    .line 202
    invoke-static {}, Lcom/android/settings/search/f;->b()Ljava/util/Map;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 204
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 205
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public querySliceUriPairs()Landroid/database/Cursor;
    .locals 6

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    .line 216
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Landroid/provider/SearchIndexablesContract;->SLICE_URI_PAIRS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 217
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 219
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "com.android.settings.slices"

    .line 220
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 222
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 224
    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "android.settings.slices"

    .line 225
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 228
    invoke-virtual {v0, v2}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v3}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 231
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 232
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 233
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key"

    invoke-virtual {v3, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    const-string v4, "slice_uri"

    .line 234
    invoke-virtual {v3, v4, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 103
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/SearchIndexableResource;

    .line 107
    sget-object v2, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 108
    iget v4, v1, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 109
    iget v4, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 110
    iget-object v4, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 111
    iget v4, v1, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 112
    iget-object v4, v1, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 113
    iget-object v1, v1, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    aput-object v1, v2, v3

    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 114
    aput-object v3, v2, v1

    .line 115
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
