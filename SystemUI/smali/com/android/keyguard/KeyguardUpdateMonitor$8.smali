.class Lcom/android/keyguard/KeyguardUpdateMonitor$8;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 1500
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x12d

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    .line 1502
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1503
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x13d

    .line 1504
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->getSendingUserId()I

    move-result p0

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 1503
    invoke-virtual {v0, v2, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1
    const-string p2, "com.android.facelock.FACE_UNLOCK_STARTED"

    .line 1505
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x147

    if-eqz p2, :cond_2

    const-wide/16 p1, 0x8

    const-string v1, "KeyguardUpdateMonitor.mBroadcastAllReceiver#onReceive ACTION_FACE_UNLOCK_STARTED"

    .line 1506
    invoke-static {p1, p2, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1507
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    .line 1508
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->getSendingUserId()I

    move-result p0

    .line 1507
    invoke-virtual {v2, v0, v3, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1509
    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_2
    const-string p2, "com.android.facelock.FACE_UNLOCK_STOPPED"

    .line 1510
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1511
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p2

    .line 1512
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->getSendingUserId()I

    move-result p0

    .line 1511
    invoke-virtual {p2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1514
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1515
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x135

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string p2, "android.intent.action.USER_UNLOCKED"

    .line 1516
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1517
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x14e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return-void
.end method
