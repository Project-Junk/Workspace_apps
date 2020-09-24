.class public Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;
.super Ljava/lang/Object;


# static fields
.field public static final JSON_ENCODE:Ljava/lang/String; = "json"

.field private static final TAG:Ljava/lang/String; = "BRPluginConfigParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromJson(Lcom/b/a/b;)Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/b;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast p0, Lcom/b/a/e;

    invoke-virtual {p0}, Lcom/b/a/e;->a()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/b;

    invoke-virtual {v1}, Lcom/b/a/b;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/b/a/a;

    goto :goto_1

    :cond_0
    move-object v4, v2

    :goto_1
    invoke-virtual {v1}, Lcom/b/a/b;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v1, Lcom/b/a/h;

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_2
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/b/a/a;->a()I

    move-result v6

    if-gtz v6, :cond_2

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v4, v5}, Lcom/b/a/a;->a(I)Lcom/b/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/b;->g()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/b/a/a;->a()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    :goto_3
    if-ge v5, v1, :cond_4

    invoke-virtual {v4, v5}, Lcom/b/a/a;->a(I)Lcom/b/a/b;

    move-result-object v7

    check-cast v7, Lcom/b/a/h;

    invoke-virtual {v7}, Lcom/b/a/h;->n()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/b/a/h;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/b/a/h;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/b/a/h;->d()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/b/a/h;->m()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/b/a/h;->b()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/b/a/h;->n()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/b/a/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "BRPluginConfigParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to transform json to bundle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-object v0

    :cond_b
    return-object v2
.end method

.method private static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const-string v1, "="

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v1, ";"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static parse(Ljava/io/File;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 4

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encode"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "\r|\n"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {v0, v1, p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 4

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encode"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "\r|\n"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {v0, v1, p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method protected static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 3

    const-string v0, "BRPluginConfigParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/b/a/g;

    invoke-direct {p0}, Lcom/b/a/g;-><init>()V

    invoke-virtual {p0, p2}, Lcom/b/a/g;->a(Ljava/lang/String;)Lcom/b/a/b;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->fromJson(Lcom/b/a/b;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "BRPluginConfigParser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_0

    new-instance p1, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-direct {p1, p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object p1
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BRPluginConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new FileInputStream failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_2
    const-string v1, "BRPluginConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v3, "close failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :goto_5
    const-string v1, "BRPluginConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_7
    if-eqz p0, :cond_4

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_3
    move-exception p0

    goto :goto_9

    :cond_4
    :goto_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BRPluginConfigParser"

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    throw v0
.end method
