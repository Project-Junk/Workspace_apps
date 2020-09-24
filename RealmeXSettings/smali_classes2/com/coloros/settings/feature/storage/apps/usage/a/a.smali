.class public final Lcom/coloros/settings/feature/storage/apps/usage/a/a;
.super Ljava/lang/Object;
.source "AppDirDAO.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    :try_start_0
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/storage/apps/usage/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AppDirDAO"

    const-string v1, "AppDirDAO  openDatabase exception !"

    .line 71
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "package_exist"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "app_dir"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "AppDirDAO"

    const-string v1, "resetAppExist failed."

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4

    .line 101
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "package_exist"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_dir"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package_name in("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "AppDirDAO"

    const-string p2, "updateAppExist failed."

    .line 107
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "big_file_app_pkg"

    if-eqz p1, :cond_8

    .line 170
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_7

    .line 174
    :cond_0
    iget-object v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/storage/apps/usage/a/c;

    move-result-object v2

    const-string v3, "app_dir"

    .line 175
    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a(Ljava/lang/String;)V

    const-string v4, "app_shared_dir"

    .line 176
    invoke-virtual {v2, v4}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a(Ljava/lang/String;)V

    const-string v5, "eliminated_shared_dir"

    .line 177
    invoke-virtual {v2, v5}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a(Ljava/lang/String;)V

    const-string v6, "white_list_dir"

    .line 178
    invoke-virtual {v2, v6}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a(Ljava/lang/String;)V

    const-string v7, "big_file_app"

    .line 179
    invoke-virtual {v2, v7}, Lcom/coloros/settings/feature/storage/apps/usage/a/c;->a(Ljava/lang/String;)V

    .line 185
    :try_start_0
    iget-object v8, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 186
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 187
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 190
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    const-string v12, "shared_dir"

    .line 192
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 193
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 194
    array-length v11, v10

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_1

    aget-object v12, v10, v13

    const-string v14, "shared_dirs_path"

    .line 195
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    invoke-virtual {v2, v4, v12, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "eliminated_dir"

    .line 201
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 203
    array-length v2, v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v2, :cond_1

    aget-object v11, v10, v13

    const-string v12, "eliminated_dirs_path"

    .line 204
    invoke-virtual {v8, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v11, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 212
    array-length v2, v10

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v2, :cond_1

    aget-object v11, v10, v13

    const-string v12, "white_list_dirs_path"

    .line 213
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v11, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 220
    :cond_4
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 222
    array-length v2, v10

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v2, :cond_1

    aget-object v11, v10, v13

    .line 223
    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v11, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 229
    :cond_5
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 230
    array-length v2, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_1

    aget-object v14, v10, v12

    const-string v15, "package_name"

    .line 231
    invoke-virtual {v8, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "dir_path"

    .line 232
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    sget-object v0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package_exist"

    const/4 v13, 0x0

    .line 233
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    iget-object v0, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v14, 0x0

    invoke-virtual {v0, v3, v14, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    .line 238
    iget-object v0, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :try_start_1
    iget-object v0, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v14

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_2
    const-string v0, "AppDirDAO"

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    :try_start_3
    iget-object v0, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    if-nez v2, :cond_7

    return-void

    .line 250
    :cond_7
    throw v2

    .line 244
    :goto_6
    :try_start_4
    iget-object v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 248
    :catch_2
    throw v0

    :cond_8
    :goto_7
    return-void
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 78
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT dir_path FROM app_dir WHERE package_name=? AND package_exist= \'1\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    new-array v1, p1, [Ljava/lang/String;

    move p1, v0

    .line 85
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :cond_1
    if-eqz v2, :cond_2

    .line 93
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p1, "AppDirDAO"

    const-string v0, "getDirByPackageName failed."

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :goto_2
    if-eqz v2, :cond_3

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_3
    throw p1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(dir_path) AS path_shared_count FROM app_dir WHERE package_exist= \'1\' AND dir_path=?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 259
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 260
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return p1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "AppDirDAO"

    const-string v2, "updateSharedNum failed."

    .line 264
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 267
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_3
    throw p1
.end method

.method public final b()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "AppDirDAO"

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 150
    :try_start_0
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT dir_path,COUNT(dir_path) AS path_shared_count FROM app_dir WHERE package_exist= \'1\' GROUP BY dir_path"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 153
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "getSharedPathNumb pkg = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; numb = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {v0, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :cond_1
    if-eqz v2, :cond_2

    .line 162
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v3, "getDirByPackageName failed."

    .line 159
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :goto_2
    if-eqz v2, :cond_3

    .line 162
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_3
    throw v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT shared_dirs_path FROM app_shared_dir"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 280
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v2, "AppDirDAO"

    const-string v3, "getSharedDirs failed."

    .line 285
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_4
    throw v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT eliminated_dirs_path FROM eliminated_shared_dir"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 299
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 301
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 309
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v2, "AppDirDAO"

    const-string v3, "getEliminatedDirs failed."

    .line 306
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 309
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_4
    throw v0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT white_list_dirs_path FROM white_list_dir"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 322
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 330
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v2, "AppDirDAO"

    const-string v3, "getWhiteListDirs failed."

    .line 327
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 330
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_4
    throw v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT big_file_app_pkg FROM big_file_app"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 341
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 343
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 351
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v2, "AppDirDAO"

    const-string v3, "getBigFileDirs failed."

    .line 348
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 351
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_4
    throw v0
.end method
