.class public final Lcom/coloros/settings/privacy/SafeQuestionActivity$c;
.super Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;
.source "SafeQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/privacy/SafeQuestionActivity$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/coloros/settings/privacy/SafeQuestionActivity$a;)V
    .locals 0

    .line 615
    invoke-direct {p0, p1}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;-><init>(Landroid/content/Context;)V

    .line 616
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 617
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleVerifyResult(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;)V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 623
    iget-object v1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/privacy/SafeQuestionActivity$a;

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 629
    iget-object v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    const-string v3, "5100"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    iget-boolean v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    .line 632
    invoke-interface {v1, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$a;->onVerify(Z)V

    return-void

    :cond_1
    if-eqz v0, :cond_3

    .line 637
    invoke-static {p1, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 640
    iget-boolean v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 642
    invoke-static {p1, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/app/Activity;)V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    const/4 p1, 0x0

    .line 646
    invoke-interface {v1, p1}, Lcom/coloros/settings/privacy/SafeQuestionActivity$a;->onVerify(Z)V

    :cond_4
    :goto_1
    return-void
.end method
