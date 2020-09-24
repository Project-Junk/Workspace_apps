.class public Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static final GET_URL:Ljava/lang/String; = "https://nativepay.keke.cn/plugin/post/getappdownloadurl"

.field public static final STATE_CANCELED:I = 0x5

.field public static final STATE_ERROR:I = 0x3

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_SUCESSED:I = 0x4


# instance fields
.field private mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDownloadTask:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;

.field private mDownloadUrl:Ljava/lang/String;

.field private mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:J

.field private mState:I

.field private mUpdateDownloadInfo:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadUrl:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mUpdateDownloadInfo:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    .line 175
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    .line 57
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-direct {v0, p1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    .line 59
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    invoke-virtual {p1, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 60
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    .line 61
    iput-wide v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mLastProgress:J

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mLastProgress:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mLastProgress:J

    return-void
.end method

.method static synthetic access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    return-object p0
.end method

.method static synthetic access$4(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I

    return p0
.end method

.method static synthetic access$6(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->cancel()V

    return-void
.end method

.method static synthetic access$7(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method private cancel()V
    .locals 2

    const/4 v0, 0x5

    .line 117
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I

    .line 118
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadTask:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->stopDownload()V

    :cond_0
    const-wide/16 v0, -0x1

    .line 121
    iput-wide v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mLastProgress:J

    return-void
.end method

.method private getDownloadUrl()V
    .locals 1

    .line 196
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;

    invoke-direct {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V

    .line 261
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->start()V

    return-void
.end method

.method private pause()V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadTask:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->pause()V

    :cond_0
    return-void
.end method

.method private startDownlad()V
    .locals 4

    .line 106
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mUpdateDownloadInfo:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;-><init>(Landroid/content/Context;Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadTask:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;

    .line 107
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadTask:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public chageState(ILjava/lang/String;)V
    .locals 3

    .line 70
    iput p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I

    .line 71
    iget p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mState:I

    const/4 p2, 0x1

    const v0, -0xc9c9ca

    const-string v1, "\u53d6\u6d88 "

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    const-string v2, "\u7ee7\u7eed\u4e0b\u8f7d"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-virtual {p1, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setLeftBtnText(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-virtual {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    const-string p2, "\u63d2\u4ef6\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {p1, p2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setState(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    const p2, -0x20a2a3

    invoke-virtual {p1, p2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setStateTextColor(I)V

    .line 96
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->pause()V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-virtual {p1, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setLeftBtnText(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-virtual {p1, v2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    const-string p2, "\u63d2\u4ef6\u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {p1, p2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setState(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-virtual {p1, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setStateTextColor(I)V

    .line 89
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->pause()V

    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-virtual {p1, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setLeftBtnText(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    const-string p2, "\u6682\u505c"

    invoke-virtual {p1, p2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    const-string p2, "\u63d2\u4ef6\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {p1, p2}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setState(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-virtual {p1, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setStateTextColor(I)V

    .line 77
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->getDownloadUrl()V

    goto :goto_0

    .line 80
    :cond_3
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->startDownlad()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, ""

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->mDownloadingInfoDialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->show()V

    return-void
.end method
