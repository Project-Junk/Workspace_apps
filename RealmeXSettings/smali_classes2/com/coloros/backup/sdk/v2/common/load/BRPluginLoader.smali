.class public Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;
.super Ljava/lang/Object;
.source "BRPluginLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BRPluginLoader"


# instance fields
.field private mPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public findClass(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;",
            "Ljava/lang/ClassLoader;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getPluginClass()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    array-length v1, p1

    if-le v1, p3, :cond_0

    .line 107
    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, ", in classLoader: "

    const-string p3, "BRPluginLoader"

    if-eqz v0, :cond_1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findClass success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findClass failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public getLoadedPlugins()[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 30
    new-array v1, v1, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLocalPlugin()V
    .locals 0

    return-void
.end method

.method public load(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->load(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Z)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Z)Ljava/lang/ClassLoader;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "BRPluginLoader"

    if-eqz p2, :cond_7

    .line 45
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    .line 47
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {p0, p2}, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->unload(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)Z

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getDexPath()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 55
    array-length v2, p3

    if-lez v2, :cond_5

    .line 57
    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->isUseParentClass()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WARNNING! Has jars and isUseParentClass. It\'s not a standard way! Pls correct this. \'Delete jars\' Or \'set isUseParentClass false\'"

    .line 59
    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 66
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    array-length v4, p3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_4

    if-nez v6, :cond_3

    .line 69
    aget-object v7, p3, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 71
    :cond_3
    sget-object v7, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p3, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 76
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "classLoader add: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "br_cache"

    .line 78
    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 80
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "opt_dex_cache"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    .line 84
    new-instance p1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p3, v1, v0, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_3

    :cond_5
    const-string p3, "pluginConfig no dexPaths!"

    .line 87
    invoke-static {v1, p3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->isUseParentClass()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_3
    move-object v0, p1

    .line 93
    :cond_6
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    const-string p1, "pluginConfig is null!"

    .line 95
    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v0
.end method

.method public unload(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getOptimizedDirectory()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    const/4 p1, 0x1

    return p1
.end method
