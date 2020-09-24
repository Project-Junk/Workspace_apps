.class Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$2;
.super Ljava/lang/Object;
.source "BatteryLevelToDecimalHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;
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

    .line 102
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$000(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;)V

    .line 106
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$200(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;->access$100(Lcom/coloros/systemui/keyguard/charginganim/BatteryLevelToDecimalHelper;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
