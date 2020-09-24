.class public Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public findClass(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;
    .locals 1
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

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getPluginClass()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-le v0, p3, :cond_0

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "BRPluginLoader"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findClass success:"

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", in classLoader: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p1, "BRPluginLoader"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findClass failed:"

    goto :goto_1

    :goto_2
    return-object p0
.end method

.method public getLoadedPlugins()[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 1

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLocalPlugin()V
    .locals 0

    return-void
.end method

.method public load(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->load(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Z)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public load(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Z)Ljava/lang/ClassLoader;
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->unload(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)Z

    :cond_1
    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getDexPath()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    array-length v1, p3

    if-lez v1, :cond_5

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->isUseParentClass()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BRPluginLoader"

    const-string v2, "WARNNING! Has jars and isUseParentClass. It\'s not a standard way! Pls correct this. \'Delete jars\' Or \'set isUseParentClass false\'"

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    if-nez v5, :cond_3

    aget-object v6, p3, v5

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v5

    goto :goto_2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "BRPluginLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "classLoader add: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "br_cache"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    new-instance v2, Ljava/io/File;

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

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    new-instance p1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p3, v2, v0, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_4

    :cond_5
    const-string p3, "BRPluginLoader"

    const-string v1, "pluginConfig no dexPaths!"

    invoke-static {p3, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->isUseParentClass()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_4
    move-object v0, p1

    :cond_6
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    const-string p0, "BRPluginLoader"

    const-string p1, "pluginConfig is null!"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-object v0
.end method

.method public unload(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->mPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getOptimizedDirectory()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    const/4 p0, 0x1

    return p0
.end method
