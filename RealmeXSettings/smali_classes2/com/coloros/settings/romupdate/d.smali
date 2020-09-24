.class public Lcom/coloros/settings/romupdate/d;
.super Ljava/lang/Object;
.source "UsageAccessBlackListParser.java"


# static fields
.field private static a:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 104
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 105
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v1, p0, :cond_1

    .line 108
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 110
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 111
    sget-object v1, Lcom/coloros/settings/romupdate/d;->a:Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "parserXml sPackageList.add:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "UsageAccessBlackListParser"

    invoke-static {v1, p0}, Lcom/color/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    sget-object v0, Lcom/coloros/settings/romupdate/d;->a:Landroid/util/ArraySet;

    const/4 v2, 0x1

    if-nez v0, :cond_8

    .line 47
    const-class v0, Lcom/coloros/settings/romupdate/d;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v3, Lcom/coloros/settings/romupdate/d;->a:Landroid/util/ArraySet;

    if-nez v3, :cond_7

    .line 1058
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sput-object v3, Lcom/coloros/settings/romupdate/d;->a:Landroid/util/ArraySet;

    const-string v3, "version"

    const-string v4, "xml"

    .line 1060
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 1062
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p0, 0x0

    :try_start_1
    const-string v3, "content://com.nearme.romupdate.provider.db/update_list"

    .line 1067
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "filtername=\'safe_permission_list\'"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 1069
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1070
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1071
    :try_start_3
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-object v4, p0

    goto :goto_1

    :cond_1
    move-object v4, p0

    move v5, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 1077
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    goto/16 :goto_7

    :catch_1
    move-object v3, p0

    move-object v4, v3

    :catch_2
    :goto_1
    :try_start_5
    const-string v5, "UsageAccessBlackListParser"

    const-string v6, "read exception !"

    .line 1074
    invoke-static {v5, v6}, Lcom/color/util/ColorLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    .line 1077
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move v5, v1

    :cond_3
    :goto_2
    const-string v3, "UsageAccessBlackListParser"

    .line 1080
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initialize xml !=null "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", xmlVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/color/util/ColorLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_5

    :try_start_7
    const-string v3, "UsageAccessBlackListParser"

    const-string v5, "initialize use provider value"

    .line 1083
    invoke-static {v3, v5}, Lcom/color/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "usage_access_filter"

    .line 1084
    invoke-static {v4, v3}, Lcom/coloros/settings/romupdate/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catch_3
    move-exception v3

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_8
    const-string v4, "UsageAccessBlackListParser"

    .line 1087
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error occur, e = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    :goto_5
    move-object p0, v4

    :goto_6
    if-nez p0, :cond_7

    const-string p0, "UsageAccessBlackListParser"

    const-string v3, "initialize use local value"

    .line 1091
    invoke-static {p0, v3}, Lcom/color/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception p0

    :goto_7
    if-eqz v3, :cond_6

    .line 1077
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1079
    :cond_6
    throw p0

    .line 51
    :cond_7
    :goto_8
    monitor-exit v0

    goto :goto_9

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    .line 54
    :cond_8
    :goto_9
    sget-object p0, Lcom/coloros/settings/romupdate/d;->a:Landroid/util/ArraySet;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v1
.end method
