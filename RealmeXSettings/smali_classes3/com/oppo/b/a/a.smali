.class public final Lcom/oppo/b/a/a;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.build.version.opporom"

    .line 52
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/b/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/oppo/b/a/a;->b:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/oppo/b/a/a;->b:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "fonts"

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 166
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 167
    aget-object v1, p0, v0

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    aget-object p0, p0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()V
    .locals 5

    const-wide/16 v0, 0x64

    .line 59
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 67
    :goto_0
    :try_start_1
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 71
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 74
    iget-object v3, v2, Landroid/content/res/Configuration;->mOppoExtraConfiguration:Loppo/content/res/OppoExtraConfiguration;

    const/16 v4, 0x2711

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v0, v3, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v0, v3, :cond_0

    .line 77
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    return-void

    .line 79
    :cond_0
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Theme_JAR"

    const-string v2, "RemoteException: "

    .line 82
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static b()V
    .locals 11

    .line 180
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 184
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 190
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v3, 0x2711

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 195
    :try_start_2
    iget-object v6, v1, Landroid/content/res/Configuration;->mOppoExtraConfiguration:Loppo/content/res/OppoExtraConfiguration;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v4, :cond_0

    .line 211
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    return-void

    .line 213
    :cond_0
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 198
    :catch_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 199
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 200
    array-length v7, v6

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_2

    const-string v9, "FlipFont"

    .line 202
    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 203
    aget-object v9, v6, v8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_2
    move-exception v2

    .line 207
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    :cond_2
    :try_start_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v4, :cond_3

    .line 211
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    return-void

    .line 213
    :cond_3
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    return-void

    .line 210
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v4, :cond_4

    .line 211
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_3

    .line 213
    :cond_4
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    :goto_3
    throw v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    .line 217
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException e="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Theme_JAR"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 3

    const-string v0, "Theme_JAR"

    const-string v1, "FontManager setFontInputStream !"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/oppo/b/a/b;

    invoke-direct {v0}, Lcom/oppo/b/a/b;-><init>()V

    .line 143
    invoke-static {}, Lcom/oppo/b/a/b;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "ColorOS-Regular.ttf"

    .line 144
    invoke-virtual {v0, v1, p2, v2}, Lcom/oppo/b/a/b;->a(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/oppo/b/a/a;->b()V

    .line 146
    sget-object p2, Lcom/oppo/b/a/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "v3.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 147
    new-instance p2, Lcom/oppo/b/a/a$2;

    invoke-direct {p2, p0, p1}, Lcom/oppo/b/a/a$2;-><init>(Lcom/oppo/b/a/a;Landroid/content/Context;)V

    .line 155
    invoke-virtual {p2}, Lcom/oppo/b/a/a$2;->start()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 87
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FontManager setNewFormatFont packageName : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Theme_JAR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const-string v2, "system.default.font"

    .line 89
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "current_typeface"

    if-eqz v2, :cond_2

    .line 91
    iget-object v0, p0, Lcom/oppo/b/a/a;->b:Landroid/content/Context;

    .line 1222
    new-instance v2, Ljava/io/File;

    const-string v4, "/system/etc/fonts_base.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-le v2, v4, :cond_0

    .line 1225
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/format_unclear/font/ColorOS-Regular.ttf"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/font/ColorOS-Regular.ttf"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1229
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "fontFile: ["

    if-eqz v4, :cond_1

    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] exist!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oppo/b/a/b;->a(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 1233
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "setDefaultSystemFont: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1235
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] not exist!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.monotype.android.font.system.default.font"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    invoke-static {}, Lcom/oppo/b/a/a;->a()V

    goto :goto_2

    .line 98
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/oppo/b/a/a;->a(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v4, Lcom/oppo/b/a/b;

    invoke-direct {v4}, Lcom/oppo/b/a/b;-><init>()V

    .line 106
    invoke-static {}, Lcom/oppo/b/a/b;->a()Ljava/io/File;

    move-result-object v5

    :try_start_1
    const-string v6, "fonts/"

    .line 109
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "ColorOS-Regular.ttf"

    .line 110
    invoke-virtual {v4, v5, v1, v2}, Lcom/oppo/b/a/b;->a(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    invoke-static {}, Lcom/oppo/b/a/a;->b()V

    .line 119
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    sget-object p2, Lcom/oppo/b/a/a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/oppo/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "v3.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 123
    :cond_3
    new-instance p2, Lcom/oppo/b/a/a$1;

    invoke-direct {p2, p0, p1}, Lcom/oppo/b/a/a$1;-><init>(Lcom/oppo/b/a/a;Landroid/content/Context;)V

    .line 131
    invoke-virtual {p2}, Lcom/oppo/b/a/a$1;->start()V

    :cond_4
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_1
    move-exception p1

    const-string p2, "NameNotFoundException: "

    .line 100
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return v0
.end method
