.class Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;
.super Landroid/text/method/SingleLineTransformationMethod;
.source "CarrierChargingText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierTextTransformationMethod"
.end annotation


# instance fields
.field private final mAllCaps:Z

.field private final mLocale:Ljava/util/Locale;

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;Landroid/content/Context;Z)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingText;

    invoke-direct {p0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    .line 136
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 137
    iput-boolean p3, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;->mAllCaps:Z

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 142
    invoke-super {p0, p1, p2}, Landroid/text/method/SingleLineTransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 144
    iget-boolean p2, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;->mAllCaps:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingText$CarrierTextTransformationMethod;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
