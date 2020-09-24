.class public Lcom/coloros/backup/sdk/v2/host/BRPluginSource;
.super Ljava/lang/Object;
.source "BRPluginSource.java"


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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteOriginalPlugin(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
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

    .line 260
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getOriginalID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "0"

    .line 262
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deleteInfo add, "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BRPluginSource"

    invoke-static {v3, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
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

    .line 270
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 271
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

    .line 186
    :try_start_0
    sget-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 187
    sget-object p0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 189
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;

    .line 190
    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRService(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 192
    new-instance v2, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-direct {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;-><init>()V

    .line 193
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->setClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->setMetaData(Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParentID()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isParent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 199
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isColorOSSupport()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 200
    :goto_1
    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->isThirdSupport()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x2

    :cond_3
    or-int/2addr v3, v4

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_1

    .line 203
    sget-object v3, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sNormalOrParentPlugins:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "BRPluginSource"

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "serviceInfos add, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 210
    :cond_4
    sget-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 211
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    .line 213
    :cond_5
    sget-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_6

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    sget-object v4, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v4, "BRPluginSource"

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getChildPlugins add, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 223
    :cond_7
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

    .line 181
    invoke-static {p0, p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRPluginServiceInfosCompat(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBRPluginServiceInfosCompat(Landroid/content/Context;II)Ljava/util/List;
    .locals 2
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

    .line 164
    invoke-static {p0, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRPluginServiceInfos(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    .line 166
    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginSourceCompatV1;->getBRPluginServiceInfos(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 169
    invoke-static {p2, p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->mergePlugins(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 171
    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->deleteOriginalPlugin(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "step 5 getBRPluginServiceInfosCompat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BRPluginSource"

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

    .line 145
    invoke-static {}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRServiceIntents()[Landroid/content/Intent;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 149
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 150
    aget-object v4, v0, v3

    const/16 v5, 0x80

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_1

    .line 155
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

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.br.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 141
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

    .line 230
    :try_start_0
    sget-object v1, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 231
    sget-object p0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sChildPlugins:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    .line 233
    :try_start_1
    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getBRPluginServiceInfos(Landroid/content/Context;I)Ljava/util/List;

    .line 234
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

    .line 136
    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 23

    move-object/from16 v1, p1

    const-string v2, "/"

    const-string v3, "br_plugins/"

    const-string v4, "BRPluginSource"

    .line 35
    sget-object v0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sBRPluginConfigs:[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    if-eqz v0, :cond_0

    return-object v0

    .line 38
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->initBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    .line 39
    new-array v7, v6, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    .line 41
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v10, "br_plugins"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get local br plugins path error."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_1

    return-object v7

    .line 51
    :cond_1
    array-length v11, v10

    move v12, v6

    :goto_1
    if-ge v12, v11, :cond_a

    .line 52
    aget-object v0, v10, v12

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v14, v10, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 57
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "list local br plugins path error."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_2

    return-object v7

    .line 62
    :cond_2
    array-length v14, v13

    move v15, v6

    :goto_3
    if-ge v15, v14, :cond_9

    .line 63
    aget-object v0, v13, v15

    const-string v9, ".config"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    aget-object v0, v13, v15

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    aget-object v6, v10, v12

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v13, v15

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :try_start_4
    invoke-static {v9}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfigParser;->parse(Ljava/io/InputStream;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 73
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v7

    .line 74
    :try_start_5
    invoke-virtual {v6}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getDexs()[Ljava/lang/String;

    move-result-object v7

    const-string v0, "add success"

    .line 75
    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_4

    .line 76
    array-length v0, v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-lez v0, :cond_4

    move/from16 v17, v11

    .line 77
    :try_start_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v18, v14

    .line 78
    :try_start_7
    new-instance v14, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v19, v8

    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {v14}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    .line 86
    array-length v8, v7

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v8, :cond_3

    aget-object v0, v7, v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v20, v5

    .line 88
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v21, v7

    :try_start_a
    aget-object v7, v10, v12

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v22, v3

    :try_start_b
    aget-object v3, v10, v12

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v3, v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 94
    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v22, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v21, v7

    .line 97
    :goto_5
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move-object/from16 v3, v22

    goto :goto_4

    :cond_3
    move-object/from16 v22, v3

    move-object/from16 v20, v5

    const-string v0, "dexPaths"
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v1, 0x0

    .line 100
    :try_start_d
    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->putValue(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    goto/16 :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move-object/from16 v19, v8

    goto/16 :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move-object/from16 v19, v8

    goto :goto_9

    :cond_4
    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move-object/from16 v19, v8

    move/from16 v17, v11

    move/from16 v18, v14

    const/4 v1, 0x0

    const-string v0, "dexs is null"

    .line 103
    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_9
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    goto :goto_8

    :cond_5
    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    move/from16 v17, v11

    move/from16 v18, v14

    const/4 v1, 0x0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "BRPluginConfigParser.parse(inputStream) failed:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v10, v12

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v13, v15

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_7
    if-eqz v9, :cond_8

    .line 114
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_f

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move-object/from16 v16, v7

    :goto_8
    move-object/from16 v19, v8

    move/from16 v17, v11

    :goto_9
    move/from16 v18, v14

    :goto_a
    const/4 v1, 0x0

    goto :goto_c

    :catch_c
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    move/from16 v17, v11

    move/from16 v18, v14

    const/4 v1, 0x0

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    goto :goto_d

    :catch_d
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move v1, v6

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    move/from16 v17, v11

    move/from16 v18, v14

    :goto_b
    const/4 v9, 0x0

    .line 110
    :goto_c
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v9, :cond_8

    .line 114
    :try_start_10
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_f

    :catch_e
    move-exception v0

    move-object v3, v0

    .line 116
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_d
    if-eqz v9, :cond_6

    .line 114
    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_e

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 116
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    :cond_6
    :goto_e
    throw v1

    :cond_7
    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move v1, v6

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    move/from16 v17, v11

    move/from16 v18, v14

    :cond_8
    :goto_f
    add-int/lit8 v15, v15, 0x1

    move v6, v1

    move-object/from16 v7, v16

    move/from16 v11, v17

    move/from16 v14, v18

    move-object/from16 v8, v19

    move-object/from16 v5, v20

    move-object/from16 v3, v22

    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move v1, v6

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    move/from16 v17, v11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v19, v8

    .line 124
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    .line 126
    sput-object v0, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->sBRPluginConfigs:[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    return-object v0
.end method

.method public static initBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "br_cache"

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    return-object p0
.end method

.method private static mergePlugins(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
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

    .line 243
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

    .line 244
    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mergeList isRepeat, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BRPluginSource"

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
