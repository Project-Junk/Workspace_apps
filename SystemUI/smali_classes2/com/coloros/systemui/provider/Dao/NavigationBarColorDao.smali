.class public Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;
.super Ljava/lang/Object;
.source "NavigationBarColorDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;
    }
.end annotation


# static fields
.field private static final sNavigationBarColorDao:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLoadXmlComplete:Z

.field private mNavigationBarColorInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    invoke-direct {v0}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;-><init>()V

    sput-object v0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->sNavigationBarColorDao:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NavigationBarColorDao"

    .line 37
    iput-object v0, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mLoadXmlComplete:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mNavigationBarColorInfoList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;
    .locals 1

    .line 69
    sget-object v0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->sNavigationBarColorDao:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    return-object v0
.end method


# virtual methods
.method public getNavigationBarColorInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mNavigationBarColorInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mLoadXmlComplete:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->loadNavigationBarColor()V

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mNavigationBarColorInfoList:Ljava/util/List;

    return-object p0
.end method

.method public loadNavigationBarColor()V
    .locals 3

    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "sys_systemui_navigationbar_whitelist.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->loadNavigationBarColorFromLocalFile(Ljava/io/File;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->loadNavigationBarColorFromXml()V

    :goto_0
    return-void
.end method

.method public loadNavigationBarColorFromLocalFile(Ljava/io/File;)V
    .locals 5

    const-string v0, "NavigationBarColorDao"

    const-string v1, "NavBar"

    const/4 v2, 0x0

    .line 92
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 94
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 96
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 98
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 102
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_1

    .line 102
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    :goto_3
    throw p0
.end method

.method public loadNavigationBarColorFromXml()V
    .locals 5

    const-string v0, "NavigationBarColorDao"

    .line 111
    iget-object v1, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 116
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f150012

    .line 118
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v3, 0x7f150011

    .line 120
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_3

    const-string p0, "NavBar"

    const-string v1, "load navigation background from xml failed. xmlResourceParser is null"

    .line 124
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 132
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-void

    .line 127
    :cond_3
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 132
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "Common"

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got execption parsing permissions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_5

    .line 132
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 134
    :cond_5
    throw p0
.end method

.method public parseXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_7

    const/4 v6, 0x2

    const-string v7, "pkg"

    if-eq v1, v6, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto/16 :goto_1

    .line 173
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto/16 :goto_1

    .line 146
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    new-instance v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;-><init>(Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;)V

    const-string v2, "0"

    .line 148
    iput-object v2, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mPalette:Ljava/lang/String;

    move-object v2, v1

    move v4, v5

    goto/16 :goto_1

    :cond_2
    const-string v1, "pkgname"

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    if-eqz v2, :cond_6

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 153
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mPkg:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "default"

    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_6

    .line 157
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mDefColor:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "activity"

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    if-eqz v2, :cond_6

    .line 162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 163
    iget-object v1, v2, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityList:Ljava/util/List;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v1, "activitycolor"

    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 167
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 168
    iget-object v1, v2, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityColorList:Ljava/util/List;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_6
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0

    .line 181
    :cond_7
    iput-boolean v5, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mLoadXmlComplete:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 186
    :goto_2
    iget-object p1, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mNavigationBarColorInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mNavigationBarColorInfoList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "NavBar"

    const-string v2, "NavigationBarColorDao"

    const-string v3, "parse xml error! e:"

    .line 183
    invoke-static {v1, v2, v3, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    return-void

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 186
    iget-object v1, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mNavigationBarColorInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mNavigationBarColorInfoList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    :cond_9
    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->mContext:Landroid/content/Context;

    return-void
.end method
