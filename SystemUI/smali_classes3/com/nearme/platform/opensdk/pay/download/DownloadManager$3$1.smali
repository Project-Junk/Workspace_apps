.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;

.field private final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;->val$string:Ljava/lang/String;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;->val$string:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;->val$string:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$7(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3$1;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$3;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object p0

    const/4 v0, 0x3

    const-string v1, "\u63d2\u4ef6\u4e0b\u8f7d\u5931\u8d25\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {p0, v0, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
