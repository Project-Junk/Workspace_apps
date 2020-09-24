.class public Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.source "TransmitApduLogicalChannelInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<",
        "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;",
        "Lcom/android/internal/telephony/uicc/IccIoResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransApdu"

.field private static final SW1_ERROR:I = 0x6f


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method


# virtual methods
.method protected parseResult(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/uicc/IccIoResult;
    .locals 4

    .line 57
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "TransApdu"

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 58
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    goto :goto_1

    .line 60
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string p1, "Empty response"

    .line 61
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    const-string v2, "CommandException"

    if-eqz v0, :cond_2

    .line 63
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :goto_0
    new-instance p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v0, 0x6f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 70
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Response: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->parseResult(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/uicc/IccIoResult;

    move-result-object p1

    return-object p1
.end method

.method protected sendRequestMessage(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;Landroid/os/Message;)V
    .locals 11

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransApdu"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    iget v0, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->cla:I

    iget v1, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    or-int v4, v0, v1

    iget v5, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->ins:I

    iget v6, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p1:I

    iget v7, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p2:I

    iget v8, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p3:I

    iget-object v9, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->cmdHex:Ljava/lang/String;

    move-object v10, p2

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->sendRequestMessage(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;Landroid/os/Message;)V

    return-void
.end method
