.class public Lcom/coloros/utils/OppoThemeApplyUtil;
.super Ljava/lang/Object;
.source "OppoThemeApplyUtil.java"


# static fields
.field private static final ACTION_APPLY_THEME:Ljava/lang/String; = "com.nearme.themespace.applytheme"

.field private static final ALREADY_DEFAULT_THEME_APPLIED:I = 0x1

.field private static final ALREADY_DEVICE_PROVISIONED:I = 0x1

.field private static final CUSTOMIZED_DEFAULT_THEME_PATH:Ljava/lang/String; = "data/theme_bak/customized_theme"

.field private static final DEFAULT_PATH_THEME:Ljava/lang/String; = "default"

.field private static final DEFAULT_THEME_APPLIED:Ljava/lang/String; = "default_theme_applied"

.field private static final DEFAULT_THEME_PATH:Ljava/lang/String; = "Defult_Theme"

.field private static final DEFAULT_THEME_PATH_IN_Q:Ljava/lang/String; = "/theme_bak/customized_theme"

.field private static final INNER_THEME_DIR:Ljava/lang/String; = "/system/media/themeInner/"

.field private static final IS_FROM_CUSTOMIZED_DEFAULT_THEME:Ljava/lang/String; = "IS_FROM_911"

.field private static final IS_FROM_PHONE_COLOR_DEFAULT_THEME:Ljava/lang/String; = "is_from_phone_color_default_theme"

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final NOT_DEFAULT_THEME_APPLIED:I = 0x0

.field private static final NO_DEVICE_PROVISIONED:I = 0x0

.field private static final OPPO_CUSTOM_ROOT_PATH:Ljava/lang/String; = "/oppo_custom"

.field private static final PACKAGE_THEMESPACE:Ljava/lang/String; = "com.heytap.themestore"

.field private static final PHONE_COLOR_MAPS_FILE_NAME:Ljava/lang/String; = "phone_color_default_theme_maps"

.field private static final PHONE_COLOR_MAPS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final PRJ_VERSION_FILE_NAME:Ljava/lang/String; = "/proc/oppoVersion/prjVersion"

.field private static final PROP_DEFAULT_THEME_APPLIED:Ljava/lang/String; = "oppo.theme.default.applied"

.field private static final PROP_HW_PHONE_COLOR:Ljava/lang/String; = "ro.hw.phone.color"

