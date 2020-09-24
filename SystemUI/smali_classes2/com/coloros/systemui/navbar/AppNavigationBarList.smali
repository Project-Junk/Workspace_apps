.class public Lcom/coloros/systemui/navbar/AppNavigationBarList;
.super Ljava/lang/Object;
.source "AppNavigationBarList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppNavigationBarList"

.field private static sAppShowHideNavIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultAppNavBarBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultAppNavBarWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultAppShowHideNavIconList:Ljava/util/List;
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

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sDefaultAppNavBarBlackList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sDefaultAppNavBarWhiteList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sAppShowHideNavIconList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sDefaultAppShowHideNavIconList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppShowHideNavIconList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sAppShowHideNavIconList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "sys_systemui_showhidenavigationbaricon_blacklist"

    .line 60
    invoke-static {p0, v0}, Lcom/coloros/systemui/provider/ProviderUtil;->getListFromLocalRomupdateFile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sAppShowHideNavIconList:Ljava/util/List;

    .line 63
    :cond_1
    sget-object p0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sAppShowHideNavIconList:Ljava/util/List;

    return-object p0
.end method

.method public static getDefaultAppShowHideNavIconList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sDefaultAppShowHideNavIconList:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 39
    sget-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sDefaultAppNavBarBlackList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    sget-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sDefaultAppNavBarWhiteList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    sget-object v0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sDefaultAppShowHideNavIconList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f030077

    goto :goto_0

    :cond_0
    const v1, 0x7f030076

    .line 41
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static setAppShowHideNavIconList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    sput-object p0, Lcom/coloros/systemui/navbar/AppNavigationBarList;->sAppShowHideNavIconList:Ljava/util/List;

    return-void
.end method
