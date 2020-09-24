.class Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$4;
.super Ljava/lang/Object;
.source "BatteryLevelToDecimalHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 175
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$400(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;)F

    move-result v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$300(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;)F

    move-result p0

    add-float/2addr v0, p0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$402(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;F)F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
