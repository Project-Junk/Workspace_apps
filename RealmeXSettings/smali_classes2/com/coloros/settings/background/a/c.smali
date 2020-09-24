.class public final Lcom/coloros/settings/background/a/c;
.super Ljava/lang/Object;
.source "MessageEntryDao_Impl.java"

# interfaces
.implements Lcom/coloros/settings/background/a/b;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/EntityInsertionAdapter;

.field private final c:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    .line 24
    new-instance v0, Lcom/coloros/settings/background/a/c$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/background/a/c$1;-><init>(Lcom/coloros/settings/background/a/c;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coloros/settings/background/a/c;->b:Landroidx/room/EntityInsertionAdapter;

    .line 99
    new-instance v0, Lcom/coloros/settings/background/a/c$2;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/background/a/c$2;-><init>(Lcom/coloros/settings/background/a/c;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/coloros/settings/background/a/c;->c:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x2

    const-string v1, "SELECT COUNT(*) FROM message_entries WHERE message_id = ? AND package_name = ?"

    .line 201
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 204
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 210
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 214
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 215
    iget-object p1, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    invoke-static {p1, v1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 218
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return p2

    :catchall_0
    move-exception p2

    .line 225
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 227
    throw p2
.end method

.method public final a(Lcom/coloros/settings/background/a/a;)J
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/background/a/c;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 118
    throw p1
.end method

.method public final a()Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM message_entries ORDER BY display_order LIMIT 6"

    const/4 v1, 0x0

    .line 159
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM message_entries WHERE package_name = ? ORDER BY display_order"

    .line 167
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 170
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 124
    iget-object v0, p0, Lcom/coloros/settings/background/a/c;->c:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 127
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 133
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 137
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 139
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 140
    iget-object p2, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object p2, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 144
    iget-object p2, p0, Lcom/coloros/settings/background/a/c;->c:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 143
    iget-object p2, p0, Lcom/coloros/settings/background/a/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 144
    iget-object p2, p0, Lcom/coloros/settings/background/a/c;->c:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 145
    throw p1
.end method
