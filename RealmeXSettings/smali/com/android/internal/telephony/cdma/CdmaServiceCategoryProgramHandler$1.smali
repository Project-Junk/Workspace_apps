.class Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceCategoryProgramHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendScpResults()V
    .locals 6

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SCP results error: result code = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v1, "SCP results error: missing extras"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "sender"

    .line 146
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v1, "SCP results error: missing sender extra."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v3, "results"

    .line 152
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v1, "SCP results error: missing results extra."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$500(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v4, 0x2

    .line 159
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 160
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 161
    iput-object v1, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 162
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v1

    .line 164
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 165
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x1006

    .line 167
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 168
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 172
    iget v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 173
    iget v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 174
    iget v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 175
    iget v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 176
    iget v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 177
    iget-object v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v4, v5, v0, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 179
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 180
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 181
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 182
    array-length v2, v1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 183
    array-length v2, v1

    invoke-virtual {v4, v1, v0, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 187
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v2, "exception creating SCP results PDU"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$600(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-void

    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 192
    :catch_3
    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->sendScpResults()V

    .line 129
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string p2, "mScpResultsReceiver finished"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$000(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->access$100(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->sendMessage(I)V

    :cond_0
    return-void
.end method
