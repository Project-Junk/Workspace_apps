.class public final Lcom/coloros/settings/feature/deviceinfo/f;
.super Ljava/lang/Object;
.source "StorageCategoryHelper.java"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/f;->a:Landroid/net/Uri;

    .line 45
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/f;->b:Landroid/net/Uri;

    .line 46
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/f;->c:Landroid/net/Uri;

    const-string v0, "external"

    .line 47
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/f;->d:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;I)J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, p1, v0, v1}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;ILandroid/os/storage/StorageVolume;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;ILandroid/os/storage/StorageVolume;I)J
    .locals 19

    move/from16 v0, p1

    const-string v1, "_data"

    .line 57
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/16 v6, 0xf

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    if-eq v0, v11, :cond_4

    if-eq v0, v9, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_0

    .line 1136
    sget-object v10, Lcom/coloros/settings/feature/deviceinfo/f;->d:Landroid/net/Uri;

    goto :goto_0

    .line 1130
    :cond_0
    sget-object v10, Lcom/coloros/settings/feature/deviceinfo/f;->d:Landroid/net/Uri;

    goto :goto_0

    .line 1127
    :cond_1
    sget-object v10, Lcom/coloros/settings/feature/deviceinfo/f;->d:Landroid/net/Uri;

    goto :goto_0

    .line 1133
    :cond_2
    sget-object v10, Lcom/coloros/settings/feature/deviceinfo/f;->d:Landroid/net/Uri;

    goto :goto_0

    .line 1123
    :cond_3
    sget-object v10, Lcom/coloros/settings/feature/deviceinfo/f;->d:Landroid/net/Uri;

    goto :goto_0

    .line 1119
    :cond_4
    sget-object v10, Lcom/coloros/settings/feature/deviceinfo/f;->d:Landroid/net/Uri;

    :goto_0
    const-string v12, "_size"

    .line 57
    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v12

    .line 1141
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_5

    .line 1144
    invoke-static/range {p0 .. p0}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1150
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v15, " AND ("

    const-string v2, ")"

    const-string v3, "%\'"

    const-string v4, "_data LIKE \'"

    if-eq v0, v11, :cond_b

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    const/16 v6, 0x10

    if-eq v0, v6, :cond_6

    goto/16 :goto_2

    :cond_6
    :try_start_1
    const-string v0, "media_type=10002 AND ("

    .line 1179
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    const-string v0, "(media_type!=3"

    .line 1186
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND media_type!=2"

    .line 1188
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND media_type!=1)"

    .line 1190
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v0, "media_type=3"

    .line 1168
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string v0, "media_type=10003"

    .line 1175
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const-string v0, "media_type=2"

    .line 1161
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    const-string v0, "media_type=1"

    .line 1154
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    :goto_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v6, v10

    move-object v7, v12

    move-object v10, v0

    .line 57
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_d

    .line 60
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    move v4, v3

    const-wide/16 v17, 0x0

    :goto_3
    if-ge v4, v0, :cond_e

    .line 62
    :try_start_3
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 64
    invoke-static {v1, v5}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long v17, v17, v5

    .line 67
    :cond_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    const-wide/16 v17, 0x0

    :cond_e
    if-eqz v2, :cond_f

    .line 74
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    const/16 v16, 0x0

    goto :goto_6

    :catch_0
    const/4 v2, 0x0

    :catch_1
    const-wide/16 v17, 0x0

    :catch_2
    :try_start_4
    const-string v0, "StorageCategoryHelper"

    const-string v1, "StorageCategoryHelper getSize error"

    .line 71
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_f

    goto :goto_4

    :cond_f
    :goto_5
    return-wide v17

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_6
    if-eqz v16, :cond_10

    .line 74
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_10
    throw v0
.end method
