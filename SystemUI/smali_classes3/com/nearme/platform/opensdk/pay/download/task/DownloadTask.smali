.class public Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACK_SIZE:I = 0x400

.field public static final COMPLETE:I = 0x2

.field public static final DOWNLOADING:I = 0x0

.field public static final DOWNLOAD_RECOVER:I = 0x3

.field public static final MSG_WHAT_UPDATE_PROGRESS:I = 0x6a11e3d

.field public static final NOTIFY_UPGRADE:I = 0x271b

.field public static final PAUSE:I = 0x1


# instance fields
.field bStop:Z

.field public doingRequest:Z

.field private downSize:J

.field private fileSize:J

.field private mContext:Landroid/content/Context;

.field public mDownladStatus:I

.field mDownloadUrl:Ljava/lang/String;

.field private mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

.field progress:J

.field retryTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;Ljava/lang/String;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const-string v1, ""

    .line 30
    iput-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownloadUrl:Ljava/lang/String;

    .line 31
    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    const-wide/16 v1, 0x0

    .line 34
    iput-wide v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    .line 35
    iput-wide v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 39
    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    .line 41
    iput-wide v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    .line 44
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    .line 46
    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    .line 47
    iput-object p3, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownloadUrl:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadProgress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 51
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    :cond_0
    return-void
.end method

