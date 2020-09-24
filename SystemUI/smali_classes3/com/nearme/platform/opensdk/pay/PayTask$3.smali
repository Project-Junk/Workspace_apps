.class Lcom/nearme/platform/opensdk/pay/PayTask$3;
.super Ljava/lang/Object;
.source "PayTask.java"

# interfaces
.implements Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

.field private final synthetic val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/PayTask$3;)Lcom/nearme/platform/opensdk/pay/PayTask;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    return-object p0
.end method


# virtual methods
.method public leftBtnClicked()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 276
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v0, 0x273c

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    return-void
.end method

.method public rightBtnClicked()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 239
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v1, "com.oppo.market"

    invoke-static {v0, v1}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1004

    if-le v0, v2, :cond_0

    .line 240
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v0, "com.nearme.atlas"

    invoke-static {p0, v0, v1}, Lcom/nearme/platform/opensdk/pay/download/util/MarketDownloadHelper;->jumpMarketItemDetail(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/Utils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5f53\u524d\u4e3a\u6570\u636e\u7f51\u7edc\uff0c\u4e0b\u8f7d\u5c06\u6d88\u8017\u624b\u673a\u6d41\u91cf\uff0c\u786e\u5b9a\u4e0b\u8f7d\u5417\uff1f"

    .line 246
    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setHint(Ljava/lang/String;)V

    const-string v1, "\u53d6\u6d88"

    .line 247
    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setLeftBtnText(Ljava/lang/String;)V

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    .line 248
    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setRightBtnText(Ljava/lang/String;)V

    .line 249
    new-instance v1, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;

    invoke-direct {v1, p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask$3$1;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask$3;Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V

    invoke-virtual {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->setBottomBtnClickedListener(Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;)V

    .line 263
    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->show()V

    goto :goto_0

    .line 265
    :cond_1
    new-instance v0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v1, v1, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->start()V

    .line 266
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v0, 0x2738

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$3;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u6d4b\u7f51\u7edc"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
