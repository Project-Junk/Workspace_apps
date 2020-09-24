.class public abstract Lcom/android/internal/telephony/WakeLockStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;,
        Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;,
        Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_BROADCAST_COMPLETE:I = 0x2

.field public static final EVENT_NEW_SMS_MESSAGE:I = 0x1

.field static final EVENT_RELEASE_WAKE_LOCK:I = 0x3

.field private static final WAKE_LOCK_TIMEOUT:I = 0xbb8


# instance fields
.field protected mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

.field private final mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mPhone:Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected final mReceiver:Landroid/content/BroadcastReceiver;

.field public mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiverCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    .line 217
    new-instance v0, Lcom/android/internal/telephony/WakeLockStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$1;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string p3, "power"

    .line 76
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 p3, 0x1

    .line 77
    invoke-virtual {p2, p3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 80
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 81
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    iget-object p2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 82
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    iget-object p2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 83
    iget-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    return-object p0
.end method


# virtual methods
.method public final dispatchSmsMessage(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final dispose()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->quit()V

    return-void
.end method

.method protected abstract handleSmsMessage(Landroid/os/Message;)Z
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method
