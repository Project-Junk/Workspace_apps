.class Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkScanRequestInfo"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mCallingPackage:Ljava/lang/String;

.field private mIsBinderDead:Z

.field private final mMessenger:Landroid/os/Messenger;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPid:I

.field private final mRequest:Landroid/telephony/NetworkScanRequest;

.field private final mScanId:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;ILcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    .line 239
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mMessenger:Landroid/os/Messenger;

    .line 240
    iput-object p4, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 241
    iput p5, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    .line 242
    iput-object p6, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mUid:I

    .line 244
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPid:I

    .line 245
    iput-object p7, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mCallingPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 246
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z

    .line 249
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 251
    :catch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->binderDied()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/os/Messenger;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mUid:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPid:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoneInterfaceManager NetworkScanRequestInfo binderDied("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanRequestTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->setIsBinderDead(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1300(Lcom/android/internal/telephony/NetworkScanRequestTracker;I)V

    return-void
.end method

.method declared-synchronized getIsBinderDead()Z
    .locals 1

    monitor-enter p0

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getRequest()Landroid/telephony/NetworkScanRequest;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    return-object v0
.end method

.method declared-synchronized setIsBinderDead(Z)V
    .locals 0

    monitor-enter p0

    .line 256
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 269
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
