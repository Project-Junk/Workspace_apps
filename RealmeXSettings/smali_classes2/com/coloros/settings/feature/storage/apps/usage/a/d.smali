.class public final Lcom/coloros/settings/feature/storage/apps/usage/a/d;
.super Ljava/lang/Object;
.source "DatabaseUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/apps/usage/a/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const-string v0, "Error occur, e = "

    const-string v1, "DatabaseUpdater"

    .line 151
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    .line 154
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    .line 155
    :try_start_1
    new-array p0, p0, [B

    .line 157
    :goto_0
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v6, 0x0

    .line 158
    invoke-virtual {v2, p0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    const-string p0, "UTF-8"

    .line 161
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 173
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v4, v3

    .line 166
    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v4, :cond_1

    goto :goto_1

    :catch_3
    move-exception p0

    move-object v4, v3

    .line 164
    :goto_3
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v4, :cond_1

    goto :goto_1

    :catch_4
    :cond_1
    :goto_4
    return-object v3

    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v4, :cond_2

    .line 173
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 178
    :catch_5
    :cond_2
    throw p0
.end method

.method private static a(Landroid/content/SharedPreferences;ILjava/io/InputStream;)Ljava/util/HashMap;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "I",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p2, :cond_3

    .line 114
    invoke-static/range {p2 .. p2}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    new-instance v2, Lcom/google/b/g;

    invoke-direct {v2}, Lcom/google/b/g;-><init>()V

    .line 118
    const-class v3, Ljava/util/HashMap;

    new-instance v4, Lcom/coloros/settings/feature/storage/apps/usage/a/d$a;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/coloros/settings/feature/storage/apps/usage/a/d$a;-><init>(B)V

    const/4 v6, 0x1

    .line 1497
    invoke-static {v6}, Lcom/google/b/b/a;->a(Z)V

    .line 1505
    invoke-static {v3}, Lcom/google/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/b/c/a;

    move-result-object v3

    .line 1506
    iget-object v7, v2, Lcom/google/b/g;->e:Ljava/util/List;

    .line 3101
    iget-object v8, v3, Lcom/google/b/c/a;->b:Ljava/lang/reflect/Type;

    .line 4094
    iget-object v9, v3, Lcom/google/b/c/a;->a:Ljava/lang/Class;

    if-ne v8, v9, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v5

    .line 2107
    :goto_0
    new-instance v9, Lcom/google/b/b/a/l$b;

    invoke-direct {v9, v4, v3, v8}, Lcom/google/b/b/a/l$b;-><init>(Ljava/lang/Object;Lcom/google/b/c/a;Z)V

    .line 1506
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4587
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/google/b/g;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v7, v2, Lcom/google/b/g;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4588
    iget-object v4, v2, Lcom/google/b/g;->e:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4589
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4591
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/google/b/g;->f:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4592
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4593
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4595
    iget-object v4, v2, Lcom/google/b/g;->h:Ljava/lang/String;

    iget v7, v2, Lcom/google/b/g;->i:I

    iget v8, v2, Lcom/google/b/g;->j:I

    if-eqz v4, :cond_1

    .line 4611
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4612
    new-instance v7, Lcom/google/b/a;

    const-class v8, Ljava/util/Date;

    invoke-direct {v7, v8, v4}, Lcom/google/b/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4613
    new-instance v8, Lcom/google/b/a;

    const-class v9, Ljava/sql/Timestamp;

    invoke-direct {v8, v9, v4}, Lcom/google/b/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4614
    new-instance v9, Lcom/google/b/a;

    const-class v10, Ljava/sql/Date;

    invoke-direct {v9, v10, v4}, Lcom/google/b/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v4, v7

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-eq v7, v4, :cond_2

    if-eq v8, v4, :cond_2

    .line 4616
    new-instance v4, Lcom/google/b/a;

    const-class v9, Ljava/util/Date;

    invoke-direct {v4, v9, v7, v8}, Lcom/google/b/a;-><init>(Ljava/lang/Class;II)V

    .line 4617
    new-instance v9, Lcom/google/b/a;

    const-class v10, Ljava/sql/Timestamp;

    invoke-direct {v9, v10, v7, v8}, Lcom/google/b/a;-><init>(Ljava/lang/Class;II)V

    .line 4618
    new-instance v10, Lcom/google/b/a;

    const-class v11, Ljava/sql/Date;

    invoke-direct {v10, v11, v7, v8}, Lcom/google/b/a;-><init>(Ljava/lang/Class;II)V

    move-object v8, v9

    move-object v9, v10

    .line 4623
    :goto_1
    const-class v7, Ljava/util/Date;

    invoke-static {v7, v4}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4624
    const-class v4, Ljava/sql/Timestamp;

    invoke-static {v4, v8}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4625
    const-class v4, Ljava/sql/Date;

    invoke-static {v4, v9}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4597
    :cond_2
    new-instance v4, Lcom/google/b/f;

    move-object v10, v4

    iget-object v11, v2, Lcom/google/b/g;->a:Lcom/google/b/b/d;

    iget-object v12, v2, Lcom/google/b/g;->c:Lcom/google/b/e;

    iget-object v13, v2, Lcom/google/b/g;->d:Ljava/util/Map;

    iget-boolean v14, v2, Lcom/google/b/g;->g:Z

    iget-boolean v15, v2, Lcom/google/b/g;->k:Z

    iget-boolean v7, v2, Lcom/google/b/g;->o:Z

    move/from16 v16, v7

    iget-boolean v7, v2, Lcom/google/b/g;->m:Z

    move/from16 v17, v7

    iget-boolean v7, v2, Lcom/google/b/g;->n:Z

    move/from16 v18, v7

    iget-boolean v7, v2, Lcom/google/b/g;->p:Z

    move/from16 v19, v7

    iget-boolean v7, v2, Lcom/google/b/g;->l:Z

    move/from16 v20, v7

    iget-object v7, v2, Lcom/google/b/g;->b:Lcom/google/b/t;

    move-object/from16 v21, v7

    iget-object v7, v2, Lcom/google/b/g;->h:Ljava/lang/String;

    move-object/from16 v22, v7

    iget v7, v2, Lcom/google/b/g;->i:I

    move/from16 v23, v7

    iget v7, v2, Lcom/google/b/g;->j:I

    move/from16 v24, v7

    iget-object v7, v2, Lcom/google/b/g;->e:Ljava/util/List;

    move-object/from16 v25, v7

    iget-object v2, v2, Lcom/google/b/g;->f:Ljava/util/List;

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    invoke-direct/range {v10 .. v27}, Lcom/google/b/f;-><init>(Lcom/google/b/b/d;Lcom/google/b/e;Ljava/util/Map;ZZZZZZZLcom/google/b/t;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 120
    const-class v2, Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "version"

    .line 121
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 122
    array-length v3, v2

    if-lez v3, :cond_4

    .line 124
    :try_start_0
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 125
    invoke-static {v0, v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->a(Landroid/content/SharedPreferences;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    add-int/lit8 v2, p1, 0x1

    .line 127
    invoke-static {v0, v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->a(Landroid/content/SharedPreferences;I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    const-string v0, "DatabaseUpdater"

    const-string v2, "parseJson return result"

    .line 132
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Error occur, e = "

    const-string v1, "DatabaseUpdater"

    const/4 v2, 0x0

    const-string v3, "settings_storage_app_folders_list"

    .line 54
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "settings_storage_pathfile_version"

    .line 56
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "version"

    const-string v6, "binary"

    .line 59
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "content://com.nearme.romupdate.provider.db/update_list"

    .line 66
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v10, "filtername=\"settings_storage_app_folders_list\""

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 68
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    .line 69
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 70
    :try_start_2
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v7, v5

    goto :goto_1

    :cond_0
    move v2, v4

    move-object v7, v5

    :goto_0
    if-eqz v6, :cond_2

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v6, v5

    goto/16 :goto_7

    :catch_2
    move-exception v2

    move-object v6, v5

    move-object v7, v6

    .line 73
    :goto_1
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_1

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v2, v4

    .line 81
    :cond_2
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "initialize xml newVersion = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", currentVersion = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_4

    .line 82
    array-length v6, v7

    if-lez v6, :cond_4

    if-lt v4, v2, :cond_3

    if-ne v4, v2, :cond_4

    if-nez v2, :cond_4

    .line 85
    :cond_3
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    invoke-static {v3, v4, p0}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->a(Landroid/content/SharedPreferences;ILjava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v5

    goto :goto_6

    :cond_4
    if-ne v4, v2, :cond_6

    const v2, 0x783ad73d

    if-ge v4, v2, :cond_6

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    :try_start_4
    const-string v2, "open app_sdcard_dir"

    .line 92
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "app_sdcard_dir"

    .line 93
    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    :try_start_5
    invoke-static {v3, v4, p0}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->a(Landroid/content/SharedPreferences;ILjava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p0, :cond_6

    .line 100
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v5

    goto :goto_5

    :catch_4
    move-exception v2

    move-object p0, v5

    .line 96
    :goto_4
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p0, :cond_6

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz p0, :cond_5

    .line 100
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 105
    :catch_5
    :cond_5
    throw v0

    :catch_6
    :cond_6
    :goto_6
    return-object v5

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v6, :cond_7

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_7
    throw p0
.end method

.method private static a(Landroid/content/SharedPreferences;I)V
    .locals 1

    .line 144
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "settings_storage_pathfile_version"

    .line 145
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "settings_storage_app_folders_list"

    .line 137
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "settings_storage_pathfile_version"

    .line 139
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 140
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->a(Landroid/content/SharedPreferences;I)V

    return-void
.end method
