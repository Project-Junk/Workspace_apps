.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    return-object p0
.end method


# virtual methods
.method public downloadFail()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$3;

    invoke-direct {v1, p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$3;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public downloadSuccess(Ljava/lang/String;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;

    invoke-direct {v1, p0, p1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateDownloadProgress(JJJ)V
    .locals 10

    move-object v1, p0

    move-wide v6, p5

    .line 129
    iget-object v0, v1, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, v1, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0, v6, v7}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$1(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;J)V

    .line 133
    iget-object v0, v1, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$2(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;-><init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;JJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
