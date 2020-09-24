.class public Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;
.super Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;
.source "SettingsSearchIndexablesProvider.java"


# static fields
.field public static SPECIAL_VARIABLE_DISABLE:Ljava/lang/String; = "disable"

.field public static SPECIAL_VARIABLE_ENABLE:Ljava/lang/String; = "enable"

.field public static final TAG:Ljava/lang/String; = "SettingsSearchIndexablesProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;-><init>()V

    return-void
.end method

.method private static getArrayScreenTitle(Landroid/content/Context;[I)Ljava/lang/String;
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ";"

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ";"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    sget-object p0, Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;->SPECIAL_VARIABLE_ENABLE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;->SPECIAL_VARIABLE_DISABLE:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$0(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 77
    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$queryNonIndexableKeys$1$SettingsSearchIndexablesProvider(Landroid/database/MatrixCursor;Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;->getKeyMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p2, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$oJmcgU6_1Fx5a1Gx9eEDaG1gU6I;

    invoke-direct {p2, p1}, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$oJmcgU6_1Fx5a1Gx9eEDaG1gU6I;-><init>(Landroid/database/MatrixCursor;)V

    invoke-interface {p0, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string p1, "Common"

    const-string v0, "SettingsSearchIndexablesProvider"

    const-string v1, "queryNonIndexableKeys!"

    .line 69
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/color/settingslib/provider/ColorSearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->getInstance()Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->getProxies()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$K7S7aePaPKtHmVuLrWrKEkgjyR8;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/common/settings/search/-$$Lambda$SettingsSearchIndexablesProvider$K7S7aePaPKtHmVuLrWrKEkgjyR8;-><init>(Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;Landroid/database/MatrixCursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 64
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/color/settingslib/provider/ColorSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 42
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/color/settingslib/provider/ColorSearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->getInstance()Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->getDataSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 47
    invoke-static {}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->getInstance()Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coloros/systemui/common/settings/search/SettingsSearchProxyManager;->getProxy(I)Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;

    move-result-object v3

    .line 48
    invoke-virtual {v3, p0}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;->isEnable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    sget-object v4, Lcom/color/settingslib/provider/ColorSearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 51
    invoke-virtual {v3, v2}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;->getResData(I)Lcom/color/settingslib/provider/ColorSearchIndexableResource;

    move-result-object v5

    iget v5, v5, Lcom/color/settingslib/provider/ColorSearchIndexableResource;->xmlResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    .line 52
    invoke-virtual {v3}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;->getScreenTitle()[I

    move-result-object v6

    invoke-static {p0, v6}, Lcom/coloros/systemui/common/settings/search/SettingsSearchIndexablesProvider;->getArrayScreenTitle(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 53
    invoke-virtual {v3, v2}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;->getResData(I)Lcom/color/settingslib/provider/ColorSearchIndexableResource;

    move-result-object v6

    iget v6, v6, Lcom/color/settingslib/provider/ColorSearchIndexableResource;->iconResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 54
    invoke-virtual {v3}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;->getTargetAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 56
    invoke-virtual {v3}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;->getTargetClass()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 57
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method
