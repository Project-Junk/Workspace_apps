.class Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->downloadSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

.field private final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;->val$filePath:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object v0

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$3(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;->dismiss()V

    .line 154
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;->val$filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 157
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1$2;->this$1:Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;->access$0(Lcom/nearme/platform/opensdk/pay/download/DownloadManager$1;)Lcom/nearme/platform/opensdk/pay/download/DownloadManager;

    move-result-object p0

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/DownloadManager;->access$4(Lcom/nearme/platform/opensdk/pay/download/DownloadManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
