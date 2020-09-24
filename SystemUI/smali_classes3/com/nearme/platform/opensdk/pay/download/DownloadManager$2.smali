.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;


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
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftBtnClicked()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$6(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)V

    .line 191
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$3(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->dismiss()V

    return-void
.end method

.method public rightBtnClicked()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    const-string v0, "\u63d2\u4ef6\u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {p0, v1, v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I

    move-result v0

    const-string v3, "\u63d2\u4ef6\u6b63\u5728\u4e0b\u8f7d"

    if-ne v1, v0, :cond_1

    .line 182
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-virtual {p0, v2, v3}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 183
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-static {v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$5(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 184
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    invoke-virtual {p0, v2, v3}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->chageState(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
