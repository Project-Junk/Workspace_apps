.class Lcom/android/internal/telephony/DeviceStateMonitor$2;
.super Ljava/lang/Object;
.source "DeviceStateMonitor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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

    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$100(Lcom/android/internal/telephony/DeviceStateMonitor;)Z

    move-result p1

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 194
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 195
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
