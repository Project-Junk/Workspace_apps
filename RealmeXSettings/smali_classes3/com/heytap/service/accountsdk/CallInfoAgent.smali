.class Lcom/heytap/service/accountsdk/CallInfoAgent;
.super Ljava/lang/Object;
.source "CallInfoAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;,
        Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;
    }
.end annotation


# static fields
.field protected static final REQ_CHECK_PWD:I = 0x3

.field protected static final REQ_DEFAULT:I = 0x0

.field protected static final REQ_SINGNIN:I = 0x2

.field protected static final REQ_SWITCH_ACCOUNT:I = 0x3

.field protected static final REQ_TOKEN:I = 0x1

.field private static currentHandler:Landroid/os/Handler;

.field private static myToken:Lcom/c/a/c;

.field private static myTokenByAppCode:Lcom/c/a/d;


# instance fields
.field private isLocked:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private myCallBack:Lcom/c/a/e$a;

.field private myConnection:Landroid/content/ServiceConnection;

.field private myNewConnection:Landroid/content/ServiceConnection;

.field private myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

.field private tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    const v0, 0x1869f

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->isLocked:Ljava/lang/Integer;

    .line 82
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$1;

    invoke-direct {v0, p0}, Lcom/heytap/service/accountsdk/CallInfoAgent$1;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    .line 348
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$2;

    invoke-direct {v0, p0}, Lcom/heytap/service/accountsdk/CallInfoAgent$2;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    .line 595
    new-instance v0, Lcom/heytap/service/accountsdk/CallInfoAgent$3;

    invoke-direct {v0, p0}, Lcom/heytap/service/accountsdk/CallInfoAgent$3;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;)V

    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/heytap/service/accountsdk/CallInfoAgent;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->isLocked:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200()Lcom/c/a/c;
    .locals 1

    .line 30
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    return-object v0
.end method

.method static synthetic access$202(Lcom/c/a/c;)Lcom/c/a/c;
    .locals 0

    .line 30
    sput-object p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 30
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 30
    sput-object p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400()Lcom/c/a/d;
    .locals 1

    .line 30
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    return-object v0
.end method

.method static synthetic access$402(Lcom/c/a/d;)Lcom/c/a/d;
    .locals 0

    .line 30
    sput-object p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    return-object p0
.end method

.method private bindNearMeService()V
    .locals 4

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/keys/UCServiceConstant;->getNearmeServiceAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 280
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->unbindNearMeService()V

    .line 281
    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 284
    :catch_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->unbindNearMeService()V

    .line 285
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    return-void
.end method

