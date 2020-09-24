.class public Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;
.super Ljava/lang/Object;
.source "GestureExclusionDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;
    }
.end annotation


# static fields
.field private static final sGestureExclusionDao:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGestureExclusionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadXmlComplete:Z

.field private mLocalVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

    invoke-direct {v0}, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;-><init>()V

    sput-object v0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->sGestureExclusionDao:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GestureExclusionDao"

    .line 31
    iput-object v0, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mLoadXmlComplete:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mGestureExclusionInfoList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;
    .locals 1

    .line 61
    sget-object v0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->sGestureExclusionDao:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

    return-object v0
.end method


# virtual methods
.method public getGestureExclusionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mGestureExclusionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mLoadXmlComplete:Z

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->loadGestureExclusionFromXml()V

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mGestureExclusionInfoList:Ljava/util/List;

    return-object p0
.end method

.method public loadGestureExclusionFromXml()V
    .locals 4

    const-string v0, "GestureExclusionDao"

    const-string v1, "NavBar"

    .line 72
    iget-boolean v2, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mLoadXmlComplete:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f150004

    .line 79
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v3, 0x7f150003

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    const-string p0, "load gesture exclusion from xml failed. xmlResourceParser is null"

    .line 85
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_2
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->parseXml(Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "parse error!"

    .line 90
    invoke-static {v1, v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public parseXml(Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 96
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    const-string v3, "pkg"

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mGestureExclusionInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "conf-version"

    .line 101
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mLocalVersion:Ljava/lang/String;

    goto :goto_1

    .line 103
    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    new-instance v0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;-><init>(Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "pkgname"

    .line 105
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    .line 107
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 108
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;->mPkg:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, "activity"

    .line 110
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 112
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 113
    iget-object v0, v1, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;->mActivityDisableList:Ljava/util/List;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    .line 125
    :cond_6
    iput-boolean v2, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mLoadXmlComplete:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "NavBar"

    const-string v1, "GestureExclusionDao"

    const-string v2, "parse xml error! e:"

    .line 127
    invoke-static {v0, v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    .line 129
    :goto_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 130
    throw p0
.end method

.method public setContest(Landroid/content/Context;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->mContext:Landroid/content/Context;

    return-void
.end method
