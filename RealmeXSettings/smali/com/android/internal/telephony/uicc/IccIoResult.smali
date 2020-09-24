.class public Lcom/android/internal/telephony/uicc/IccIoResult;
.super Ljava/lang/Object;
.source "IccIoResult.java"


# static fields
.field private static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown"


# instance fields
.field public payload:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public sw1:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public sw2:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 191
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 185
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 186
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    return-void
.end method

.method private getErrorString()Ljava/lang/String;
    .locals 9

    .line 36
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x98

    const/16 v2, 0x40

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v0, v1, :cond_16

    const/16 v1, 0x9e

    const/4 v6, 0x0

    if-eq v0, v1, :cond_15

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_15

    const/16 v1, 0x81

    packed-switch v0, :pswitch_data_0

    const-string v7, "No information given"

    const-string v8, "The interpretation of this status word is command dependent"

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 138
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "file is inconsistent with the command"

    return-object v0

    :cond_1
    const-string v0, "file ID not found/pattern not found"

    return-object v0

    :cond_2
    const-string v0, "out f range (invalid address)"

    return-object v0

    :cond_3
    const-string v0, "no EF selected"

    return-object v0

    .line 131
    :pswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v0, "SIM Application Toolkit is busy. Command cannot be executed at present, further normal commands are allowed."

    return-object v0

    .line 123
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    shr-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5

    const-string v0, "command successful but after using an internal update retry routine"

    return-object v0

    :cond_5
    if-eq v0, v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string v0, "memory problem"

    return-object v0

    :pswitch_3
    return-object v6

    .line 82
    :pswitch_4
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_7

    return-object v8

    :cond_7
    const-string/jumbo v0, "technical problem with no diagnostic given"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "wrong instruction class given in the command"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "unknown instruction code given in the command"

    return-object v0

    :pswitch_7
    const-string v0, "incorrect parameter P1 or P2"

    return-object v0

    .line 108
    :pswitch_8
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_4

    :pswitch_9
    goto/16 :goto_0

    :pswitch_a
    const-string v0, "Referenced data not found"

    return-object v0

    :pswitch_b
    const-string v0, "Lc inconsistent with P1 to P2"

    return-object v0

    :pswitch_c
    const-string v0, "Incorrect parameters P1 to P2"

    return-object v0

    :pswitch_d
    const-string v0, "Not enough memory space"

    return-object v0

    :pswitch_e
    const-string v0, "Record not found"

    return-object v0

    :pswitch_f
    const-string v0, "File not found"

    return-object v0

    :pswitch_10
    const-string v0, "Function not supported"

    return-object v0

    :pswitch_11
    const-string v0, "Incorrect parameters in the data field"

    return-object v0

    .line 95
    :pswitch_12
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_9

    const/16 v1, 0x89

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_13
    const-string v0, "Command not allowed (no EF selected)"

    return-object v0

    :pswitch_14
    const-string v0, "Conditions of use not satisfied"

    return-object v0

    :pswitch_15
    const-string v0, "Referenced data invalidated"

    return-object v0

    :pswitch_16
    const-string v0, "Authentication/PIN method blocked"

    return-object v0

    :pswitch_17
    const-string v0, "Security status not satisfied"

    return-object v0

    :pswitch_18
    const-string v0, "Command incompatible with file structure"

    return-object v0

    :cond_8
    const-string v0, "Command not allowed - secure channel - security not satisfied"

    return-object v0

    :cond_9
    return-object v7

    .line 88
    :pswitch_19
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_b

    const/16 v1, 0x82

    if-eq v0, v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const-string v0, "Secure messaging not supported"

    return-object v0

    :cond_b
    const-string v0, "Logical channel not supported"

    return-object v0

    :cond_c
    return-object v7

    .line 73
    :pswitch_1a
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_d

    return-object v8

    :cond_d
    const-string v0, "incorrect parameter P3"

    return-object v0

    .line 67
    :pswitch_1b
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    const-string v0, "Memory problem"

    return-object v0

    :cond_f
    const-string v0, "No information given, state of non-volatile memory changed"

    return-object v0

    .line 61
    :pswitch_1c
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_10

    goto :goto_0

    :cond_10
    const-string v0, "No information given, state of non-volatile memory unchanged"

    return-object v0

    .line 51
    :pswitch_1d
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    shr-int/lit8 v1, v0, 0x4

    const/16 v2, 0xc

    if-ne v1, v2, :cond_11

    const-string v0, "Command successful but after using an internalupdate retry routine but Verification failed"

    return-object v0

    :cond_11
    const/16 v1, 0xf1

    if-eq v0, v1, :cond_13

    const/16 v1, 0xf2

    if-eq v0, v1, :cond_12

    goto :goto_0

    :cond_12
    const-string v0, "More data expected and proactive command pending"

    return-object v0

    :cond_13
    const-string v0, "More data expected"

    return-object v0

    .line 38
    :pswitch_1e
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_14

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    goto :goto_0

    :pswitch_1f
    const-string v0, "Response data available"

    return-object v0

    :pswitch_20
    const-string v0, "More data available and proactive command pending"

    return-object v0

    :pswitch_21
    const-string v0, "More data available"

    return-object v0

    :pswitch_22
    const-string v0, "Selected file in termination state"

    return-object v0

    :pswitch_23
    const-string v0, "Selected file invalidated"

    return-object v0

    :pswitch_24
    const-string v0, "End of file/record reached before reading Le bytes"

    return-object v0

    :pswitch_25
    const-string v0, "Part of returned data may be corrupted"

    return-object v0

    :cond_14
    const-string v0, "No information given, state of non volatile memory unchanged"

    return-object v0

    :cond_15
    return-object v6

    .line 146
    :cond_16
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eq v0, v4, :cond_1d

    if-eq v0, v5, :cond_1c

    if-eq v0, v3, :cond_1b

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1a

    if-eq v0, v2, :cond_19

    const/16 v1, 0x50

    if-eq v0, v1, :cond_18

    const/16 v1, 0x62

    if-eq v0, v1, :cond_17

    packed-switch v0, :pswitch_data_8

    :goto_0
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_26
    const-string v0, "authentication error, no memory space available in EF_MUK"

    return-object v0

    :pswitch_27
    const-string v0, "authentication error, no memory space available"

    return-object v0

    :pswitch_28
    const-string v0, "key freshness failure"

    return-object v0

    :pswitch_29
    const-string v0, "authentication error, security context not supported"

    return-object v0

    :cond_17
    const-string v0, "authentication error, application specific"

    return-object v0

    :cond_18
    const-string v0, "increase cannot be performed, Max value reached"

    return-object v0

    :cond_19
    const-string/jumbo v0, "unsuccessful CHV verification, no attempt left/unsuccessful UNBLOCK CHV verification, no attempt left/CHV blockedUNBLOCK CHV blocked"

    return-object v0

    :cond_1a
    const-string v0, "in contradiction with invalidation status"

    return-object v0

    :cond_1b
    const-string v0, "in contradiction with CHV status"

    return-object v0

    :cond_1c
    const-string v0, "access condition not fulfilled/unsuccessful CHV verification, at least one attempt left/unsuccessful UNBLOCK CHV verification, at least one attempt left/authentication failed"

    return-object v0

    :cond_1d
    const-string v0, "no CHV initialized"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_1a
        :pswitch_19
        :pswitch_12
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6d
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x90
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x80
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x81
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x81
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x64
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public getException()Lcom/android/internal/telephony/uicc/IccException;
    .locals 3

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x94

    if-eq v0, v1, :cond_1

    .line 229
    new-instance v0, Lcom/android/internal/telephony/uicc/IccException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sw1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sw2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 223
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 224
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    return-object v0

    .line 226
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileNotFound;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileNotFound;-><init>()V

    return-object v0
.end method

.method public success()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 212
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IccIoResult sw1:0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sw2:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "*******"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
