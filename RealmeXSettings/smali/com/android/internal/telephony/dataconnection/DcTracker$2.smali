.class Lcom/android/internal/telephony/dataconnection/DcTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "screen on"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$002(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 344
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$100(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 345
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 346
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$300(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "screen off"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$002(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 350
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$100(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 351
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 352
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$300(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void

    :cond_1
    const-string v0, "com.android.internal.telephony.data-reconnect"

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v0, "com.android.internal.telephony.data-stall"

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    return-void

    :cond_3
    const-string v0, "com.android.internal.telephony.provisioning_apn_alarm"

    .line 357
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "Provisioning apn alarm"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    return-void

    :cond_4
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 361
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "received carrier config change"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 363
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$700(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 364
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$800(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setDefaultMobileDataEnabled()V

    return-void

    .line 367
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReceive: Unknown action="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
