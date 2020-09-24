.class Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.source "OpenLogicalChannelInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<",
        "Ljava/lang/String;",
        "Landroid/telephony/IccOpenLogicalChannelResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OpenChan"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method


# virtual methods
.method protected parseResult(Landroid/os/AsyncResult;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 7

    .line 56
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    const-string v2, "OpenChan"

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 57
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x0

    .line 58
    aget v0, p1, v0

    .line 60
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 61
    array-length v1, p1

    sub-int/2addr v1, v4

    new-array v1, v1, [B

    move v3, v4

    .line 62
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v3, -0x1

    .line 63
    aget v6, p1, v3

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Landroid/telephony/IccOpenLogicalChannelResponse;

    invoke-direct {p1, v0, v4, v1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    goto :goto_2

    .line 69
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v0, "Empty response"

    .line 70
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 v0, 0x4

    .line 77
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_5

    .line 78
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 80
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v3, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    .line 82
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v3, :cond_5

    const/4 v0, 0x3

    .line 86
    :cond_5
    :goto_1
    new-instance p1, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v3, -0x1

    invoke-direct {p1, v3, v0, v1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    .line 90
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public bridge synthetic parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->parseResult(Landroid/os/AsyncResult;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->sendRequestMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected sendRequestMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method
