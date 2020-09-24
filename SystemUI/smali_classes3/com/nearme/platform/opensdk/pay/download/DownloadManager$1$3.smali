.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->downloadFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$3;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$3;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object p0

    const/4 v0, 0x3

    const-string v1, "\u63d2\u4ef6\u4e0b\u8f7d\u5931\u8d25\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {p0, v0, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    return-void
.end method
