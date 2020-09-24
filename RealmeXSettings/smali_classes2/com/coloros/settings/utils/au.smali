.class public final Lcom/coloros/settings/utils/au;
.super Ljava/lang/Object;
.source "RomUpdateXml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/utils/au$a;,
        Lcom/coloros/settings/utils/au$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/coloros/settings/utils/au$b;

.field private g:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/utils/au;->d:Ljava/util/Map;

    const/high16 v0, -0x80000000

    .line 70
    iput v0, p0, Lcom/coloros/settings/utils/au;->a:I

    const v0, 0x7fffffff

    .line 76
    iput v0, p0, Lcom/coloros/settings/utils/au;->g:I

    .line 79
    iput-object p1, p0, Lcom/coloros/settings/utils/au;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/coloros/settings/utils/au;
    .locals 1

    .line 83
    new-instance v0, Lcom/coloros/settings/utils/au;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/settings/utils/au;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-direct {p0}, Lcom/coloros/settings/utils/au;->b()I

    move-result v1

    .line 199
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 200
    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 202
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 205
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v4, p0, Lcom/coloros/settings/utils/au;->d:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1226
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    .line 1228
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/coloros/settings/utils/au;->d:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v5, p1, :cond_2

    .line 1247
    iget-object p1, p0, Lcom/coloros/settings/utils/au;->f:Lcom/coloros/settings/utils/au$b;

    if-nez p1, :cond_1

    .line 1251
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 1252
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-lt v3, v1, :cond_3

    return-object v0

    .line 219
    :cond_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private b()I
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/coloros/settings/utils/au;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 237
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    return v4

    .line 240
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a()Lcom/coloros/settings/utils/au$a;
    .locals 11

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadXml: filterName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/utils/au;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomUpdateXml"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    const-string v2, "xml"

    .line 129
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    .line 134
    iget-object v2, p0, Lcom/coloros/settings/utils/au;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filtername="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/settings/utils/au;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v9

    :goto_0
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/coloros/settings/utils/au;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 142
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :try_start_2
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_3

    :cond_1
    move v4, v10

    :goto_1
    if-eqz v3, :cond_2

    .line 150
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v9

    goto/16 :goto_c

    :catch_2
    move-exception v5

    move-object v3, v9

    :goto_3
    move v4, v10

    .line 147
    :goto_4
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadXml: e: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    goto :goto_2

    .line 154
    :cond_2
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loadXml: xml is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    const-string v6, "empty"

    goto :goto_6

    :cond_3
    const-string v6, "non-empty"

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", xmlVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    if-eqz v3, :cond_4

    const/4 v5, 0x2

    .line 165
    :cond_4
    :try_start_4
    iget v6, p0, Lcom/coloros/settings/utils/au;->g:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_5

    .line 167
    iget v2, p0, Lcom/coloros/settings/utils/au;->g:I

    if-le v4, v2, :cond_8

    if-nez v3, :cond_8

    .line 168
    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_7

    :cond_5
    if-nez v3, :cond_7

    .line 171
    iget v3, p0, Lcom/coloros/settings/utils/au;->a:I

    if-ge v4, v3, :cond_6

    goto :goto_8

    .line 178
    :cond_6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_7
    move v5, v10

    goto :goto_9

    .line 172
    :cond_7
    :goto_8
    iget-object v0, p0, Lcom/coloros/settings/utils/au;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/utils/au;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/settings/utils/au;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move v5, v2

    move-object v2, v0

    goto :goto_9

    :cond_8
    move-object v2, v9

    :goto_9
    if-eqz v2, :cond_9

    .line 183
    invoke-direct {p0, v2}, Lcom/coloros/settings/utils/au;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v9
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    .line 186
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    .line 190
    :cond_9
    :goto_b
    new-instance v0, Lcom/coloros/settings/utils/au$a;

    invoke-direct {v0, v4, v5, v9, v10}, Lcom/coloros/settings/utils/au$a;-><init>(IILjava/util/Map;B)V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_c
    if-eqz v3, :cond_a

    .line 150
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_a
    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/coloros/settings/utils/au;
    .locals 3

    const-string v0, "\'"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "\""

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_1
    iput-object p1, p0, Lcom/coloros/settings/utils/au;->e:Ljava/lang/String;

    return-object p0

    .line 102
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/utils/au;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lcom/coloros/settings/utils/au;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/utils/au;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
