.class Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.source "CloseLogicalChannelInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CloseChan"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method


# virtual methods
.method protected parseResult(Landroid/os/AsyncResult;)Ljava/lang/Boolean;
    .locals 2

    .line 51
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 52
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 54
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    const-string v1, "CloseChan"

    if-eqz v0, :cond_1

    .line 55
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v0, "CommandException"

    invoke-static {v1, v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v0, "Unknown exception"

    invoke-static {v1, v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->parseResult(Landroid/os/AsyncResult;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected sendRequestMessage(Ljava/lang/Integer;Landroid/os/Message;)V
    .locals 2

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Channel: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloseChan"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->sendRequestMessage(Ljava/lang/Integer;Landroid/os/Message;)V

    return-void
.end method
