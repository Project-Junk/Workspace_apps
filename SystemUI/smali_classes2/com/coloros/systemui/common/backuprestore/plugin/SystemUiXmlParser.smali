.class public Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;
.super Ljava/lang/Object;
.source "SystemUiXmlParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUiXmlParser"


# instance fields
.field private mList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;->mList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;->mList:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public parse(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    .line 32
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->getInstance()Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->getAllKeys()Landroid/util/ArraySet;

    move-result-object p2

    .line 36
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 39
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    goto :goto_2

    .line 46
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CONTROL_CENTER_TAG"

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 48
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 50
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    iget-object v4, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;->mList:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_3
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BackupRestore"

    const-string p2, "SystemUiXmlParser"

    const-string v0, "Error:"

    .line 66
    invoke-static {p1, p2, v0, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public restore(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->getInstance()Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlParser;->mList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->handleRestore(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method
