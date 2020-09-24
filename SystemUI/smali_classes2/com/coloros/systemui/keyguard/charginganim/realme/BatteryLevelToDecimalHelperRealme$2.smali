.class Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$2;
.super Ljava/lang/Object;
.source "BatteryLevelToDecimalHelperRealme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;
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

    .line 107
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$000(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)V

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$300(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;->access$200(Lcom/coloros/systemui/keyguard/charginganim/realme/BatteryLevelToDecimalHelperRealme;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
