.class public Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;
.super Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;
.source "WiredChargingNormalAnimationViewRealme.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "WiredChargingNormalAnimationView"

    .line 28
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFadeinAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 35
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0070

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 36
    new-instance v2, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v2, v0, v1, p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method

.method public getFadeoutAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 51
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0072

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 52
    new-instance v2, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v2, v0, v1, p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method

.method public getLoopAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 43
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/WiredChargingNormalAnimationViewRealme;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0074

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 44
    new-instance v2, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;IIZ)V

    return-object v2
.end method