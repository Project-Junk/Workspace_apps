.class public final Lcom/coloros/settings/feature/weather/module/city/c;
.super Ljava/lang/Object;
.source "HotCityHelper.java"


# instance fields
.field a:Landroid/content/Context;

.field public b:Lcom/coloros/a/b;

.field public c:Lcom/coloros/settings/feature/weather/module/city/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/coloros/settings/feature/weather/module/city/b$b;
    .locals 21

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "city_name"

    const-string v3, "city_name_en"

    const-string v4, "city_code"

    const-string v5, "locale"

    const-string v6, "remark"

    const-string v7, "timezone_id"

    const-string v8, "country_code"

    .line 59
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    .line 64
    :try_start_1
    iget-object v0, v2, Lcom/coloros/settings/feature/weather/module/city/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {}, Lcom/coloros/settings/feature/weather/module/city/a;->a()Landroid/net/Uri;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "sort asc"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_2

    .line 66
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :try_start_4
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    .line 76
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    .line 77
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x3

    .line 78
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x4

    .line 79
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x5

    .line 80
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v6, 0x6

    .line 81
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v18, "0"

    .line 89
    new-instance v14, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    move-object v6, v14

    move-object v0, v14

    move/from16 v14, v19

    move-object/from16 v20, v15

    move-object/from16 v15, v18

    invoke-direct/range {v6 .. v17}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v20

    .line 91
    invoke-virtual {v0, v6}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setCityCountryEn(Ljava/lang/String;)V

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    .line 94
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_0

    move-object v1, v4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v4, v1

    move-object v5, v4

    :goto_1
    move-object v1, v3

    goto :goto_4

    :cond_2
    move-object v5, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 104
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v4, v1

    move-object v5, v4

    :goto_4
    :try_start_5
    const-string v3, "HotCityHelper"

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error occur, e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, v4

    .line 108
    :cond_4
    :goto_5
    new-instance v0, Lcom/coloros/settings/feature/weather/module/city/b$b;

    invoke-direct {v0}, Lcom/coloros/settings/feature/weather/module/city/b$b;-><init>()V

    .line 109
    iput-object v1, v0, Lcom/coloros/settings/feature/weather/module/city/b$b;->a:Ljava/util/List;

    .line 110
    iput-object v5, v0, Lcom/coloros/settings/feature/weather/module/city/b$b;->b:Ljava/util/List;

    return-object v0

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v1, :cond_5

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_5
    throw v0
.end method
