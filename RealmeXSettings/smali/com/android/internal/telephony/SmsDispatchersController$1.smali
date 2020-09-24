.class Lcom/android/internal/telephony/SmsDispatchersController$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsDispatchersController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$1;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Received broadcast "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsDispatchersController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$1;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
