.class Lcom/android/internal/telephony/WakeLockStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$1;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$1;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object p1, p1, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$1;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method
