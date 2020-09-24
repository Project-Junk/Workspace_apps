.class Lcom/nearme/platform/opensdk/pay/PayTask$2;
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
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$2;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask$2;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftBtnClicked()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$2;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 221
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$2;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v0, 0x273a

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    return-void
.end method

.method public rightBtnClicked()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$2;->val$dialog:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->dimiss()V

    .line 204
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$2;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$0(Lcom/nearme/platform/opensdk/pay/PayTask;)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$2;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    :goto_0
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$2;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v0, 0x2738

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->access$1(Lcom/nearme/platform/opensdk/pay/PayTask;I)V

    return-void
.end method