.method private setDownLoadData()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadProgress(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method doDownFail()V
    .locals 4

    .line 212
    iget-wide v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    iget-wide v2, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 213
    iput v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 214
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->setDownLoadData()V

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    :cond_0
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 26

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-boolean v2, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    .line 58
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v5, v10, v7

    if-lez v5, :cond_3

    .line 65
    iget-object v5, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 67
    iget-object v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    :cond_1
    if-ne v5, v6, :cond_2

    .line 70
    iput v6, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 71
    iget-object v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 72
    iget-object v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadFileSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    .line 73
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 74
    iget-wide v12, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    iget-wide v14, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    cmp-long v16, v12, v14

    if-nez v16, :cond_2

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    cmp-long v10, v14, v7

    if-lez v10, :cond_2

    .line 75
    iput-boolean v9, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    return-object v3

    :cond_2
    if-ne v5, v2, :cond_4

    .line 82
    iput v2, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 83
    iget-object v5, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    goto :goto_0

    .line 86
    :cond_3
    iget-object v5, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadFileSize(Landroid/content/Context;)V

    .line 87
    iget-object v5, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadProgress(Landroid/content/Context;)V

    .line 88
    iget-object v5, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadStatus(Landroid/content/Context;)V

    .line 90
    :cond_4
    :goto_0
    iget-object v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    iget-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    iget-wide v13, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    move-object v5, v3

    iget-wide v2, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    move-wide v15, v2

    invoke-interface/range {v10 .. v16}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;->updateDownloadProgress(JJJ)V

    .line 92
    iget-wide v2, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    const-wide/16 v10, 0x400

    sub-long v12, v2, v10

    cmp-long v12, v12, v7

    if-lez v12, :cond_5

    sub-long/2addr v2, v10

    goto :goto_1

    :cond_5
    move-wide v2, v7

    :goto_1
    iput-wide v2, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    const/4 v2, 0x0

    .line 96
    :goto_2
    iget-boolean v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    if-eqz v3, :cond_6

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    .line 208
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 98
    :cond_6
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    invoke-direct {v10, v4, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    iget-object v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/nearme/platform/opensdk/pay/download/util/http/MyHttpClient;->getUrlConnecttion(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    const/16 v11, 0x7530

    .line 100
    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 101
    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v11, "GET"

    .line 102
    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_44
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_41
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x1

    .line 103
    :try_start_1
    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 104
    iput-boolean v9, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doingRequest:Z

    .line 106
    iget v12, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3c
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3b
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_39
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, "RANGE"

    const/4 v14, -0x1

    if-eq v12, v11, :cond_7

    :try_start_2
    iget v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    if-eq v11, v6, :cond_7

    iget v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    if-nez v11, :cond_8

    :cond_7
    iget-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    cmp-long v11, v11, v7

    if-lez v11, :cond_8

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bytes="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_44
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_41
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v4

    :try_start_3
    iget-wide v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v2, v13, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 110
    iget-object v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->getDownloadFileSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    goto/16 :goto_f

    :cond_8
    move-object v12, v4

    const-string v3, "bytes=0-"

    .line 113
    invoke-virtual {v2, v13, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 115
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    if-lez v3, :cond_9

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    .line 117
    iget-object v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_38
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_37
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_35
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-wide v6, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadFileSize(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :cond_9
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_34
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_33
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_31
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v3, v14, :cond_b

    .line 120
    :try_start_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_a

    .line 199
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_a
    return-object v1

    :catch_1
    move-exception v0

    move-object v6, v2

    move-object/from16 v17, v12

    :goto_3
    const/4 v3, 0x2

    :goto_4
    const/4 v4, 0x1

    :goto_5
    const-wide/16 v8, 0x0

    goto/16 :goto_27

    :catch_2
    move-exception v0

    move-object v6, v2

    move-object/from16 v17, v12

    :goto_6
    const/4 v3, 0x2

    :goto_7
    const/4 v4, 0x1

    :goto_8
    const-wide/16 v8, 0x0

    goto/16 :goto_2a

    :catch_3
    move-exception v0

    move-object v6, v2

    move-object/from16 v17, v12

    :goto_9
    const/4 v3, 0x2

    :goto_a
    const/4 v4, 0x1

    :goto_b
    const-wide/16 v8, 0x0

    goto/16 :goto_2d

    :catch_4
    move-exception v0

    move-object v6, v2

    move-object/from16 v17, v12

    :goto_c
    const/4 v3, 0x2

    :goto_d
    const/4 v4, 0x1

    :goto_e
    const-wide/16 v8, 0x0

    goto/16 :goto_31

    .line 123
    :cond_b
    :goto_f
    :try_start_8
    iget-wide v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    iget-wide v6, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_34
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_33
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_31
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    cmp-long v3, v3, v6

    if-nez v3, :cond_d

    :try_start_9
    iget-wide v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_d

    const/4 v3, 0x2

    .line 124
    :try_start_a
    iput v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_c

    .line 199
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    :cond_c
    return-object v5

    :catch_6
    move-exception v0

    move-object v6, v2

    move-object/from16 v17, v12

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v6, v2

    move-object/from16 v17, v12

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v6, v2

    move-object/from16 v17, v12

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v6, v2

    move-object/from16 v17, v12

    goto :goto_d

    .line 128
    :cond_d
    :try_start_c
    iget-wide v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-virtual {v10, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x4000

    .line 130
    new-array v4, v4, [B

    .line 133
    iget-boolean v6, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_34
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_33
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_31
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v6, :cond_12

    .line 134
    :try_start_d
    iput v9, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 135
    iget-object v6, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V

    move v6, v9

    const-wide/16 v7, 0x0

    .line 136
    :goto_10
    iget-object v13, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    if-eqz v13, :cond_11

    iget-boolean v13, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    if-nez v13, :cond_11

    if-ne v6, v14, :cond_e

    goto/16 :goto_12

    .line 137
    :cond_e
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v14, :cond_10

    .line 138
    iget-boolean v13, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    if-nez v13, :cond_10

    .line 139
    invoke-virtual {v10, v4, v9, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_18
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_16
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v17, v12

    .line 140
    :try_start_e
    iget-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    int-to-long v13, v6

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 141
    iget-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    sub-long/2addr v11, v7

    const-wide/32 v13, 0xf000

    cmp-long v11, v11, v13

    if-lez v11, :cond_f

    .line 142
    iget-object v7, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    iget-wide v7, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    .line 144
    iget-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    const-wide/16 v13, 0x64

    mul-long/2addr v11, v13

    iget-wide v13, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    div-long/2addr v11, v13

    iput-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    .line 145
    iget-object v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadProgress(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    iget-object v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    iget-wide v12, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    move-object/from16 v25, v10

    iget-wide v9, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    iget-wide v14, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->progress:J

    move-object/from16 v18, v11

    move-wide/from16 v19, v12

    move-wide/from16 v21, v9

    move-wide/from16 v23, v14

    invoke-interface/range {v18 .. v24}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;->updateDownloadProgress(JJJ)V
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v9, 0x1

    .line 147
    :try_start_f
    new-array v10, v9, [Ljava/lang/Long;
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-wide v11, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v1, v10}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_11

    :catch_a
    move-exception v0

    move-object v6, v2

    move v4, v9

    goto/16 :goto_18

    :catch_b
    move-exception v0

    move-object v6, v2

    move v4, v9

    goto/16 :goto_19

    :catch_c
    move-exception v0

    move-object v6, v2

    move v4, v9

    goto/16 :goto_1a

    :catch_d
    move-exception v0

    move-object v6, v2

    move v4, v9

    goto/16 :goto_1b

    :cond_f
    move-object/from16 v25, v10

    goto :goto_11

    :catch_e
    move-exception v0

    goto :goto_13

    :catch_f
    move-exception v0

    goto :goto_14

    :catch_10
    move-exception v0

    goto :goto_15

    :catch_11
    move-exception v0

    goto :goto_16

    :cond_10
    move-object/from16 v25, v10

    move-object/from16 v17, v12

    :goto_11
    move-object/from16 v12, v17

    move-object/from16 v10, v25

    const/4 v9, 0x0

    const/4 v14, -0x1

    goto/16 :goto_10

    :cond_11
    :goto_12
    move-object/from16 v17, v12

    const/4 v3, 0x1

    .line 151
    :try_start_11
    iput v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_17

    :catch_12
    move-exception v0

    move-object v6, v2

    move v4, v3

    goto :goto_18

    :catch_13
    move-exception v0

    move-object v6, v2

    move v4, v3

    goto :goto_19

    :catch_14
    move-exception v0

    move-object v6, v2

    move v4, v3

    goto :goto_1a

    :catch_15
    move-exception v0

    move-object v6, v2

    move v4, v3

    goto :goto_1b

    :catch_16
    move-exception v0

    move-object/from16 v17, v12

    :goto_13
    move-object v6, v2

    goto/16 :goto_3

    :catch_17
    move-exception v0

    move-object/from16 v17, v12

    :goto_14
    move-object v6, v2

    goto/16 :goto_6

    :catch_18
    move-exception v0

    move-object/from16 v17, v12

    :goto_15
    move-object v6, v2

    goto/16 :goto_9

    :catch_19
    move-exception v0

    move-object/from16 v17, v12

    :goto_16
    move-object v6, v2

    goto/16 :goto_c

    :cond_12
    move-object/from16 v17, v12

    .line 154
    :goto_17
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->setDownLoadData()V

    .line 157
    iget v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_30
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_2f
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2d
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    :try_start_13
    iget-boolean v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z
    :try_end_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v3, :cond_14

    if-eqz v2, :cond_13

    .line 199
    :try_start_14
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1a

    :catch_1a
    :cond_13
    return-object v5

    :catch_1b
    move-exception v0

    move-object v6, v2

    :goto_18
    const/4 v3, 0x2

    goto/16 :goto_5

    :catch_1c
    move-exception v0

    move-object v6, v2

    :goto_19
    const/4 v3, 0x2

    goto/16 :goto_8

    :catch_1d
    move-exception v0

    move-object v6, v2

    :goto_1a
    const/4 v3, 0x2

    goto/16 :goto_b

    :catch_1e
    move-exception v0

    move-object v6, v2

    :goto_1b
    const/4 v3, 0x2

    goto/16 :goto_e

    .line 162
    :cond_14
    :try_start_15
    iget-wide v6, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    iget-wide v8, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_17

    iget-wide v6, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->fileSize:J
    :try_end_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_2c
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_15} :catch_2b
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_15} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_29
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_16

    .line 164
    :try_start_16
    iget-object v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->downSize:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadSize(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_23
    .catch Ljava/net/SocketException; {:try_start_16 .. :try_end_16} :catch_22
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_16} :catch_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_20
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    const/4 v3, 0x2

    .line 165
    :try_start_17
    iput v3, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    .line 166
    iget-object v6, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->setDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_28
    .catch Ljava/net/SocketException; {:try_start_17 .. :try_end_17} :catch_27
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_17} :catch_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_25
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v2, :cond_15

    .line 199
    :try_start_18
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1f

    :catch_1f
    :cond_15
    return-object v5

    :catch_20
    move-exception v0

    const/4 v3, 0x2

    goto/16 :goto_26

    :catch_21
    move-exception v0

    const/4 v3, 0x2

    goto/16 :goto_29

    :catch_22
    move-exception v0

    const/4 v3, 0x2

    goto/16 :goto_2c

    :catch_23
    move-exception v0

    const/4 v3, 0x2

    goto/16 :goto_30

    :cond_16
    const/4 v3, 0x2

    goto :goto_1c

    :cond_17
    const/4 v3, 0x2

    const-wide/16 v8, 0x0

    :goto_1c
    const/4 v6, 0x0

    .line 170
    :try_start_19
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_19 .. :try_end_19} :catch_28
    .catch Ljava/net/SocketException; {:try_start_19 .. :try_end_19} :catch_27
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_19} :catch_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_25
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v2, :cond_18

    .line 199
    :try_start_1a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_24

    :catch_24
    :cond_18
    return-object v1

    :catch_25
    move-exception v0

    goto/16 :goto_26

    :catch_26
    move-exception v0

    goto/16 :goto_29

    :catch_27
    move-exception v0

    goto/16 :goto_2c

    :catch_28
    move-exception v0

    goto/16 :goto_30

    :catch_29
    move-exception v0

    const/4 v3, 0x2

    goto :goto_1e

    :catch_2a
    move-exception v0

    const/4 v3, 0x2

    goto :goto_20

    :catch_2b
    move-exception v0

    const/4 v3, 0x2

    goto :goto_22

    :catch_2c
    move-exception v0

    const/4 v3, 0x2

    goto :goto_24

    :catch_2d
    move-exception v0

    goto :goto_1d

    :catch_2e
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_21

    :catch_30
    move-exception v0

    goto :goto_23

    :catch_31
    move-exception v0

    move-object/from16 v17, v12

    :goto_1d
    const/4 v3, 0x2

    const/4 v4, 0x1

    :goto_1e
    const-wide/16 v8, 0x0

    goto/16 :goto_26

    :catch_32
    move-exception v0

    move-object/from16 v17, v12

    :goto_1f
    const/4 v3, 0x2

    const/4 v4, 0x1

    :goto_20
    const-wide/16 v8, 0x0

    goto/16 :goto_29

    :catch_33
    move-exception v0

    move-object/from16 v17, v12

    :goto_21
    const/4 v3, 0x2

    const/4 v4, 0x1

    :goto_22
    const-wide/16 v8, 0x0

    goto/16 :goto_2c

    :catch_34
    move-exception v0

    move-object/from16 v17, v12

    :goto_23
    const/4 v3, 0x2

    const/4 v4, 0x1

    :goto_24
    const-wide/16 v8, 0x0

    goto/16 :goto_30

    :catch_35
    move-exception v0

    move v3, v6

    move-wide v8, v7

    move-object/from16 v17, v12

    goto :goto_25

    :catch_36
    move-exception v0

    move v3, v6

    move-wide v8, v7

    move-object/from16 v17, v12

    goto/16 :goto_28

    :catch_37
    move-exception v0

    move v3, v6

    move-wide v8, v7

    move-object/from16 v17, v12

    goto/16 :goto_2b

    :catch_38
    move-exception v0

    move v3, v6

    move-wide v8, v7

    move-object/from16 v17, v12

    goto/16 :goto_2f

    :catch_39
    move-exception v0

    move-object/from16 v17, v4

    move v3, v6

    move-wide v8, v7

    move v4, v11

    goto :goto_26

    :catch_3a
    move-exception v0

    move-object/from16 v17, v4

    move v3, v6

    move-wide v8, v7

    move v4, v11

    goto :goto_29

    :catch_3b
    move-exception v0

    move-object/from16 v17, v4

    move v3, v6

    move-wide v8, v7

    move v4, v11

    goto/16 :goto_2c

    :catch_3c
    move-exception v0

    move-object/from16 v17, v4

    move v3, v6

    move-wide v8, v7

    move v4, v11

    goto/16 :goto_30

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_33

    :catch_3d
    move-exception v0

    move-object/from16 v17, v4

    move v3, v6

    move-wide v8, v7

    :goto_25
    const/4 v4, 0x1

    :goto_26
    move-object v6, v2

    :goto_27
    move-object v2, v0

    .line 190
    :try_start_1b
    iget v7, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const/16 v10, 0x1e

    if-le v7, v10, :cond_1a

    .line 191
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    const/4 v1, 0x0

    .line 193
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    if-eqz v6, :cond_19

    .line 199
    :try_start_1c
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3e

    :catch_3e
    :cond_19
    return-object v1

    :cond_1a
    if-eqz v6, :cond_1f

    .line 199
    :try_start_1d
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_43

    goto/16 :goto_2e

    :catch_3f
    move-exception v0

    move-object/from16 v17, v4

    move v3, v6

    move-wide v8, v7

    :goto_28
    const/4 v4, 0x1

    :goto_29
    move-object v6, v2

    :goto_2a
    move-object v2, v0

    .line 184
    :try_start_1e
    iget v7, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const/16 v10, 0x1e

    if-le v7, v10, :cond_1c

    .line 185
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    const/4 v1, 0x0

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    if-eqz v6, :cond_1b

    .line 199
    :try_start_1f
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_40

    :catch_40
    :cond_1b
    return-object v1

    :cond_1c
    if-eqz v6, :cond_1f

    .line 199
    :try_start_20
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_43

    goto :goto_2e

    :catch_41
    move-exception v0

    move-object/from16 v17, v4

    move v3, v6

    move-wide v8, v7

    :goto_2b
    const/4 v4, 0x1

    :goto_2c
    move-object v6, v2

    :goto_2d
    move-object v2, v0

    .line 178
    :try_start_21
    iget v7, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const/16 v10, 0x1e

    if-le v7, v10, :cond_1e

    .line 179
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    const/4 v1, 0x0

    .line 181
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    if-eqz v6, :cond_1d

    .line 199
    :try_start_22
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_42

    :catch_42
    :cond_1d
    return-object v1

    :cond_1e
    if-eqz v6, :cond_1f

    .line 199
    :try_start_23
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 200
    :goto_2e
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_43

    :catch_43
    :cond_1f
    move-object v2, v6

    move-wide v7, v8

    move-object/from16 v4, v17

    const/4 v9, 0x0

    goto :goto_32

    :catch_44
    move-exception v0

    move-object/from16 v17, v4

    move v3, v6

    move-wide v8, v7

    :goto_2f
    const/4 v4, 0x1

    :goto_30
    move-object v6, v2

    :goto_31
    move-object v2, v0

    .line 172
    :try_start_24
    iget v7, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v1, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->retryTime:I

    const/16 v10, 0x1e

    if-le v7, v10, :cond_21

    .line 173
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doDownFail()V

    const/4 v2, 0x0

    .line 175
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    if-eqz v6, :cond_20

    .line 199
    :try_start_25
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_45

    :catch_45
    :cond_20
    return-object v1

    :cond_21
    const/4 v2, 0x0

    if-eqz v6, :cond_22

    .line 199
    :try_start_26
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_46

    :catch_46
    :cond_22
    move-wide v7, v8

    move-object/from16 v4, v17

    move v9, v2

    move-object v2, v6

    :goto_32
    move v6, v3

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    :goto_33
    if-eqz v2, :cond_23

    .line 199
    :try_start_27
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_47

    .line 204
    :catch_47
    :cond_23
    throw v1
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 2

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    .line 260
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadFileSize(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadProgress(Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadStatus(Landroid/content/Context;)V

    .line 267
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mDownladStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadFileSize(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadProgress(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadStatus(Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;->downloadSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mListener:Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;

    invoke-interface {v0}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;->downloadFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :catch_0
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 0

    .line 272
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    return-void
.end method

.method public stopDownload()V
    .locals 2

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->bStop:Z

    .line 244
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadFileSize(Landroid/content/Context;)V

    .line 249
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadProgress(Landroid/content/Context;)V

    .line 250
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->removeDownloadStatus(Landroid/content/Context;)V

    return-void
.end method
