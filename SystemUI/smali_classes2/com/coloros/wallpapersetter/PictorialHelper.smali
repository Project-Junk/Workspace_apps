.class public Lcom/coloros/wallpapersetter/PictorialHelper;
.super Ljava/lang/Object;
.source "PictorialHelper.java"


# static fields
.field private static final ANDROID_N:I = 0x18

.field private static final DEBUG:Z

.field private static final PICTORIAL_CONFIG_KEY_APPLY_SWITCH:Ljava/lang/String; = "oppo_pictorial_apply"

.field private static final PICTORIAL_CONFIG_KEY_APPLY_SWITCH_DEFAULT_STATE:I = 0x1

.field private static final PICTORIAL_CONFIG_KEY_AUTH_SWITCH:Ljava/lang/String; = "oppo_cta_update_pictorial"

.field private static final PICTORIAL_CONFIG_KEY_AUTH_SWITCH_DEFAULT_STATE:I = 0x1

.field private static final PICTORIAL_CONFIG_KEY_AUTO_PLAY_SWITCH:Ljava/lang/String; = "oppo_pictorial_auto_play"

.field private static final PICTORIAL_CONFIG_KEY_AUTO_PLAY_SWITCH_DEFAULT_STATE:I = 0x1

.field private static final PICTORIAL_FAVORITE_ATTR_COLOR:Ljava/lang/String; = "color"

.field private static final PICTORIAL_FAVORITE_ATTR_PATH:Ljava/lang/String; = "path"

.field private static final PICTORIAL_FAVORITE_DIR:Ljava/lang/String;

.field private static final PICTORIAL_FAVORITE_SHARED_INFO_CONNECTOR:Ljava/lang/String; = ":"

.field private static final PICTORIAL_FAVORITE_SHARED_PATH:Ljava/lang/String; = "/data/data/com.coloros.pictorial/files/favorite.shared"

.field private static final PICTORIAL_FAVORITE_WALLPAPER_MAX_RES_NAME:Ljava/lang/String; = "favorite_photos_max_limit"

.field private static final PICTORIAL_FAVOURITE_KEY:Ljava/lang/String; = "favoriteInfo"

.field private static final PICTORIAL_FAVOURITE_URI:Landroid/net/Uri;

.field private static final PICTORIAL_PKG_NAME:Ljava/lang/String; = "com.coloros.pictorial"

.field private static final PICTORIAL_PPIC_FILE_EXTENSION:Ljava/lang/String; = ".ppic"

.field private static final PICTORIAL_SWITCH_SHARED_PATH:Ljava/lang/String; = "/data/data/com.coloros.pictorial/files/switch.shared"

.field private static final REGEX_FORMAT_FAVORITE_SHARED_INFO_RULE:Ljava/lang/String;

.field private static final SWITCH_STATE_CLOSED:I = 0x0

.field private static final SWITCH_STATE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WS.PictorialHelper"

