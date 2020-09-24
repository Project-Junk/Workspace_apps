.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;
.super Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;
.source "ChooseGenericPrivacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-object p3, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final handleVerifyResult(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->c(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;)Z

    if-eqz p1, :cond_1

    .line 591
    iget-object v0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    const-string v1, "5100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-boolean v0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 595
    :cond_0
    iget-boolean v0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    if-nez v0, :cond_1

    .line 596
    iget-object p1, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    .line 597
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 602
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$5;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    return-void
.end method