.field private static final RETRY_INTERVALS:[J

.field private static final TAG:Ljava/lang/String; = "OppoThemeApplyUtil"

.field private static final TAG_COLOR_DESCRIPTION:Ljava/lang/String; = "ColorDescription"

.field private static final TAG_COLOR_DESCRIPTION_CN:Ljava/lang/String; = "ColorDescriptionCN"

.field private static final TAG_DEFAULT_THEME:Ljava/lang/String; = "DefaultTheme"

.field private static final TAG_PHONE_COLOR:Ljava/lang/String; = "PhoneColor"

.field private static final TAG_PHONE_COLORS:Ljava/lang/String; = "PhoneColors"

.field private static final THEME_FILE_SUFFIX:Ljava/lang/String; = ".theme"

.field private static final THEME_PATH:Ljava/lang/String; = "THEME_PATH"

.field private static final THREAD_NAME:Ljava/lang/String; = "apply_oppo_theme"

.field private static final XML_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 58
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/utils/OppoThemeApplyUtil;->RETRY_INTERVALS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1388
        0x7d0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lcom/coloros/utils/OppoThemeApplyUtil;->getDefaultThemePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/coloros/utils/OppoThemeApplyUtil;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/coloros/utils/OppoThemeApplyUtil;->findPhoneColorDefaultTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()[J
    .locals 1

    .line 44
    sget-object v0, Lcom/coloros/utils/OppoThemeApplyUtil;->RETRY_INTERVALS:[J

    return-object v0
.end method

.method public static checkOppoDefaultTheme(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "OppoThemeApplyUtil"

    const-string v0, "checkOppoDefaultTheme: The context is null!"

    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/utils/OppoThemeApplyUtil$1;

    invoke-direct {v1, p0}, Lcom/coloros/utils/OppoThemeApplyUtil$1;-><init>(Landroid/content/Context;)V

    const-string p0, "apply_oppo_theme"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static findPhoneColorDefaultTheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "findPhoneColorDefaultTheme: Closing inputStream. e = "

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "OppoThemeApplyUtil"

    if-eqz v1, :cond_0

    const-string p0, "findPhoneColorDefaultTheme: The phoneColorName is empty!"

    .line 222
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 230
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/coloros/utils/OppoThemeApplyUtil;->getPrjVersion()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/media/themeInner/phone_color_default_theme_maps_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object v4, v2

    :cond_2
    if-nez v4, :cond_3

    .line 238
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/media/themeInner/phone_color_default_theme_maps.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const-string p0, "findPhoneColorDefaultTheme: The phone color map file is not exists!"

    .line 240
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 244
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findPhoneColorDefaultTheme: prjVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , phoneColorMapFile = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v5, "UTF-8"

    .line 248
    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 251
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    move-object v6, v2

    :goto_0
    const/4 v7, 0x1

    if-eq v5, v7, :cond_9

    if-eqz v5, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v5, "PhoneColor"

    .line 257
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 258
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_6

    const-string v6, "DefaultTheme"

    .line 264
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 265
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    :cond_6
    move-object v6, v5

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    goto :goto_3

    .line 275
    :cond_8
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :cond_9
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v1, v2

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_7

    :catch_1
    move-exception p0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v1, v2

    .line 278
    :goto_5
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findPhoneColorDefaultTheme: e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_a

    .line 282
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_a
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findPhoneColorDefaultTheme: defaultTheme = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :goto_7
    if-eqz v2, :cond_b

    .line 282
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_b
    :goto_8
    throw p0
.end method

.method private static getDefaultThemePath()Ljava/lang/String;
    .locals 3

    .line 358
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coloros/utils/OppoThemeApplyUtil;->getOppoCustomDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/theme_bak/customized_theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "data/theme_bak/customized_theme"

    return-object v0
.end method

.method private static getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 342
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 348
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 349
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 350
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 352
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "OppoThemeApplyUtil"

    const-string p1, "resolveInfos null or empty"

    .line 343
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOppoCustomDirectory()Ljava/io/File;
    .locals 4

    .line 371
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getOppoCustomDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 373
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/oppo_custom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getPrjVersion()Ljava/lang/String;
    .locals 10

    const-string v0, "getPrjVersion: e = "

    const-string v1, "getPrjVersion: Close e = "

    .line 298
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/oppoVersion/prjVersion"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "OppoThemeApplyUtil"

    const-string v5, ""

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    .line 304
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 305
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 306
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 318
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 321
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v5, v0

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v9, v6

    move-object v6, v2

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v3

    move-object v9, v6

    move-object v6, v2

    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v3

    :goto_1
    move-object v3, v6

    move-object v6, v2

    goto/16 :goto_b

    :catch_3
    move-exception v7

    move-object v9, v6

    move-object v6, v2

    move-object v2, v7

    move-object v7, v3

    :goto_2
    move-object v3, v9

    goto :goto_4

    :catch_4
    move-exception v7

    move-object v9, v6

    move-object v6, v2

    move-object v2, v7

    move-object v7, v3

    :goto_3
    move-object v3, v9

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v7, v3

    move-object v3, v6

    move-object v6, v7

    goto/16 :goto_b

    :catch_5
    move-exception v2

    move-object v7, v3

    move-object v3, v6

    move-object v6, v7

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v7, v3

    move-object v3, v6

    move-object v6, v7

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v6, v3

    move-object v7, v6

    goto/16 :goto_b

    :catch_7
    move-exception v2

    move-object v6, v3

    move-object v7, v6

    .line 311
    :goto_4
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v7, :cond_0

    .line 315
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_6

    :cond_0
    :goto_5
    if-eqz v6, :cond_1

    .line 318
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    :cond_1
    if-eqz v3, :cond_8

    .line 321
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_f

    .line 324
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_a

    :catch_9
    move-exception v2

    move-object v6, v3

    move-object v7, v6

    .line 309
    :goto_7
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v7, :cond_2

    .line 315
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    goto :goto_8

    :catch_a
    move-exception v0

    goto :goto_9

    :cond_2
    :goto_8
    if-eqz v6, :cond_3

    .line 318
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    if-eqz v3, :cond_8

    .line 321
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_f

    .line 324
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catchall_4
    move-exception v0

    :goto_b
    if-eqz v7, :cond_4

    .line 315
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    goto :goto_c

    :catch_b
    move-exception v2

    goto :goto_d

    :cond_4
    :goto_c
    if-eqz v6, :cond_5

    .line 318
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    if-eqz v3, :cond_6

    .line 321
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_e

    .line 324
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_6
    :goto_e
    throw v0

    :cond_7
    const-string v0, "getPrjVersion: The prjVersionFile is not exist!"

    .line 328
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_8
    :goto_f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 332
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v5
.end method
