.class public final synthetic Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;->f$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;

    iput p2, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;->f$1:I

    iput-boolean p3, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;->f$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;

    iget v1, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;->f$1:I

    iget-boolean p0, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenBattery$jCDSL0HLYIpn7pJa-RkVr0JZwog;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenBattery;->lambda$onBatteryLevelChanged$0$BlackScreenBattery(IZ)V

    return-void
.end method
