.class public Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;
.super Ljava/lang/Object;
.source "SystemUiXmlComposer.java"


# static fields
.field public static final CONTROL_CENTER_TAG:Ljava/lang/String; = "CONTROL_CENTER_TAG"

.field public static final FOLDER:Ljava/lang/String;

.field public static final SPLIT:Ljava/lang/String; = ":"

.field private static final SYSTEMUI_RECORD:Ljava/lang/String; = "SYSTEMUI_RECORD"

.field private static final TAG:Ljava/lang/String; = "SystemUiXmlComposer"

.field public static final XML_FILE:Ljava/lang/String; = "Systemui.xml"


# instance fields
.field private mSerializer:Lorg/xmlpull/v1/XmlSerializer;

.field private mStringWriter:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Systemui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRecord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "CONTROL_CENTER_TAG"

    const-string v1, "Error:"

    const-string v2, "SystemUiXmlComposer"

    const-string v3, "BackupRestore"

    const-string v4, ""

    .line 75
    :try_start_0
    iget-object v5, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-object v5, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v4, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 84
    invoke-static {v3, v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 82
    invoke-static {v3, v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 80
    invoke-static {v3, v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public endCompose()Z
    .locals 6

    const-string v0, "Error:"

    const-string v1, "SystemUiXmlComposer"

    const-string v2, "BackupRestore"

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "SYSTEMUI_RECORD"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 67
    invoke-static {v2, v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 65
    invoke-static {v2, v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 63
    invoke-static {v2, v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getXmlInfo()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mStringWriter:Ljava/io/StringWriter;

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public startCompose()Z
    .locals 7

    const-string v0, "Error:"

    const-string v1, "SystemUiXmlComposer"

    const-string v2, "BackupRestore"

    .line 39
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    iput-object v3, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mStringWriter:Ljava/io/StringWriter;

    const/4 v3, 0x0

    .line 42
    :try_start_0
    iget-object v4, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 43
    iget-object v4, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/SystemUiXmlComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "SYSTEMUI_RECORD"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-static {v2, v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 49
    invoke-static {v2, v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 47
    invoke-static {v2, v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v3
.end method
