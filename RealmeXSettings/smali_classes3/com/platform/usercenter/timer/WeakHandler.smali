.class public Lcom/platform/usercenter/timer/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;,
        Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;,
        Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 25
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mRunnables:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 35
    iput-object v2, p0, Lcom/platform/usercenter/timer/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 36
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 25
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mRunnables:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 50
    iput-object p1, p0, Lcom/platform/usercenter/timer/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 51
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 25
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mRunnables:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 60
    iput-object v2, p0, Lcom/platform/usercenter/timer/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 61
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-direct {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 25
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mRunnables:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    .line 72
    iput-object p2, p0, Lcom/platform/usercenter/timer/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 73
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;
    .locals 2

    if-eqz p1, :cond_0

    .line 345
    new-instance v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/platform/usercenter/timer/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 346
    iget-object p1, p0, Lcom/platform/usercenter/timer/WeakHandler;->mRunnables:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    invoke-virtual {p1, v0}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->insertAfter(Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;)V

    .line 347
    iget-object p1, v0, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->wrapper:Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    return-object p1

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Runnable can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final hasMessages(I)Z
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/platform/usercenter/timer/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/platform/usercenter/timer/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/platform/usercenter/timer/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/platform/usercenter/timer/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/platform/usercenter/timer/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mRunnables:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mRunnables:Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/platform/usercenter/timer/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->removeMessages(I)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/platform/usercenter/timer/WeakHandler;->mExec:Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/platform/usercenter/timer/WeakHandler$ExecHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
