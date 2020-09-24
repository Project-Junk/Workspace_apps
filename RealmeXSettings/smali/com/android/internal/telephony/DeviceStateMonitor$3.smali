.class Lcom/android/internal/telephony/DeviceStateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DeviceStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 205
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "received: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$000(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "android.os.action.CHARGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "android.os.action.DISCHARGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "on"

    const-string v5, "off"

    if-eqz p1, :cond_6

    const/4 v6, 0x4

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v3, :cond_1

    .line 233
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unexpected broadcast intent: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$000(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string/jumbo p1, "tetherArray"

    .line 223
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    move v4, v1

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Tethering "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$000(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 229
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 230
    iput v4, p1, Landroid/os/Message;->arg1:I

    goto :goto_4

    .line 219
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 220
    iput v4, p1, Landroid/os/Message;->arg1:I

    goto :goto_4

    .line 215
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 216
    iput v1, p1, Landroid/os/Message;->arg1:I

    goto :goto_4

    .line 210
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 211
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$200(Lcom/android/internal/telephony/DeviceStateMonitor;)Z

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 212
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Power Save mode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v5

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$000(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 236
    :goto_4
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$3;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6898c375 -> :sswitch_3
        -0x3465cce -> :sswitch_2
        0x388694fe -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch
.end method
