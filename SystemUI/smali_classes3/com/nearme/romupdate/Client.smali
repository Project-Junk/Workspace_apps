.class public Lcom/nearme/romupdate/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/romupdate/Client$DebugCallback;,
        Lcom/nearme/romupdate/Client$CallBack;
    }
.end annotation


# static fields
.field public static final BUGLY_FILTERNAME:Ljava/lang/String; = "sys_bugly_logconfig_switch"

.field public static final DEBUGLOG_FILTERNAME:Ljava/lang/String; = "sys_debug_log_config"

.field private static final MSG_INIT_BUGLY:I = 0x66

.field private static final MSG_ISDEBUG:I = 0x65

.field public static TAG:Ljava/lang/String; = "com.nearme.romupdate--"

.field private static mIns:Lcom/nearme/romupdate/Client;


# instance fields
.field private buglyConn:Landroid/content/ServiceConnection;

.field private debugConn:Landroid/content/ServiceConnection;

.field private mBuglyCallBack:Lcom/nearme/romupdate/Client$CallBack;

.field private mBuglyPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDebugCallBack:Lcom/nearme/romupdate/Client$DebugCallback;

.field private mDebugPackageName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/nearme/romupdate/Client$1;

    invoke-direct {v0, p0}, Lcom/nearme/romupdate/Client$1;-><init>(Lcom/nearme/romupdate/Client;)V

    iput-object v0, p0, Lcom/nearme/romupdate/Client;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/nearme/romupdate/Client$2;

    invoke-direct {v0, p0}, Lcom/nearme/romupdate/Client$2;-><init>(Lcom/nearme/romupdate/Client;)V

    iput-object v0, p0, Lcom/nearme/romupdate/Client;->buglyConn:Landroid/content/ServiceConnection;

    .line 76
    new-instance v0, Lcom/nearme/romupdate/Client$3;

    invoke-direct {v0, p0}, Lcom/nearme/romupdate/Client$3;-><init>(Lcom/nearme/romupdate/Client;)V

    iput-object v0, p0, Lcom/nearme/romupdate/Client;->debugConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/nearme/romupdate/Client;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nearme/romupdate/Client;)Lcom/nearme/romupdate/Client$DebugCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->mDebugCallBack:Lcom/nearme/romupdate/Client$DebugCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/nearme/romupdate/Client;Lcom/nearme/romupdate/Client$DebugCallback;)Lcom/nearme/romupdate/Client$DebugCallback;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/nearme/romupdate/Client;->mDebugCallBack:Lcom/nearme/romupdate/Client$DebugCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nearme/romupdate/Client;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->mDebugPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/nearme/romupdate/Client;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/nearme/romupdate/Client;->mDebugPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nearme/romupdate/Client;)Landroid/content/ServiceConnection;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->debugConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$400(Lcom/nearme/romupdate/Client;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/nearme/romupdate/Client;->bindToService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nearme/romupdate/Client;)Lcom/nearme/romupdate/Client$CallBack;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->mBuglyCallBack:Lcom/nearme/romupdate/Client$CallBack;

    return-object p0
.end method

.method static synthetic access$502(Lcom/nearme/romupdate/Client;Lcom/nearme/romupdate/Client$CallBack;)Lcom/nearme/romupdate/Client$CallBack;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/nearme/romupdate/Client;->mBuglyCallBack:Lcom/nearme/romupdate/Client$CallBack;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nearme/romupdate/Client;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->mBuglyPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/nearme/romupdate/Client;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/nearme/romupdate/Client;->mBuglyPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nearme/romupdate/Client;)Landroid/content/ServiceConnection;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->buglyConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private bindToService(Landroid/content/ServiceConnection;)V
    .locals 2

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.com.nearme.romupdate.RomUpdateSwitchService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/nearme/romupdate/Client;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/nearme/romupdate/Client;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/nearme/romupdate/Client;
    .locals 2

    .line 102
    sget-object v0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/nearme/romupdate/Client;

    invoke-direct {v0}, Lcom/nearme/romupdate/Client;-><init>()V

    sput-object v0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    .line 104
    sget-object v0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/nearme/romupdate/Client;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.nearme.romupdate--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    .line 107
    :cond_0
    sget-object p0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    return-object p0
.end method

.method public static setBuglyCallBack(Landroid/content/Context;Lcom/nearme/romupdate/Client$CallBack;)V
    .locals 1

    const-string v0, ""

    .line 111
    invoke-static {p0, v0, p1}, Lcom/nearme/romupdate/Client;->setBuglyCallBack(Landroid/content/Context;Ljava/lang/String;Lcom/nearme/romupdate/Client$CallBack;)V

    return-void
.end method

.method public static setBuglyCallBack(Landroid/content/Context;Ljava/lang/String;Lcom/nearme/romupdate/Client$CallBack;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    .line 115
    invoke-static {p0}, Lcom/nearme/romupdate/Client;->getInstance(Landroid/content/Context;)Lcom/nearme/romupdate/Client;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    sget-object p0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    iput-object p1, p0, Lcom/nearme/romupdate/Client;->mBuglyPackageName:Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_2
    :goto_0
    sget-object p0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    iget-object p1, p0, Lcom/nearme/romupdate/Client;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nearme/romupdate/Client;->mBuglyPackageName:Ljava/lang/String;

    .line 123
    :goto_1
    sget-object p0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    iput-object p2, p0, Lcom/nearme/romupdate/Client;->mBuglyCallBack:Lcom/nearme/romupdate/Client$CallBack;

    .line 124
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public static setDebugCallBack(Landroid/content/Context;Lcom/nearme/romupdate/Client$DebugCallback;)V
    .locals 1

    const-string v0, ""

    .line 128
    invoke-static {p0, v0, p1}, Lcom/nearme/romupdate/Client;->setDebugCallBack(Landroid/content/Context;Ljava/lang/String;Lcom/nearme/romupdate/Client$DebugCallback;)V

    return-void
.end method

.method public static setDebugCallBack(Landroid/content/Context;Ljava/lang/String;Lcom/nearme/romupdate/Client$DebugCallback;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    .line 132
    invoke-static {p0}, Lcom/nearme/romupdate/Client;->getInstance(Landroid/content/Context;)Lcom/nearme/romupdate/Client;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    sget-object p0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    iput-object p1, p0, Lcom/nearme/romupdate/Client;->mDebugPackageName:Ljava/lang/String;

    goto :goto_1

    .line 136
    :cond_2
    :goto_0
    sget-object p0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    iget-object p1, p0, Lcom/nearme/romupdate/Client;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nearme/romupdate/Client;->mDebugPackageName:Ljava/lang/String;

    .line 140
    :goto_1
    sget-object p0, Lcom/nearme/romupdate/Client;->mIns:Lcom/nearme/romupdate/Client;

    iput-object p2, p0, Lcom/nearme/romupdate/Client;->mDebugCallBack:Lcom/nearme/romupdate/Client$DebugCallback;

    .line 141
    iget-object p0, p0, Lcom/nearme/romupdate/Client;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public static wrapIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 155
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 159
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 160
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 161
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
