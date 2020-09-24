.class public Lcom/coloros/systemui/qs/AppQsTileBlackList;
.super Ljava/lang/Object;
.source "AppQsTileBlackList.java"


# static fields
.field private static sAppQuickSettingsBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultQuickSettingsBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sDefaultQuickSettingsBlackList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppQuickSettingsBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sDefaultQuickSettingsBlackList:Ljava/util/List;

    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    return-object v0
.end method

.method public static getdefaultQuickSettingsBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sDefaultQuickSettingsBlackList:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-static {}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->initDefaultQuickSettingsBlackList()V

    .line 31
    invoke-static {p0}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->initQuickSettingsBlackList(Landroid/content/Context;)V

    return-void
.end method

.method private static initDefaultQuickSettingsBlackList()V
    .locals 2

    .line 35
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sDefaultQuickSettingsBlackList:Ljava/util/List;

    const-string v1, "custom(com.bluewhale.vpn.shadowsocks/.bg.TileService)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static initQuickSettingsBlackList(Landroid/content/Context;)V
    .locals 1

    const-string v0, "sys_systemui_quicksettingstile_blacklist"

    .line 57
    invoke-static {p0, v0}, Lcom/coloros/systemui/provider/ProviderUtil;->getListFromLocalRomupdateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 62
    :cond_0
    sget-object p0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 63
    sget-object p0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sDefaultQuickSettingsBlackList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static isBlackListTile(Ljava/lang/String;)Z
    .locals 1

    .line 69
    invoke-static {}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->getAppQuickSettingsBlackList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setAppQuickSettingsBlackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    sget-object v0, Lcom/coloros/systemui/qs/AppQsTileBlackList;->sAppQuickSettingsBlackList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
