.class public final Lcom/coloros/settings/feature/language/region/e;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RegionListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/language/region/e$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/language/region/d;",
            ">;"
        }
    .end annotation

    const-string v0, "@"

    const-string v1, "RegionListParser"

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f150105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 50
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 52
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "region"

    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "id"

    const/4 v5, 0x0

    .line 54
    invoke-interface {v3, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "name"

    .line 55
    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "MO"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 62
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ""

    .line 63
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-string v7, "dateFormat"

    .line 70
    invoke-interface {v3, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "timeFormat"

    .line 71
    invoke-interface {v3, v5, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "timeZone"

    .line 72
    invoke-interface {v3, v5, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "countryCode"

    .line 73
    invoke-interface {v3, v5, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 76
    invoke-static {v3}, Lcom/coloros/settings/feature/language/region/e;->a(Landroid/content/res/XmlResourceParser;)Z

    move-result v11

    .line 77
    invoke-static {v3}, Lcom/coloros/settings/feature/language/region/e;->b(Landroid/content/res/XmlResourceParser;)I

    move-result v12

    const-string v13, "locale"

    .line 78
    invoke-interface {v3, v5, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "key"

    .line 79
    invoke-interface {v3, v5, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    new-instance v14, Lcom/coloros/settings/feature/language/region/d;

    invoke-direct {v14, p0}, Lcom/coloros/settings/feature/language/region/d;-><init>(Landroid/content/Context;)V

    .line 1055
    iput-object v4, v14, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    .line 1063
    iput-object v6, v14, Lcom/coloros/settings/feature/language/region/d;->c:Ljava/lang/String;

    .line 1071
    iput-object v7, v14, Lcom/coloros/settings/feature/language/region/d;->d:Ljava/lang/String;

    .line 1079
    iput-object v8, v14, Lcom/coloros/settings/feature/language/region/d;->e:Ljava/lang/String;

    .line 1087
    iput-object v9, v14, Lcom/coloros/settings/feature/language/region/d;->f:Ljava/lang/String;

    .line 1130
    iput v12, v14, Lcom/coloros/settings/feature/language/region/d;->h:I

    .line 2122
    iput-boolean v11, v14, Lcom/coloros/settings/feature/language/region/d;->g:Z

    .line 2185
    iput-object v10, v14, Lcom/coloros/settings/feature/language/region/d;->k:Ljava/lang/String;

    .line 3142
    iput-object v13, v14, Lcom/coloros/settings/feature/language/region/d;->i:Ljava/lang/String;

    .line 3177
    iput-object v5, v14, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    .line 100
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 111
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 108
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    goto :goto_1

    :catch_1
    move-exception v0

    .line 106
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    goto :goto_1

    .line 4126
    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/coloros/settings/feature/language/region/e;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 118
    invoke-static {v2}, Lcom/coloros/settings/feature/language/region/e;->a(Ljava/util/List;)Ljava/util/List;

    :cond_6
    return-object v2

    :goto_3
    if-eqz v3, :cond_7

    .line 111
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 113
    :cond_7
    throw p0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/language/region/d;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/language/region/d;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 218
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/coloros/settings/feature/language/region/d;

    .line 222
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 224
    :try_start_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "RegionListParser"

    const-string v2, "sortRegionList exception"

    .line 226
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 230
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    return-object p0
.end method

.method private static a(Landroid/content/res/XmlResourceParser;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "visible"

    .line 172
    invoke-interface {p0, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "true"

    const-string v2, "false"

    .line 4188
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    .line 4190
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 4194
    :cond_1
    new-instance p0, Lcom/coloros/settings/feature/language/region/e$a;

    invoke-direct {p0}, Lcom/coloros/settings/feature/language/region/e$a;-><init>()V

    throw p0
    :try_end_0
    .catch Lcom/coloros/settings/feature/language/region/e$a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "RegionListParser"

    const-string v1, "RegionList  *visible* Property is error, is must be *true*,  *false*, or empty string"

    .line 177
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method private static b(Landroid/content/res/XmlResourceParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "inputmethod"

    .line 199
    invoke-interface {p0, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegionListParser"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const-string v1, "RegionList  *inputmethod* Property is error, is must be number"

    .line 206
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    .line 131
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    move-result v0

    const v1, 0x7f05005b

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegionListParser"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v3
.end method


# virtual methods
.method public final characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 151
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 146
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