.field private static sHelper:Lcom/coloros/wallpapersetter/PictorialHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    sget-boolean v0, Lcom/coloros/wallpapersetter/BaseUtils;->DEBUG:Z

    sput-boolean v0, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ColorOS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Pictorial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Favorite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/wallpapersetter/PictorialHelper;->PICTORIAL_FAVORITE_DIR:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/coloros/wallpapersetter/PictorialHelper;->PICTORIAL_FAVORITE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".+\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ppic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[+-]?[0-9]*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/wallpapersetter/PictorialHelper;->REGEX_FORMAT_FAVORITE_SHARED_INFO_RULE:Ljava/lang/String;

    const-string v0, "content://com.coloros.pictorial.data.provider.PictorialFavoriteProvider/favorite"

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/wallpapersetter/PictorialHelper;->PICTORIAL_FAVOURITE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/coloros/wallpapersetter/PictorialHelper;->sHelper:Lcom/coloros/wallpapersetter/PictorialHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addFavoriteWallpaperToCP(Landroid/content/ContentProviderClient;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WS.PictorialHelper"

    if-eqz p2, :cond_3

    .line 255
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "addFavoriteWallpaperToCP, client is null, so just return."

    .line 260
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_1
    invoke-direct {p0, p2}, Lcom/coloros/wallpapersetter/PictorialHelper;->generateFormatString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p0, "addFavoriteWallpaperToCP, can\'t generate favoriteInfoStrings, so just return."

    .line 266
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "favoriteInfo"

    .line 270
    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p0, "writeFavoriteWallpaper"

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p1, p0, v1, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addFavoriteWallpaperToCP, exception ex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "addFavoriteWallpaperToCP, favoriteInfo is null or has noting, so just return."

    .line 256
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addFavoriteWallpaperToFile(Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ":"

    const-string v1, "addFavoriteWallpaperToFile close reader Exception = "

    const-string v2, "addFavoriteWallpaperToFile close writer Exception = "

    const-string v3, "WS.PictorialHelper"

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/coloros/wallpapersetter/PictorialHelper;->getPictorialContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "favorite_photos_max_limit"

    invoke-static {v4, v5}, Lcom/coloros/wallpapersetter/BaseUtils;->getRemoteIntegerRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 196
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.coloros.pictorial/files/favorite.shared"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    const-string v10, "\n"

    if-eqz v9, :cond_1

    .line 201
    :try_start_2
    sget-object v11, Lcom/coloros/wallpapersetter/PictorialHelper;->REGEX_FORMAT_FAVORITE_SHARED_INFO_RULE:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 202
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 203
    new-instance v12, Ljava/io/File;

    const/4 v13, 0x0

    aget-object v14, v11, v13

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x2

    .line 204
    aget-object v11, v11, v14

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 205
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v11, v16, v18

    if-eqz v11, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v11, v11, v14

    if-nez v11, :cond_0

    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v4, -0x1

    if-le v9, v10, :cond_0

    .line 208
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 209
    new-instance v10, Ljava/io/File;

    aget-object v9, v9, v13

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 211
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    :cond_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/coloros/wallpapersetter/PictorialHelper;->generateFormatString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    :try_start_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 222
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v4

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v5, v4

    goto :goto_4

    :cond_2
    move-object v4, v5

    :cond_3
    if-eqz v4, :cond_4

    .line 233
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-boolean v0, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 237
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    :cond_4
    :goto_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-boolean v0, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 247
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v8, v5

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v8, v5

    .line 226
    :goto_4
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFavoriteWallpaperToFile Exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-boolean v4, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 228
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    if-eqz v5, :cond_6

    .line 233
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v4, v0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-boolean v0, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 237
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_5
    if-eqz v8, :cond_7

    .line 243
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-boolean v0, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_6
    return-void

    :catchall_2
    move-exception v0

    :goto_7
    move-object v4, v0

    :goto_8
    if-eqz v5, :cond_8

    .line 233
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v5, v0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-boolean v0, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 237
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_9
    if-eqz v8, :cond_9

    .line 243
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-boolean v0, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 247
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    :cond_9
    :goto_a
    throw v4
.end method

.method private generateFormatString(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, "path"

    .line 283
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const-string v0, "color"

    .line 286
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 289
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 293
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, "WS.PictorialHelper"

    const-string p1, "generateFormatString, color or path can\'t be null"

    .line 290
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getPictorialContext()Landroid/content/Context;
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    const-string v0, "com.coloros.pictorial"

    invoke-static {p0, v0}, Lcom/coloros/wallpapersetter/BaseUtils;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getPictorialHelper(Landroid/content/Context;)Lcom/coloros/wallpapersetter/PictorialHelper;
    .locals 1

    .line 79
    sget-object v0, Lcom/coloros/wallpapersetter/PictorialHelper;->sHelper:Lcom/coloros/wallpapersetter/PictorialHelper;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/coloros/wallpapersetter/PictorialHelper;

    invoke-direct {v0, p0}, Lcom/coloros/wallpapersetter/PictorialHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/wallpapersetter/PictorialHelper;->sHelper:Lcom/coloros/wallpapersetter/PictorialHelper;

    .line 82
    :cond_0
    sget-object p0, Lcom/coloros/wallpapersetter/PictorialHelper;->sHelper:Lcom/coloros/wallpapersetter/PictorialHelper;

    return-object p0
.end method


# virtual methods
.method public getPictorialIntConfig(Ljava/lang/String;)I
    .locals 4

    const-string v0, "oppo_cta_update_pictorial"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v3}, Lcom/coloros/wallpapersetter/BaseUtils;->getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_0
    const-string v0, "oppo_pictorial_apply"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge p1, v1, :cond_4

    const-string p1, "/data/data/com.coloros.pictorial/files/switch.shared"

    .line 92
    invoke-static {p1}, Lcom/coloros/wallpapersetter/BaseUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "false"

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "true"

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    goto :goto_1

    .line 99
    :cond_2
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v3}, Lcom/coloros/wallpapersetter/BaseUtils;->getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 102
    :cond_3
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v3}, Lcom/coloros/wallpapersetter/BaseUtils;->getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    :goto_0
    move v2, p0

    goto :goto_1

    .line 105
    :cond_4
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v3}, Lcom/coloros/wallpapersetter/BaseUtils;->getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_5
    const-string v0, "oppo_pictorial_auto_play"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 108
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v3}, Lcom/coloros/wallpapersetter/BaseUtils;->getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :cond_6
    :goto_1
    return v2
