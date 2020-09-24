.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received broadcast "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsBroadcastUndelivered"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 90
    new-instance p2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->start()V

    :cond_0
    return-void
.end method
