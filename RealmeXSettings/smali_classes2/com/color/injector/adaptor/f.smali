.class public Lcom/color/injector/adaptor/f;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/injector/adaptor/f$a;,
        Lcom/color/injector/adaptor/f$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "f"

.field private static b:Z = false

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/color/injector/adaptor/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/content/res/AssetManager;

.field private static f:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/color/injector/adaptor/f;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 251
    sget-object v0, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/injector/adaptor/f$b;

    .line 253
    sget-object v0, Lcom/color/injector/adaptor/f$1;->a:[I

    invoke-virtual {p0}, Lcom/color/injector/adaptor/f$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_3

    .line 272
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_3

    .line 255
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    const-string p0, "0x"

    .line 258
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "0o"

    .line 261
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "0b"

    .line 264
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    .line 268
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 266
    :cond_6
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 263
    :cond_7
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 260
    :cond_8
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_9
    :goto_3
    return-object p1
.end method

.method private static a()V
    .locals 11

    .line 106
    invoke-static {}, Lcom/color/injector/adaptor/f;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 111
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/injector/adaptor/e;

    .line 2027
    iget-object v4, v3, Lcom/color/injector/adaptor/e;->a:Ljava/lang/String;

    .line 114
    sget-object v5, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 118
    sget-object v4, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "generateConfigMap: configBean: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v4, v3, Lcom/color/injector/adaptor/e;->b:Ljava/lang/String;

    .line 122
    sget-object v5, Lcom/color/injector/adaptor/f;->d:Ljava/util/HashMap;

    .line 3027
    iget-object v6, v3, Lcom/color/injector/adaptor/e;->a:Ljava/lang/String;

    .line 3043
    iget-object v7, v3, Lcom/color/injector/adaptor/e;->c:Ljava/lang/String;

    .line 2202
    sget-object v8, Lcom/color/injector/adaptor/f$b;->e:Lcom/color/injector/adaptor/f$b;

    sget-object v9, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_9

    .line 4051
    iget-object v3, v3, Lcom/color/injector/adaptor/e;->d:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v7, v6

    move v6, v1

    .line 3214
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_a

    .line 3215
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/color/injector/adaptor/e$a;

    .line 4077
    iget-object v9, v8, Lcom/color/injector/adaptor/e$a;->a:Ljava/lang/String;

    .line 4085
    iget-object v8, v8, Lcom/color/injector/adaptor/e$a;->b:Ljava/lang/String;

    .line 3218
    invoke-static {v9, v8}, Lcom/color/injector/adaptor/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 3219
    sget-object v10, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/color/injector/adaptor/f$b;

    .line 3220
    sget-object v10, Lcom/color/injector/adaptor/f$1;->a:[I

    invoke-virtual {v9}, Lcom/color/injector/adaptor/f$b;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    goto :goto_2

    :cond_1
    if-nez v7, :cond_2

    .line 3241
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3243
    :cond_2
    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-nez v7, :cond_4

    .line 3235
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3237
    :cond_4
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-nez v7, :cond_6

    .line 3229
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3231
    :cond_6
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-nez v7, :cond_8

    .line 3223
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3225
    :cond_8
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2205
    :cond_9
    invoke-static {v6, v7}, Lcom/color/injector/adaptor/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 122
    :cond_a
    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_3
    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 2

    .line 78
    sget-object v0, Lcom/color/injector/adaptor/f;->e:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/color/injector/adaptor/f;->e:Landroid/content/res/AssetManager;

    .line 81
    :cond_0
    sget-boolean v0, Lcom/color/injector/adaptor/d;->a:Z

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "read_config_from_sdcard"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    .line 85
    :cond_1
    sput-boolean v0, Lcom/color/injector/adaptor/f;->b:Z

    .line 88
    :cond_2
    sput-object p1, Lcom/color/injector/adaptor/f;->f:Ljava/io/InputStream;

    .line 1069
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1070
    sput-object p0, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    sget-object p1, Lcom/color/injector/adaptor/f$b;->a:Lcom/color/injector/adaptor/f$b;

    const-string v0, "bool"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object p0, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    sget-object p1, Lcom/color/injector/adaptor/f$b;->b:Lcom/color/injector/adaptor/f$b;

    const-string v0, "int"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object p0, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    sget-object p1, Lcom/color/injector/adaptor/f$b;->c:Lcom/color/injector/adaptor/f$b;

    const-string v0, "float"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object p0, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    sget-object p1, Lcom/color/injector/adaptor/f$b;->d:Lcom/color/injector/adaptor/f$b;

    const-string v0, "string"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object p0, Lcom/color/injector/adaptor/f;->c:Ljava/util/HashMap;

    sget-object p1, Lcom/color/injector/adaptor/f$b;->e:Lcom/color/injector/adaptor/f$b;

    const-string v0, "array"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/color/injector/adaptor/f;->a()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Z)Z
    .locals 5

    .line 414
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_2

    .line 416
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 418
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 420
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_6

    .line 422
    instance-of p1, p0, Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    move p1, v1

    move v0, p1

    .line 423
    :goto_0
    move-object v3, p0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_5

    .line 424
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/color/injector/adaptor/f;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    move v0, v2

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v2, v1

    .line 432
    :goto_2
    sget-object p0, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isValidateTypeValue: isValidate: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lcom/color/injector/adaptor/f;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "boolean"

    .line 139
    invoke-static {p0, v0}, Lcom/color/injector/adaptor/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/color/injector/adaptor/f$a;
        }
    .end annotation

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1409
    invoke-static {p1, v0}, Lcom/color/injector/adaptor/f;->a(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-static {p0}, Lcom/color/injector/adaptor/f;->d(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 101
    :cond_1
    sget-object v1, Lcom/color/injector/adaptor/f;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 95
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/color/injector/adaptor/f;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-static {p0}, Lcom/color/injector/adaptor/f;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "type"

    .line 163
    invoke-static {p0, v0}, Lcom/color/injector/adaptor/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static b()Ljava/util/ArrayList;
    .locals 14

    const/4 v0, 0x0

    .line 4304
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 4305
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 4306
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 4308
    sget-object v3, Lcom/color/injector/adaptor/f;->f:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/color/injector/adaptor/f;->f:Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/color/injector/adaptor/f;->c()Ljava/io/InputStream;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v5, "UTF-8"

    .line 4313
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4314
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move v6, v4

    move v8, v6

    :goto_1
    if-eq v5, v2, :cond_d

    if-eqz v5, :cond_b

    const/4 v12, 0x2

    const-string v13, "array"

    if-eq v5, v12, :cond_8

    const/4 v12, 0x3

    if-eq v5, v12, :cond_4

    const/4 v12, 0x4

    if-eq v5, v12, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz v6, :cond_c

    .line 4350
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_3

    if-eqz v10, :cond_3

    .line 6089
    iput-object v5, v10, Lcom/color/injector/adaptor/e$a;->b:Ljava/lang/String;

    goto :goto_4

    .line 7047
    :cond_3
    iput-object v5, v9, Lcom/color/injector/adaptor/e;->c:Ljava/lang/String;

    goto :goto_4

    .line 4358
    :cond_4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4359
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7055
    iput-object v11, v9, Lcom/color/injector/adaptor/e;->d:Ljava/util/ArrayList;

    move v8, v4

    :cond_5
    if-eqz v8, :cond_6

    .line 4364
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_7

    if-eqz v9, :cond_7

    .line 4366
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v0

    :cond_7
    :goto_2
    move v6, v4

    goto :goto_4

    .line 4328
    :cond_8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_9

    .line 4331
    new-instance v10, Lcom/color/injector/adaptor/e$a;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v9}, Lcom/color/injector/adaptor/e$a;-><init>(Lcom/color/injector/adaptor/e;)V

    .line 5081
    iput-object v5, v10, Lcom/color/injector/adaptor/e$a;->a:Ljava/lang/String;

    goto :goto_3

    .line 4334
    :cond_9
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 4335
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 4336
    new-instance v9, Lcom/color/injector/adaptor/e;

    invoke-direct {v9}, Lcom/color/injector/adaptor/e;-><init>()V

    .line 6031
    iput-object v5, v9, Lcom/color/injector/adaptor/e;->a:Ljava/lang/String;

    .line 6039
    iput-object v6, v9, Lcom/color/injector/adaptor/e;->b:Ljava/lang/String;

    .line 4341
    :goto_3
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4343
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    move v8, v6

    move-object v11, v5

    goto :goto_4

    :cond_a
    move v6, v2

    goto :goto_4

    .line 4324
    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4372
    :cond_c
    :goto_4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    :cond_d
    if-eqz v3, :cond_e

    .line 4376
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    move-object v0, v7

    :goto_5
    if-eqz v0, :cond_f

    .line 296
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_f

    .line 297
    sget-object v1, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parserConfig: i: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    return-object v0

    :catch_0
    move-exception v1

    .line 290
    sget-object v2, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    const-string v3, "parserConfig: io exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    .line 286
    sget-object v2, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    const-string v3, "parserConfig: xml pull parser exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/color/injector/adaptor/f$a;
        }
    .end annotation

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "correct"

    const-string v0, "Type should be bool, or int, or float, or string, or array which item also should be these type;"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 456
    :goto_0
    new-instance v1, Lcom/color/injector/adaptor/f$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal type: the value of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " type!!!! \n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/color/injector/adaptor/f$a;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static c()Ljava/io/InputStream;
    .locals 5

    .line 383
    sget-boolean v0, Lcom/color/injector/adaptor/f;->b:Z

    if-eqz v0, :cond_0

    .line 7437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7442
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 7437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/feature_config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 391
    sget-object v0, Lcom/color/injector/adaptor/f;->e:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_1

    :try_start_1
    const-string v2, "feature_config.xml"

    .line 394
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 395
    sget-object v0, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    const-string v2, "getConfigInputStream: wrp, inputStream: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 400
    sget-object v2, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConfigInputStream: wrp, e msg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 397
    sget-object v2, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    const-string v3, "getConfigInputStream: wrp, "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 404
    :cond_1
    :goto_1
    sget-object v0, Lcom/color/injector/adaptor/f;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getConfigInputStream: wrp, final inputStream: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 127
    sget-object v0, Lcom/color/injector/adaptor/f;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/color/injector/adaptor/f;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/color/injector/adaptor/f$a;
        }
    .end annotation

    const-string v0, ""

    .line 446
    invoke-static {p0, v0}, Lcom/color/injector/adaptor/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x0

    return p0
.end method
