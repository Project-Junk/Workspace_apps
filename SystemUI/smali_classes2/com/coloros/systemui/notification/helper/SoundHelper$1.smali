.class Lcom/coloros/systemui/notification/helper/SoundHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/SoundHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/SoundHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/SoundHelper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/SoundHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/SoundHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$SoundHelper$1()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/SoundHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/SoundHelper;

    invoke-static {v0}, Lcom/coloros/systemui/notification/helper/SoundHelper;->access$000(Lcom/coloros/systemui/notification/helper/SoundHelper;)V

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/SoundHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/SoundHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/SoundHelper;->access$100(Lcom/coloros/systemui/notification/helper/SoundHelper;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 49
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notification--SoundHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object p1

    new-instance p2, Lcom/coloros/systemui/notification/helper/-$$Lambda$SoundHelper$1$qEqvlDsYSl5fpOoKxW8QNwWJWXA;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$SoundHelper$1$qEqvlDsYSl5fpOoKxW8QNwWJWXA;-><init>(Lcom/coloros/systemui/notification/helper/SoundHelper$1;)V

    invoke-virtual {p1, p2}, Lcom/coloros/common/thread/ThreadManager;->postInThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
