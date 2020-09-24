.class public Lcom/coloros/backup/sdk/v2/host/BRPluginSource;
.super Ljava/lang/Object;


# static fields
.field private static final ASSETS_PLUGINS_PATH:Ljava/lang/String; = "br_plugins"

.field public static final BR_BASE_DIR:Ljava/lang/String; = "br_cache"

.field private static final BR_SERVICE:Ljava/lang/String; = "com.coloros.br.service"

.field public static final COLOROS:I = 0x1

.field public static final LOCAL_PLUGINS_DIR:Ljava/lang/String; = "local_plugins"

.field private static final TAG:Ljava/lang/String; = "BRPluginSource"

.field public static final THIRD:I = 0x2

.field private static sBRPluginConfigs:[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

.field private static sChildPlugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sNormalOrParentPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteOriginalPlugin(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getOriginalID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "BRPluginSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteInfo add, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public static declared-synchronized getBRPluginServiceInfos(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRService(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v2, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-direct {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->setClass(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->setMetaData(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParentID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isParent()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isColorOSSupport()Z

    move-result v3

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isThirdSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_1

    sget-object v3, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "BRPluginSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceInfos add, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceInfo:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    :cond_4
    sget-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v4, "BRPluginSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChildPlugins add, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    sget-object p0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getBRPluginServiceInfosCompat(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRPluginServiceInfosCompat(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBRPluginServiceInfosCompat(Landroid/content/Context;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRPluginServiceInfos(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginSourceCompatV1;->getBRPluginServiceInfos(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->mergePlugins(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->deleteOriginalPlugin(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    const-string v0, "BRPluginSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step 5 getBRPluginServiceInfosCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getBRService(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRServiceIntents()[Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/16 v5, 0x80

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static getBRServiceIntents()[Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.br.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static declared-synchronized getChildBRPluginServiceInfos(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRPluginServiceInfos(Landroid/content/Context;I)Ljava/util/List;

    sget-object p0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLocalBRPlugins(Landroid/content/Context;)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 1

    const-string v0, "local_plugins"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 20

    move-object/from16 v1, p1

    sget-object v0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sBRPluginConfigs:[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sBRPluginConfigs:[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    return-object v0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->initBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v7, "br_plugins"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "BRPluginSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get local br plugins path error."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    return-object v4

    :cond_1
    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_a

    const-string v0, "BRPluginSource"

    aget-object v10, v7, v9

    invoke-static {v0, v10}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "br_plugins/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v10, "BRPluginSource"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list local br plugins path error."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_2

    return-object v4

    :cond_2
    array-length v11, v10

    move v12, v3

    :goto_3
    if-ge v12, v11, :cond_9

    aget-object v0, v10, v12

    const-string v13, ".config"

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "BRPluginSource"

    aget-object v13, v10, v12

    invoke-static {v0, v13}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "br_plugins/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v7, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v10, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v13}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->parse(Ljava/io/InputStream;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getDexs()[Ljava/lang/String;

    move-result-object v15

    const-string v0, "BRPluginSource"

    const-string v6, "add success"

    invoke-static {v0, v6}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_4

    array-length v0, v15

    if-lez v0, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v16, v4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    array-length v4, v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v4, :cond_3

    :try_start_6
    aget-object v0, v15, v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v17, v2

    :try_start_7
    const-string v2, "BRPluginSource"
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v18, v4

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v19, v8

    :try_start_9
    const-string v8, "br_plugins/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v7, v9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "br_plugins/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v7, v9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move/from16 v18, v4

    :goto_5
    move/from16 v19, v8

    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v17

    move/from16 v4, v18

    move/from16 v8, v19

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v19, v8

    :goto_8
    move-object v6, v13

    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_3
    move-object/from16 v17, v2

    move/from16 v19, v8

    :try_start_b
    const-string v0, "dexPaths"
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v1, 0x0

    :try_start_c
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v14, v0, v2}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->putValue(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_9

    :catch_9
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v4

    :goto_9
    move/from16 v19, v8

    :goto_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_4
    move-object/from16 v17, v2

    move v1, v3

    move-object/from16 v16, v4

    move/from16 v19, v8

    const-string v0, "BRPluginSource"

    const-string v2, "dexs is null"

    :goto_b
    invoke-static {v0, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_5
    move-object/from16 v17, v2

    move v1, v3

    move-object/from16 v16, v4

    move/from16 v19, v8

    const-string v0, "BRPluginSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BRPluginConfigParser.parse(inputStream) failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v7, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v10, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_b

    :goto_c
    if-eqz v13, :cond_8

    :try_start_d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_11

    :catch_a
    move-exception v0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_f

    :catch_b
    move-exception v0

    move-object/from16 v17, v2

    move v1, v3

    move-object/from16 v16, v4

    move/from16 v19, v8

    :goto_d
    move-object v6, v13

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_f

    :catch_c
    move-exception v0

    move-object/from16 v17, v2

    move v1, v3

    move-object/from16 v16, v4

    move/from16 v19, v8

    const/4 v6, 0x0

    :goto_e
    :try_start_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v6, :cond_8

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v13, v6

    :goto_f
    if-eqz v13, :cond_6

    :try_start_10
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_10

    :catch_e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_10
    throw v1

    :cond_7
    move-object/from16 v17, v2

    move v1, v3

    move-object/from16 v16, v4

    move/from16 v19, v8

    :cond_8
    :goto_11
    add-int/lit8 v12, v12, 0x1

    move v3, v1

    move-object/from16 v4, v16

    move-object/from16 v2, v17

    move/from16 v8, v19

    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v17, v2

    move v1, v3

    move-object/from16 v16, v4

    move/from16 v19, v8

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    sput-object v0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sBRPluginConfigs:[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    sget-object v0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sBRPluginConfigs:[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    return-object v0
.end method

.method public static initBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "br_cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    return-object p0
.end method

.method private static mergePlugins(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    const-string v5, "BRPluginSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mergeList isRepeat, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
