.class Lcom/coloros/systemui/notification/helper/OtgHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "OtgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/OtgHelper;->initAlarmReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/OtgHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/OtgHelper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/OtgHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/OtgHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OtgHelper"

    const-string v0, "SystemUi--"

    invoke-static {v0, p2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->getOtgState()I

    move-result p1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otg state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/OtgHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/OtgHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/OtgHelper;->closeOtg()V

    :cond_0
    return-void
.end method
