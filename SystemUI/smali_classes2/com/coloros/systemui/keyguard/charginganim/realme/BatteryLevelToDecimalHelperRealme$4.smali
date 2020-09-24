.class Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$4;
.super Ljava/lang/Object;
.source "BatteryLevelToDecimalHelperRealme.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 175
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

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
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$500(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)F

    move-result v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$4;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$400(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)F

    move-result p0

    add-float/2addr v0, p0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$502(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;F)F

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
