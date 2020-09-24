.class Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$3;
.super Ljava/lang/Object;
.source "BatteryLevelToDecimalHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->calculateBatteryRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$302(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;F)F

    .line 170
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$400(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;)F

    move-result p1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$300(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;)F

    move-result v0

    add-float/2addr p1, v0

    .line 171
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$3;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$500(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;F)V

    return-void
.end method
