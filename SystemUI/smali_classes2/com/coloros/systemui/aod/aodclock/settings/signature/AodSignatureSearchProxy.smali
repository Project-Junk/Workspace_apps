.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSearchProxy;
.super Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;
.source "AodSignatureSearchProxy.java"


# static fields
.field private static final TARGET_ACTION:Ljava/lang/String; = "oppo.intent.action.AOD_SIGNATURE_SETTING_PREVIEW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResData(I)Lcom/color/settingslib/provider/ColorSearchIndexableResource;
    .locals 3

    .line 47
    new-instance p0, Lcom/color/settingslib/provider/ColorSearchIndexableResource;

    const/high16 v0, 0x7f150000

    const/4 v1, 0x0

    const v2, 0x7f080e98

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/color/settingslib/provider/ColorSearchIndexableResource;-><init>(IILjava/lang/String;I)V

    return-object p0
.end method

.method public getScreenTitle()[I
    .locals 2

    const/4 p0, 0x1

    .line 32
    new-array p0, p0, [I

    const/4 v0, 0x0

    const v1, 0x7f110144

    aput v1, p0, v0

    return-object p0
.end method

.method public getTargetAction()Ljava/lang/String;
    .locals 0

    const-string p0, "oppo.intent.action.AOD_SIGNATURE_SETTING_PREVIEW"

    return-object p0
.end method

.method public getTargetClass()Ljava/lang/String;
    .locals 0

    .line 42
    const-class p0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnable(Landroid/content/Context;)Z
    .locals 0

    .line 60
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
