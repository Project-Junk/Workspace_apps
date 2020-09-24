.class Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;
.super Landroid/os/Handler;
.source "ColorosPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/power/ColorosPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Lcom/coloros/systemui/notification/power/ColorosPowerUI$1;)V
    .locals 0

    .line 529
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 532
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 546
    :pswitch_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$2202(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    goto :goto_0

    .line 542
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$2202(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    .line 543
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$2300(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    goto :goto_0

    .line 535
    :pswitch_2
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$2002(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/system/media/audio/ui/LowBattery.ogg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 538
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$2100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
