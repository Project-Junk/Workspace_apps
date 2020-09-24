.class Lcom/android/internal/telephony/SimActivationTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SimActivationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SimActivationTracker;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SimActivationTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SimActivationTracker;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/SimActivationTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SimActivationTracker;->access$100(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ss"

    .line 84
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    const-string p2, "onSimAbsent, reset activation state to UNKNOWN"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SimActivationTracker;->access$100(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SimActivationTracker;->setVoiceActivationState(I)V

    .line 87
    iget-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SimActivationTracker;->setDataActivationState(I)V

    :cond_1
    return-void
.end method
