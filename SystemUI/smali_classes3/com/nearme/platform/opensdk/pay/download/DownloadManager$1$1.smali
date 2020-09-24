.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->updateDownloadProgress(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

.field private final synthetic val$currentSize:J

.field private final synthetic val$progress:J

.field private final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;JJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    iput-wide p2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$currentSize:J

    iput-wide p4, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$totalSize:J

    iput-wide p6, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$progress:J

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$currentSize:J

    const/4 v3, 0x2

    const-wide/32 v4, 0x100000

    invoke-static {v1, v2, v4, v5, v3}, Lcom/nearme/platform/opensdk/pay/download/util/FloatDivUtil;->div(JJI)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$totalSize:J

    invoke-static {v6, v7, v4, v5, v3}, Lcom/nearme/platform/opensdk/pay/download/util/FloatDivUtil;->div(JJI)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object v2

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$3(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setPercent(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object v0

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$3(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    move-result-object v0

    iget-wide v1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$1;->val$progress:J

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->setProgress(I)V

    return-void
.end method
