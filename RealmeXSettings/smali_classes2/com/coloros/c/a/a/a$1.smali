.class public final Lcom/coloros/c/a/a/a$1;
.super Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;
.source "FindPhoneLogoutControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/coloros/c/a/a/a$e;

.field final synthetic e:Lcom/coloros/c/a/a/a;


# direct methods
.method public constructor <init>(Lcom/coloros/c/a/a/a;Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Context;Lcom/coloros/c/a/a/a$e;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/c/a/a/a$1;->e:Lcom/coloros/c/a/a/a;

    iput-object p3, p0, Lcom/coloros/c/a/a/a$1;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/coloros/c/a/a/a$1;->b:Z

    iput-object p5, p0, Lcom/coloros/c/a/a/a$1;->c:Landroid/content/Context;

    iput-object p6, p0, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    invoke-direct {p0, p2}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final handleVerifyResult(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;)V
    .locals 4

    .line 104
    invoke-static {}, Lcom/coloros/c/a/a/a;->a()Z

    move-result v0

    const-string v1, "FindPhoneLogoutControl"

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "startOperateVerify, handleMessages. entity = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_7

    .line 107
    iget-object v0, p0, Lcom/coloros/c/a/a/a$1;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    iget-boolean v0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    invoke-static {}, Lcom/coloros/c/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "verify success! ticketNo = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requstCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/c/a/a/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", needCloseFindPhone = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/c/a/a/a$1;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/c/a/a/a$1;->b:Z

    if-eqz v0, :cond_2

    .line 114
    iget-object p1, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/coloros/c/a/a/a$1;->e:Lcom/coloros/c/a/a/a;

    iget-object v1, p0, Lcom/coloros/c/a/a/a$1;->c:Landroid/content/Context;

    new-instance v2, Lcom/coloros/c/a/a/a$1$1;

    invoke-direct {v2, p0, p1}, Lcom/coloros/c/a/a/a$1$1;-><init>(Lcom/coloros/c/a/a/a$1;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;Landroid/content/Context;Lcom/coloros/c/a/a/a$c;)V

    return-void

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    if-eqz p1, :cond_7

    .line 138
    invoke-interface {p1}, Lcom/coloros/c/a/a/a$e;->a()V

    return-void

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    if-eqz v0, :cond_6

    .line 143
    iget-object v0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    const-string v2, "VERIFY_RESULT_CODE_TOKEN_INVALID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    invoke-interface {v0}, Lcom/coloros/c/a/a/a$e;->c()V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    const-string v2, "VERIFY_RESULT_CODE_CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    invoke-interface {v0}, Lcom/coloros/c/a/a/a$e;->b()V

    goto :goto_0

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    iget-object v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/coloros/c/a/a/a$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_6
    :goto_0
    invoke-static {}, Lcom/coloros/c/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "verify fail! entity.isSuccess = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", entity.ticketNo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", entity.errorCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
