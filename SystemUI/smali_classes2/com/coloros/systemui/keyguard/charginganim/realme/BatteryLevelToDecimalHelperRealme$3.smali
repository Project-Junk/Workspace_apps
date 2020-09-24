.class Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$3;
.super Ljava/lang/Object;
.source "BatteryLevelToDecimalHelperRealme.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->calculateBatteryRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$402(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;F)F

    .line 170
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$500(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)F

    move-result p1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$400(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)F

    move-result v0

    add-float/2addr p1, v0

    .line 171
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$600(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;F)V

    return-void
.end method
