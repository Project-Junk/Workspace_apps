.class public Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;
.super Ljava/lang/Object;
.source "BRPluginConfigParser.java"


# static fields
.field public static final JSON_ENCODE:Ljava/lang/String; = "json"

.field private static final TAG:Ljava/lang/String; = "BRPluginConfigParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromJson(Lcom/google/b/k;)Landroid/os/Bundle;
    .locals 9

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1056
    instance-of v1, p0, Lcom/google/b/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 76
    check-cast p0, Lcom/google/b/n;

    .line 1136
    iget-object p0, p0, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    invoke-virtual {p0}, Lcom/google/b/b/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 80
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/k;

    .line 2047
    instance-of v4, v1, Lcom/google/b/i;

    if-eqz v4, :cond_1

    .line 83
    move-object v4, v1

    check-cast v4, Lcom/google/b/i;

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 2065
    :goto_1
    instance-of v5, v1, Lcom/google/b/q;

    if-eqz v5, :cond_2

    .line 84
    check-cast v1, Lcom/google/b/q;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {v4}, Lcom/google/b/i;->a()I

    move-result v6

    if-gtz v6, :cond_3

    .line 87
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_6

    .line 88
    invoke-virtual {v4, v5}, Lcom/google/b/i;->a(I)Lcom/google/b/k;

    move-result-object v6

    .line 3065
    instance-of v6, v6, Lcom/google/b/q;

    if-eqz v6, :cond_6

    .line 89
    invoke-virtual {v4}, Lcom/google/b/i;->a()I

    move-result v1

    .line 90
    new-array v6, v1, [Ljava/lang/String;

    :goto_3
    if-ge v5, v1, :cond_5

    .line 92
    invoke-virtual {v4, v5}, Lcom/google/b/i;->a(I)Lcom/google/b/k;

    move-result-object v7

    check-cast v7, Lcom/google/b/q;

    check-cast v7, Lcom/google/b/q;

    .line 3170
    iget-object v8, v7, Lcom/google/b/q;->a:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 94
    invoke-virtual {v7}, Lcom/google/b/q;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 97
    :cond_5
    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_0

    .line 4116
    iget-object v4, v1, Lcom/google/b/q;->a:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    .line 101
    invoke-virtual {v1}, Lcom/google/b/q;->g()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4150
    :cond_7
    iget-object v4, v1, Lcom/google/b/q;->a:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_8

    .line 103
    invoke-virtual {v1}, Lcom/google/b/q;->b()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 4170
    :cond_8
    iget-object v4, v1, Lcom/google/b/q;->a:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 105
    invoke-virtual {v1}, Lcom/google/b/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unable to transform json to bundle "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "BRPluginConfigParser"

    invoke-static {v3, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-object v0

    :cond_b
    return-object v2
.end method

.method private static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const-string v1, "="

    .line 118
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v1, ";"

    .line 119
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 123
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

    .line 38
    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encode"

    .line 40
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    .line 41
    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    .line 42
    invoke-static {p0, v2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "\r|\n"

    const-string v3, ""

    .line 44
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {v0, v1, p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 4

    .line 26
    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encode"

    .line 28
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    .line 29
    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    .line 30
    invoke-static {p0, v2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "\r|\n"

    const-string v3, ""

    .line 32
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    :cond_0
    invoke-static {v0, v1, p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method protected static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRPluginConfigParser"

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "json"

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 57
    :try_start_0
    new-instance p0, Lcom/google/b/p;

    invoke-direct {p0}, Lcom/google/b/p;-><init>()V

    .line 58
    invoke-static {p2}, Lcom/google/b/p;->a(Ljava/lang/String;)Lcom/google/b/k;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->fromJson(Lcom/google/b/k;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "parse failed: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_0

    .line 65
    new-instance p1, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-direct {p1, p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object p1
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 165
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

    .line 167
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "new FileInputStream failed, "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "BRPluginConfigParser"

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const-string v0, "close failed, "

    const-string v1, "BRPluginConfigParser"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 133
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 146
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 149
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 152
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v4

    .line 142
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    .line 146
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 149
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 156
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_2
    if-eqz p0, :cond_4

    .line 146
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 149
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 152
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_3
    throw v2
.end method
