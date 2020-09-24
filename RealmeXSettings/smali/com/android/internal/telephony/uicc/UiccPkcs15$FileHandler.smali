.class Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPkcs15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileHandler"
.end annotation


# static fields
.field protected static final EVENT_READ_BINARY_DONE:I = 0x66

.field protected static final EVENT_SELECT_FILE_DONE:I = 0x65


# instance fields
.field private mCallback:Landroid/os/Message;

.field private mFileId:Ljava/lang/String;

.field private final mPkcs15Path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V
    .locals 1

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Creating FileHandler, pkcs15Path: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mPkcs15Path:Ljava/lang/String;

    return-void
.end method

.method private readBinary()V
    .locals 10

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$200(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xb0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v0, 0x66

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-string v8, ""

    .line 92
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const-string v0, "EF based"

    .line 95
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method private selectFile()V
    .locals 10

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$200(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xa4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    const/16 v0, 0x65

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 83
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const-string v0, "EF based"

    .line 86
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 103
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x65

    if-eq v1, v3, :cond_3

    const/16 v3, 0x66

    if-eq v1, v3, :cond_1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown event"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_1
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 117
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IccIoResult: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " payload: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    if-nez v0, :cond_2

    .line 121
    new-instance v2, Lcom/android/internal/telephony/uicc/IccException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error: null response for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    .line 120
    :cond_2
    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 122
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->readBinary()V

    return-void

    .line 104
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 106
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public loadFile(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2

    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadFile: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->selectFile()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
