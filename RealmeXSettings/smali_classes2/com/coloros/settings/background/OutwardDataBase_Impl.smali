.class public final Lcom/coloros/settings/background/OutwardDataBase_Impl;
.super Lcom/coloros/settings/background/OutwardDataBase;
.source "OutwardDataBase_Impl.java"


# instance fields
.field private volatile a:Lcom/coloros/settings/background/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/coloros/settings/background/OutwardDataBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/background/OutwardDataBase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/background/OutwardDataBase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/coloros/settings/background/a/b;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->a:Lcom/coloros/settings/background/a/b;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->a:Lcom/coloros/settings/background/a/b;

    return-object v0

    .line 144
    :cond_0
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->a:Lcom/coloros/settings/background/a/b;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lcom/coloros/settings/background/a/c;

    invoke-direct {v0, p0}, Lcom/coloros/settings/background/a/c;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->a:Lcom/coloros/settings/background/a/b;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl;->a:Lcom/coloros/settings/background/a/b;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 124
    invoke-super {p0}, Lcom/coloros/settings/background/OutwardDataBase;->assertNotMainThread()V

    .line 125
    invoke-super {p0}, Lcom/coloros/settings/background/OutwardDataBase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 127
    :try_start_0
    invoke-super {p0}, Lcom/coloros/settings/background/OutwardDataBase;->beginTransaction()V

    const-string v3, "DELETE FROM `message_entries`"

    .line 128
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    invoke-super {p0}, Lcom/coloros/settings/background/OutwardDataBase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-super {p0}, Lcom/coloros/settings/background/OutwardDataBase;->endTransaction()V

    .line 132
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 131
    invoke-super {p0}, Lcom/coloros/settings/background/OutwardDataBase;->endTransaction()V

    .line 132
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    :cond_1
    throw v3
.end method

.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    .line 117
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 119
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "message_entries"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 32
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;-><init>(Lcom/coloros/settings/background/OutwardDataBase_Impl;)V

    const-string v2, "df0638c83f5999b01ca274a542b5feca"

    const-string v3, "531ac9877bee529d4a223741bf682ce0"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 111
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method
