.class Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;
.super Landroid/os/Handler;
.source "PowerUIExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/extend/PowerUIExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/extend/PowerUIExt;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/notification/extend/PowerUIExt;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/extend/PowerUIExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/notification/extend/PowerUIExt;Lcom/coloros/systemui/notification/extend/PowerUIExt$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;-><init>(Lcom/coloros/systemui/notification/extend/PowerUIExt;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 p0, 0xb

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-nez p0, :cond_1

    const-string p0, "persist.vendor.otg.switch"

    const-string p1, "false"

    .line 72
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_OTG_STATE_CHANGE_strOtgToggle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUi--"

    const-string v1, "PowerUI_OTG"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "true"

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 75
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->setAutoCloseAlarm()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    .line 78
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->cancelAutoCloseAlarm()V

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/extend/PowerUIExt;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/extend/PowerUIExt;->access$102(Lcom/coloros/systemui/notification/extend/PowerUIExt;Z)Z

    .line 67
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/extend/PowerUIExt;

    invoke-static {p1}, Lcom/coloros/systemui/notification/extend/PowerUIExt;->access$300(Lcom/coloros/systemui/notification/extend/PowerUIExt;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;->this$0:Lcom/coloros/systemui/notification/extend/PowerUIExt;

    invoke-static {p0}, Lcom/coloros/systemui/notification/extend/PowerUIExt;->access$200(Lcom/coloros/systemui/notification/extend/PowerUIExt;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_3
    :goto_0
    return-void
.end method
