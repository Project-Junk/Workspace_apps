.class public Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;
.super Ljava/lang/Object;
.source "AodClockHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AodClockHelper"

.field private static sAodClockHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;


# instance fields
.field private mAodClockPolicy:Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;

.field private mClockTextColors:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;
    .locals 1

    .line 37
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->sAodClockHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;-><init>()V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->sAodClockHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    .line 40
    :cond_0
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->sAodClockHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    return-object v0
.end method


# virtual methods
.method public getTextColor(Landroid/content/Context;)I
    .locals 2

    const-string v0, "Setting_AodPreviewClockMode"

    const/16 v1, 0x3e8

    .line 78
    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getTextColor(Landroid/content/Context;I)I
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->mClockTextColors:[I

    if-nez v0, :cond_1

    const v0, 0x7f03000d

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->mClockTextColors:[I

    .line 97
    :cond_1
    div-int/lit16 v0, p2, 0x3e8

    if-nez v0, :cond_2

    const/16 p2, 0x3e8

    .line 100
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 101
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initClockData: clockMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "Aod"

    const-string v4, "AodClockHelper"

    invoke-static {v3, v4, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f06003b

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 109
    :cond_3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    if-ne v0, v3, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    .line 107
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->mClockTextColors:[I

    add-int/2addr v0, v2

    aget p0, p0, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 112
    :catch_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTextColorForLockScreen(Landroid/content/Context;)I
    .locals 2

    if-eqz p1, :cond_3

    .line 117
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/16 v0, 0x3e8

    const-string v1, "Setting_AodClockMode"

    .line 123
    invoke-static {p1, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7f06003b

    .line 127
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public hideClock()V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->mAodClockPolicy:Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;

    if-eqz p0, :cond_0

    .line 49
    invoke-interface {p0}, Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;->hideClock()V

    :cond_0
    return-void
.end method

.method public initAodClockHelper(Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->mAodClockPolicy:Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;

    return-void
.end method

.method public performTimeUpdate()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->mAodClockPolicy:Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;

    if-eqz p0, :cond_0

    .line 55
    invoke-interface {p0}, Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;->performTimeUpdate()V

    :cond_0
    return-void
.end method

.method public setAodSuspendState()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->mAodClockPolicy:Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;

    if-eqz p0, :cond_0

    .line 61
    invoke-interface {p0}, Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;->setAodSuspendState()V

    :cond_0
    return-void
.end method

.method public updateAodDozeStateAndStart(I)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->mAodClockPolicy:Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0, p1}, Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;->updateAodDozeStateAndStart(I)V

    :cond_0
    return-void
.end method
