.class public Lcom/android/internal/telephony/cat/ResultException;
.super Lcom/android/internal/telephony/cat/CatException;
.source "ResultException.java"


# instance fields
.field private mAdditionalInfo:I

.field private mExplanation:Ljava/lang/String;

.field private mResult:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatException;-><init>()V

    .line 39
    sget-object v0, Lcom/android/internal/telephony/cat/ResultException$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    const-string p1, ""

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-void

    .line 48
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "For result code, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", additional information must be given!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    if-ltz p2, :cond_0

    .line 73
    iput p2, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Additional info must be greater than zero!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;ILjava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    .line 78
    iput-object p3, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 62
    iput-object p2, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public additionalInfo()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    return v0
.end method

.method public explanation()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdditionalInfo()Z
    .locals 1

    .line 86
    iget v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public result()Lcom/android/internal/telephony/cat/ResultCode;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " additionalInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " explantion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