.end method

.method public putPictorialIntConfig(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "oppo_cta_update_pictorial"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x18

    const-string v3, "/data/data/com.coloros.pictorial/files/switch.shared"

    if-eqz v1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/coloros/wallpapersetter/BaseUtils;->putSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 116
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v2, :cond_3

    .line 118
    invoke-static {v3}, Lcom/coloros/wallpapersetter/BaseUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {v3, p0}, Lcom/coloros/wallpapersetter/BaseUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "oppo_pictorial_apply"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/coloros/wallpapersetter/BaseUtils;->putSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 124
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v2, :cond_3

    const/4 p0, 0x1

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 126
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/wallpapersetter/BaseUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "oppo_pictorial_auto_play"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    iget-object p0, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/coloros/wallpapersetter/BaseUtils;->putSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v2, :cond_3

    .line 132
    invoke-static {v3}, Lcom/coloros/wallpapersetter/BaseUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v3, p0}, Lcom/coloros/wallpapersetter/BaseUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setPictorialFavoriteWallpaper(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "WS.PictorialHelper"

    if-nez p2, :cond_0

    const-string p0, "setPictorialFavoriteWallpaper, bmp is null, just return"

    .line 145
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_7

    .line 148
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/coloros/wallpapersetter/PictorialHelper;->PICTORIAL_FAVORITE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".ppic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 154
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/coloros/wallpapersetter/PictorialHelper;->PICTORIAL_FAVORITE_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_2
    :try_start_0
    invoke-static {p2, v0}, Lcom/coloros/wallpapersetter/ImageProcess;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 161
    iget-object p2, p0, Lcom/coloros/wallpapersetter/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 162
    sget-object v0, Lcom/coloros/wallpapersetter/PictorialHelper;->PICTORIAL_FAVOURITE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 164
    sget-boolean v0, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "setPictorialFavoriteWallpaper, use addFavoriteWallpaperToCP"

    .line 165
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/coloros/wallpapersetter/PictorialHelper;->addFavoriteWallpaperToCP(Landroid/content/ContentProviderClient;Ljava/util/Map;)V

    goto :goto_0

    .line 169
    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p2, v0, :cond_6

    .line 170
    sget-boolean p2, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz p2, :cond_5

    const-string p2, "setPictorialFavoriteWallpaper, use addFavoriteWallpaperToFile"

    .line 171
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_5
    invoke-direct {p0, p3}, Lcom/coloros/wallpapersetter/PictorialHelper;->addFavoriteWallpaperToFile(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPictorialFavoriteWallpaper Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-boolean p1, Lcom/coloros/wallpapersetter/PictorialHelper;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 180
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    const-string p0, "setPictorialFavoriteWallpaper, favoriteInfo is null or has noting, so just return."

    .line 149
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
