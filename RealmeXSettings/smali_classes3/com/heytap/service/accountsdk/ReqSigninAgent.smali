.class public Lcom/heytap/service/accountsdk/ReqSigninAgent;
.super Ljava/lang/Object;
.source "ReqSigninAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;,
        Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;
    }
.end annotation


# static fields
.field private static askSignin:Lcom/c/a/a;

.field private static askSigninByAppCode:Lcom/c/a/b;


# instance fields
.field private isLocked:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mTokenHandler:Landroid/os/Handler;

.field private myConnection:Landroid/content/ServiceConnection;

.field private myNewConnection:Landroid/content/ServiceConnection;

.field private myReqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;

.field private reqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    const v0, 0x1869f

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->isLocked:Ljava/lang/Integer;

    .line 244
    new-instance v0, Lcom/heytap/service/accountsdk/ReqSigninAgent$1;

    invoke-direct {v0, p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent$1;-><init>(Lcom/heytap/service/accountsdk/ReqSigninAgent;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myConnection:Landroid/content/ServiceConnection;

    .line 415
    new-instance v0, Lcom/heytap/service/accountsdk/ReqSigninAgent$2;

    invoke-direct {v0, p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent$2;-><init>(Lcom/heytap/service/accountsdk/ReqSigninAgent;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myNewConnection:Landroid/content/ServiceConnection;

    .line 35
    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->isLocked:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$100()Lcom/c/a/a;
    .locals 1

    .line 23
    sget-object v0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->askSignin:Lcom/c/a/a;

    return-object v0
.end method

.method static synthetic access$102(Lcom/c/a/a;)Lcom/c/a/a;
    .locals 0

    .line 23
    sput-object p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->askSignin:Lcom/c/a/a;

    return-object p0
.end method

.method static synthetic access$200(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/heytap/service/accountsdk/ReqSigninAgent;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300()Lcom/c/a/b;
    .locals 1

    .line 23
    sget-object v0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->askSigninByAppCode:Lcom/c/a/b;

    return-object v0
.end method

.method static synthetic access$302(Lcom/c/a/b;)Lcom/c/a/b;
    .locals 0

    .line 23
    sput-object p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->askSigninByAppCode:Lcom/c/a/b;

    return-object p0
.end method

.method private bindNearMeService()V
    .locals 4

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nearme.server.nearmeservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 196
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->unbindNearMeService()V

    .line 197
    iget-object v2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 202
    :catch_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->unbindNearMeService()V

    .line 203
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendExceptionStatus()V

    return-void
.end method

.method private hasServicePackage(Landroid/content/Context;)Z
    .locals 3

    .line 80
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x2000

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method private myBindNearMeService()V
    .locals 4

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nearme.server.nearmeservicebyappcode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 365
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myUnbindNearMeService()V

    .line 366
    iget-object v2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 372
    :catch_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myUnbindNearMeService()V

    .line 373
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendExceptionStatus()V

    return-void
.end method

.method private reqToken(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/AccountService;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance p2, Lcom/c/a/f;

    invoke-direct {p2}, Lcom/c/a/f;-><init>()V

    const p3, 0x1c9c76e

    .line 1061
    iput p3, p2, Lcom/c/a/f;->a:I

    .line 110
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    .line 111
    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendNoAPKStatus()V

    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 122
    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    .line 124
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->bindNearMeService()V

    .line 125
    new-instance p1, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;-><init>(Lcom/heytap/service/accountsdk/ReqSigninAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->reqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;

    .line 126
    iget-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->reqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;

    invoke-virtual {p1}, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->start()V

    return-void

    .line 128
    :cond_2
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    return-void
.end method

.method private sendCancelStatus()V
    .locals 5

    .line 48
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 49
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9c76d

    const-string v4, "Already canceled!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendExceptionStatus()V
    .locals 5

    .line 64
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 65
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9c76e

    const-string v4, "Exception error!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendNoAPKStatus()V
    .locals 5

    .line 72
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 73
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9c76f

    const-string v4, "No service APK!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendOccupyStatus(Landroid/os/Handler;)V
    .locals 5

    .line 57
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 58
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9c76d

    const-string v4, "Occupied error!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected callReqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;
    .locals 6

    .line 233
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->askSignin:Lcom/c/a/a;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 236
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendExceptionStatus()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected callReqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;
    .locals 7

    .line 403
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->askSigninByAppCode:Lcom/c/a/b;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/c/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 407
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendExceptionStatus()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public initHandler()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendCancelStatus()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    return-void
.end method

.method protected myUnbindNearMeService()V
    .locals 2

    .line 384
    sget-object v0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->askSigninByAppCode:Lcom/c/a/b;

    if-eqz v0, :cond_0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 387
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myReqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->interrupt()V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myReqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public reqToken(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 279
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendNoAPKStatus()V

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 286
    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    .line 288
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myBindNearMeService()V

    .line 289
    new-instance p1, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;-><init>(Lcom/heytap/service/accountsdk/ReqSigninAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myReqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;

    .line 291
    iget-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myReqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;

    invoke-virtual {p1}, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->start()V

    return-void

    .line 293
    :cond_1
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    return-void

    .line 297
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->reqToken(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected unbindNearMeService()V
    .locals 2

    .line 214
    sget-object v0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->askSignin:Lcom/c/a/a;

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 218
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->reqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->interrupt()V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent;->reqThread:Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
