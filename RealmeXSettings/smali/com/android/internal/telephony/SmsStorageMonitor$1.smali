.class Lcom/android/internal/telephony/SmsStorageMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsStorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 164
    iget-object p1, p1, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    return-void

    .line 165
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 167
    iget-object p1, p1, Lcom/android/internal/telephony/SmsStorageMonitor;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    :cond_1
    return-void
.end method
