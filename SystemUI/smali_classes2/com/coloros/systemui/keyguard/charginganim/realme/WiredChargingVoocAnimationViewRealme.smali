.class public Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;
.super Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;
.source "WiredChargingVoocAnimationViewRealme.java"


# instance fields
.field private mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "WiredChargingVoocAnimationView"

    .line 31
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->TAG:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    return-void
.end method


# virtual methods
.method public getFadeinAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0064

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 41
    new-instance v2, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v2, v0, v1, p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;II)V

    return-object v2

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b007c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 46
    new-instance v2, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v2, v0, v1, p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method

.method public getFadeoutAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 72
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0066

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 73
    new-instance v2, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v2, v0, v1, p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;II)V

    return-object v2

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 77
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b007e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 78
    new-instance v2, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v2, v0, v1, p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method

.method public getLoopAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isVoocChargerTechnology()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1104a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0068

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 57
    new-instance v3, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v3, v0, v2, p0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;IIZ)V

    return-object v3

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVoocChargerTechnology()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mWiredChargingAnimation:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->isSuperVooc2ChargerTechnology()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1104b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingVoocAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0080

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 62
    new-instance v3, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v3, v0, v2, p0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;IIZ)V

    return-object v3
.end method
