.class Lcom/coloros/systemui/notification/helper/OtgHelper$2;
.super Landroid/database/ContentObserver;
.source "OtgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/OtgHelper;->initContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/OtgHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/OtgHelper;Landroid/os/Handler;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/OtgHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/OtgHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 90
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->access$000()Z

    move-result p0

    .line 91
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->getOtgState()I

    move-result p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observer otg enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "OtgHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    .line 94
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->setAutoCloseAlarm()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->cancelAutoCloseAlarm()V

    :goto_0
    return-void
.end method
