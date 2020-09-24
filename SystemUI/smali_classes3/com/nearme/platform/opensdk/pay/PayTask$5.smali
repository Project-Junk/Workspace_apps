.class Lcom/nearme/platform/opensdk/pay/PayTask$5;
.super Landroid/content/BroadcastReceiver;
.source "PayTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/PayTask;->isAlipayContractSigned(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

.field private final synthetic val$taskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->val$taskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    .line 571
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 576
    :try_start_0
    iget-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object p1, p1, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "response"

    .line 577
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-static {p1}, Lcom/nearme/platform/opensdk/pay/PayResponse;->parse(Ljava/lang/String;)Lcom/nearme/platform/opensdk/pay/PayResponse;

    move-result-object p1

    if-nez p1, :cond_0

    .line 580
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->val$taskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    const/16 p1, 0x7d2

    const-string p2, "\u7ed3\u679c\u672a\u77e5"

    invoke-interface {p0, p1, p2}, Lcom/nearme/platform/opensdk/pay/IPayTaskResult;->onTaskResult(ILjava/lang/String;)V

    return-void

    .line 583
    :cond_0
    iget-object p0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->val$taskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    iget p2, p1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    iget-object p1, p1, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-interface {p0, p2, p1}, Lcom/nearme/platform/opensdk/pay/IPayTaskResult;->onTaskResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 585
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
