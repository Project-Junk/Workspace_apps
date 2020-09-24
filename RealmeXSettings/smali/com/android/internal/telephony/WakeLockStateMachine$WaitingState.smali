.class Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
.super Lcom/android/internal/util/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 195
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v0, "mWakeLock released while still in WaitingState!"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->loge(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v0, "broadcast complete, returning to idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$200(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "deferring message until return to idle"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->deferMessage(Landroid/os/Message;)V

    return v1
.end method
