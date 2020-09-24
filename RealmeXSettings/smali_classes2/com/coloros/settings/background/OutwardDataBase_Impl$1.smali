.class final Lcom/coloros/settings/background/OutwardDataBase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "OutwardDataBase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/background/OutwardDataBase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/background/OutwardDataBase_Impl;


# direct methods
.method constructor <init>(Lcom/coloros/settings/background/OutwardDataBase_Impl;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `message_entries` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `message_id` TEXT, `icon` BLOB, `title` TEXT, `title_res_name` TEXT, `summary` TEXT, `summary_res_name` TEXT, `count` INTEGER NOT NULL, `display_order` INTEGER NOT NULL, `package_name` TEXT, `entrance_path` TEXT, `target_package_name` TEXT, `target_action` TEXT, `recommend` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `expire_time` INTEGER NOT NULL, `group` TEXT, `is_newly` INTEGER NOT NULL, `delete_strategy` INTEGER NOT NULL)"

    .line 35
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 36
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'df0638c83f5999b01ca274a542b5feca\')"

    .line 37
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `message_entries`"

    .line 42
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    invoke-static {v0}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->a(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    invoke-static {v1}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->b(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    invoke-static {v2}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->c(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    invoke-static {v0, p1}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->a(Lcom/coloros/settings/background/OutwardDataBase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    invoke-static {v0, p1}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->b(Lcom/coloros/settings/background/OutwardDataBase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    invoke-static {v0}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->d(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    invoke-static {v1}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->e(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/coloros/settings/background/OutwardDataBase_Impl$1;->a:Lcom/coloros/settings/background/OutwardDataBase_Impl;

    invoke-static {v2}, Lcom/coloros/settings/background/OutwardDataBase_Impl;->f(Lcom/coloros/settings/background/OutwardDataBase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 67
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public final validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 8

    .line 76
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "_id"

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "message_id"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "icon"

    const-string v7, "BLOB"

    invoke-direct {v1, v2, v7, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "title"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "title_res_name"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "summary"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "summary_res_name"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "count"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "display_order"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "package_name"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "entrance_path"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "target_package_name"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "target_package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "target_action"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "target_action"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "recommend"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "recommend"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "start_time"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "start_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "expire_time"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "expire_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "group"

    invoke-direct {v1, v2, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "group"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "is_newly"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "is_newly"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "delete_strategy"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v2, "delete_strategy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 97
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 98
    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v4, "message_entries"

    invoke-direct {v3, v4, v0, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v0, "message_entries"

    .line 99
    invoke-static {p1, v0}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p1

    .line 100
    invoke-virtual {v3, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Migration didn\'t properly handle message_entries(com.coloros.settings.background.messageentry.MessageEntry).\n Expected:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
