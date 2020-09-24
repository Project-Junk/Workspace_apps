.class Lcom/android/internal/telephony/ims/ImsResolver$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$2;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    .line 213
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "ImsResolver"

    if-ne p2, p1, :cond_0

    const-string p1, "Received SIM change for invalid slot id."

    .line 217
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Received Carrier Config Changed for SlotId: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$2;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->access$000(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
