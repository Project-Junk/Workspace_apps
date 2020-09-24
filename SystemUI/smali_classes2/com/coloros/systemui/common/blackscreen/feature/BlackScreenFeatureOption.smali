.class public Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;
.super Ljava/lang/Object;
.source "BlackScreenFeatureOption.java"


# static fields
.field private static final KEY_BLACK_SCREEN_DISABLE:Ljava/lang/String; = "oppo.systemui.disable.blackscreen"

.field private static final KEY_MULTIBITS_SUPPORT:Ljava/lang/String; = "oppo.multibits.dimming.support"

.field private static final REGIONS_SUPPORT:[Ljava/lang/String;

.field private static sBlackScreenDisable:Z

.field private static sMultibitsSupport:Z

.field private static sRegionSupport:Z

.field private static sRegionSupportForRealme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IN"

    const-string v1, "ID"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->REGIONS_SUPPORT:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sBlackScreenDisable:Z

    .line 43
    sput-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sRegionSupport:Z

    .line 44
    sput-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sRegionSupportForRealme:Z

    .line 45
    sput-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sMultibitsSupport:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initIfRegionSupport()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->REGIONS_SUPPORT:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sRegionSupport:Z

    return-void
.end method

.method public static isBlackScreenDisable()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sBlackScreenDisable:Z

    return v0
.end method

.method public static isMultibitsSupport()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sMultibitsSupport:Z

    return v0
.end method

.method public static isRegionSupport()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sRegionSupport:Z

    return v0
.end method

.method public static isRegionSupportForRealme()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sRegionSupportForRealme:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.systemui.disable.blackscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sBlackScreenDisable:Z

    .line 49
    invoke-static {}, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->initIfRegionSupport()V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.multibits.dimming.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/blackscreen/feature/BlackScreenFeatureOption;->sMultibitsSupport:Z

    return-void
.end method
