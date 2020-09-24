.class public Lcom/android/internal/telephony/dataconnection/DcController;
.super Lcom/android/internal/util/StateMachine;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final VDBG:Z = false


# instance fields
.field private final mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

.field private final mDcListActiveByCid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mDcListAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

.field private mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

.field private final mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private volatile mExecutingCarrierChange:Z

.field private final mListener:Landroid/net/INetworkPolicyListener;

.field final mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Handler;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    .line 69
    new-instance p1, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcController$1;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    .line 176
    new-instance p1, Lcom/android/internal/telephony/dataconnection/DcController$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/dataconnection/DcController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mListener:Landroid/net/INetworkPolicyListener;

    const/16 p1, 0x12c

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->setLogRecSize(I)V

    const-string p1, "E ctor"

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 94
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 96
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 97
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->addState(Lcom/android/internal/util/State;)V

    .line 98
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->setInitialState(Lcom/android/internal/util/State;)V

    const-string p1, "X ctor"

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 101
    new-instance p1, Lcom/android/internal/telephony/dataconnection/DcController$1;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/internal/telephony/dataconnection/DcController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 108
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "phone"

    .line 109
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 110
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "netpolicy"

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 113
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    .line 114
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {v0, p1, p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V

    .line 115
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    .line 117
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    .line 118
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 p3, 0x10000

    invoke-virtual {p1, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/DcController;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mExecutingCarrierChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DcController;)Landroid/net/INetworkPolicyListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mListener:Landroid/net/INetworkPolicyListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->lr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object p0
.end method

.method private lr(Ljava/lang/String;)V
    .locals 0

    .line 460
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->logAndAddLogRec(Ljava/lang/String;)V

    return-void
.end method

.method public static makeDcc(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Handler;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 7

    .line 126
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "Dcc"

    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Handler;)V

    return-object v6
.end method


# virtual methods
.method public addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 3

    .line 149
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    if-gez v0, :cond_0

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addActiveDcByCid dc.mCid < 0 dc="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method dispose()V
    .locals 3

    const-string v0, "dispose: call quiteNow()"

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->quitNow()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 492
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPhone="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter p1

    .line 495
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mDcListAll="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mDcListActiveByCid="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getActiveDcByCid(I)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    .line 479
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method isExecutingCarrierChange()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mExecutingCarrierChange:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v1, :cond_0

    const-string v1, "removeActiveDcByCid removedDc=null dc="

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 169
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 486
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDcListAll="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDcListActiveByCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 487
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