.method private getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "null"

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private myBindNearMeService()V
    .locals 4

    .line 504
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/keys/UCServiceConstant;->getNearmeAppcodeServiceAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 507
    :try_start_0
    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 512
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myUnbindNearMeService()V

    .line 513
    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 517
    :catch_1
    invoke-virtual {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myUnbindNearMeService()V

    .line 518
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    return-void
.end method

.method private sendCancelStatus()V
    .locals 5

    .line 115
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 116
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9c76c

    const-string v4, "Already canceled!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    sget-object v1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x0

    .line 121
    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendExceptionStatus()V
    .locals 5

    .line 141
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 142
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9c76e

    const-string v4, "Exception error!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x0

    .line 147
    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendOccupyStatus(Landroid/os/Handler;)V
    .locals 4

    .line 131
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 132
    new-instance v0, Lcom/c/a/f;

    const-string v1, ""

    const v2, 0x1c9c76d

    const-string v3, "Occupied error!"

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 p1, 0x0

    .line 137
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected callReqCheckPwd()Lcom/c/a/f;
    .locals 2

    .line 337
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    invoke-interface {v0, v1}, Lcom/c/a/c;->a(Lcom/c/a/e;)V

    .line 338
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/c/a/c;->c(Ljava/lang/String;)Lcom/c/a/f;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 340
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected callReqSignin()Lcom/c/a/f;
    .locals 2

    .line 327
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    invoke-interface {v0, v1}, Lcom/c/a/c;->a(Lcom/c/a/e;)V

    .line 328
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/c/a/c;->b(Ljava/lang/String;)Lcom/c/a/f;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 330
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected callReqSignin(Ljava/lang/String;)Lcom/c/a/f;
    .locals 2

    .line 573
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    invoke-interface {v0, v1}, Lcom/c/a/d;->a(Lcom/c/a/e;)V

    .line 574
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/c/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 576
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected callReqSwitchAccount(Ljava/lang/String;)Lcom/c/a/f;
    .locals 2

    .line 584
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    invoke-interface {v0, v1}, Lcom/c/a/d;->a(Lcom/c/a/e;)V

    .line 585
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/c/a/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 587
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected callReqToken()Lcom/c/a/f;
    .locals 2

    .line 317
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    invoke-interface {v0, v1}, Lcom/c/a/c;->a(Lcom/c/a/e;)V

    .line 318
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/c/a/c;->a(Ljava/lang/String;)Lcom/c/a/f;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 320
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected callReqToken(Ljava/lang/String;)Lcom/c/a/f;
    .locals 2

    .line 555
    :try_start_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    invoke-interface {v0, v1}, Lcom/c/a/d;->a(Lcom/c/a/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 558
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    :goto_0
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 565
    :catch_1
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public initHandler()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendCancelStatus()V

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-void
.end method

.method protected myUnbindNearMeService()V
    .locals 2

    .line 530
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenByAppCode:Lcom/c/a/d;

    if-eqz v0, :cond_0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    invoke-interface {v0, v1}, Lcom/c/a/d;->b(Lcom/c/a/e;)V

    .line 533
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 534
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->interrupt()V

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 538
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    :cond_0
    return-void
.end method

.method protected reqCheckPwd(Landroid/os/Handler;)V
    .locals 1

    .line 197
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 198
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 199
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->bindNearMeService()V

    .line 200
    new-instance p1, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;I)V

    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    .line 201
    iget-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    invoke-virtual {p1}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->start()V

    return-void

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    return-void
.end method

.method protected reqReSignin(Landroid/os/Handler;)V
    .locals 1

    .line 181
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 182
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 183
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->bindNearMeService()V

    .line 184
    new-instance p1, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;I)V

    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    .line 185
    iget-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    invoke-virtual {p1}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->start()V

    return-void

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    return-void
.end method

.method protected reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 396
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 397
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 398
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myBindNearMeService()V

    .line 399
    new-instance p1, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    .line 400
    iget-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    invoke-virtual {p1}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->start()V

    return-void

    .line 402
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    return-void
.end method

.method protected reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 413
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 414
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 415
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myBindNearMeService()V

    .line 416
    new-instance p1, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    .line 417
    iget-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    invoke-virtual {p1}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->start()V

    return-void

    .line 419
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    return-void
.end method

.method protected reqToken(Landroid/os/Handler;)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentHandler="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reqToken"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 166
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 167
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->bindNearMeService()V

    .line 168
    new-instance p1, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;I)V

    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    .line 169
    iget-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    invoke-virtual {p1}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->start()V

    return-void

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    return-void
.end method

.method protected reqToken(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 379
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 380
    sput-object p1, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 381
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myBindNearMeService()V

    .line 382
    new-instance p1, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;-><init>(Lcom/heytap/service/accountsdk/CallInfoAgent;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    .line 383
    iget-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myTokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;

    invoke-virtual {p1}, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->start()V

    return-void

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    return-void
.end method

.method public resetHandler()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-void
.end method

.method public unbindNearMeService()V
    .locals 2

    .line 296
    sget-object v0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myToken:Lcom/c/a/c;

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myCallBack:Lcom/c/a/e$a;

    invoke-interface {v0, v1}, Lcom/c/a/c;->b(Lcom/c/a/e;)V

    .line 299
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 301
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->interrupt()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent;->tokenThread:Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 304
    :catch_0
    invoke-direct {p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->sendExceptionStatus()V

    :cond_0
    return-void
.end method
