.class public Lcom/android/internal/telephony/uicc/RuimRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;
    }
.end annotation


# static fields
.field private static final EVENT_APP_LOCKED:I = 0x20

.field private static final EVENT_APP_NETWORK_LOCKED:I = 0x21

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "RuimRecords"


# instance fields
.field mCsimSpnDisplayCondition:Z

.field private mEFli:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mEFpl:[B
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mNai:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mOtaCommited:Z

.field private mPrlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    const/4 p2, 0x0

    .line 63
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    .line 65
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    .line 67
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 111
    new-instance p3, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 113
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 114
    iput p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLockedRecordsReqReason:I

    .line 117
    iput p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 124
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 p3, 0x1

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p3, 0x20

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p3, 0x21

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RuimRecords X ctor this="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/RuimRecords;I)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->adjstMinDigits(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object p1
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    add-int/lit8 p1, p1, 0x6f

    .line 216
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 217
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 218
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    :cond_2
    return p1
.end method

.method private fetchRuimRecords()V
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    .line 852
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchRuimRecords "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 857
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 859
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x5

    .line 860
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x2fe2

    .line 859
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 861
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 863
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    const/16 v5, 0x64

    .line 864
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x2f05

    .line 863
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 865
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 867
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    .line 868
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f3a

    .line 867
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 869
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    .line 872
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f41

    .line 871
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 873
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 875
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    .line 876
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f44

    .line 875
    invoke-virtual {v1, v6, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 877
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 879
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    .line 880
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f22

    .line 879
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 881
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 883
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    .line 884
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f28

    .line 883
    invoke-virtual {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 885
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 889
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    .line 890
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v6, 0x6f5a

    const/4 v7, 0x4

    .line 889
    invoke-virtual {v1, v6, v7, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 891
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 893
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    .line 894
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f4d

    .line 893
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 895
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v3, 0x6f3c

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static getAssetLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object p0

    .line 741
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 742
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 743
    aget-object v3, p0, v2

    const/16 v4, 0x2d

    .line 744
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 746
    aput-object v3, v0, v2

    goto :goto_1

    .line 748
    :cond_0
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 466
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CSIM_EPRL="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 470
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    .line 471
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 472
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 474
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CSIM PRL version="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onLocked(I)V
    .locals 3

    const-string v0, "only fetch EF_ICCID in locked state"

    .line 842
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 844
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLockedRecordsReqReason:I

    .line 846
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 847
    iget p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    return-void
.end method

.method private onLockedAllRecordsLoaded()V
    .locals 3

    .line 773
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLockedRecordsReqReason:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 775
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLockedRecordsReqReason:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNetworkLockedRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 779
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLockedAllRecordsLoaded: unexpected mLockedRecordsReqReason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLockedRecordsReqReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 132
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disposing RuimRecords "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 138
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 992
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuimRecords: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " extends:"

    .line 993
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 995
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mOtaCommited="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mMyMobileNumber="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mMin2Min1="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPrlVersion="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mEFpl[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mEFli[]="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mCsimSpnDisplayCondition="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mMdn="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mMin="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mHomeSystemId="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mHomeNetworkId="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    const-string v0, "RuimRecords finalized"

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 976
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    return v0
.end method

.method public getDisplayRule(Landroid/telephony/ServiceState;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    if-eqz v1, :cond_1

    .line 237
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_1
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 244
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    const-string v0, "RuimRecords:getVoiceMessageCount - NOP for CDMA"

    .line 947
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected handleFileUpdate(I)V
    .locals 0

    .line 953
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 954
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "RuimRecords"

    .line 609
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] while being destroyed. Ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 616
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v1, :cond_b

    const/16 v4, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v3, v4, :cond_a

    const/16 v4, 0xe

    if-eq v3, v4, :cond_9

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_4

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/16 v1, 0x15

    if-eq v3, v1, :cond_2

    const/16 v1, 0x16

    if-eq v3, v1, :cond_2

    const/16 v1, 0x20

    if-eq v3, v1, :cond_1

    const/16 v1, 0x21

    if-eq v3, v1, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 719
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "Event EVENT_GET_SST_DONE Received"

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onLocked(I)V

    goto/16 :goto_0

    .line 710
    :cond_2
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Event not supported: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_0

    .line 685
    :cond_3
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 686
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 688
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_d

    .line 692
    array-length p1, v3

    invoke-static {v3, v2, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 693
    array-length p1, v3

    invoke-static {v3, v2, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFullIccId:Ljava/lang/String;

    .line 695
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "iccid: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_4
    :try_start_2
    const-string p1, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 634
    :cond_5
    :try_start_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 635
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception querying IMSI, Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 640
    :cond_6
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 644
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x6

    if-lt p1, v2, :cond_7

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xf

    if-le p1, v2, :cond_8

    .line 645
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "invalid IMSI "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 646
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 661
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NO update mccmnc="

    .line 662
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 700
    :cond_9
    :try_start_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 701
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    const-string v1, "RuimRecords update failed"

    .line 702
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 668
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 669
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 670
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_c

    .line 674
    aget-object p1, v1, v2

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 675
    aget-object p1, v1, v6

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 676
    aget-object p1, v1, v5

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "MDN: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MIN: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onReady()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_c
    :goto_0
    move v1, v2

    :cond_d
    :goto_1
    if-eqz v1, :cond_e

    .line 727
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    return-void

    :catchall_1
    move-exception p1

    move v1, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move v1, v2

    :goto_2
    :try_start_5
    const-string v2, "Exception parsing RUIM record"

    .line 723
    invoke-static {v0, v2, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_e

    .line 727
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    :cond_e
    return-void

    :goto_3
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    :cond_f
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isProvisioned()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "persist.radio.test-csim"

    .line 921
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v1, :cond_1

    return v0

    .line 929
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 981
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[RuimRecords] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RuimRecords"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 987
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[RuimRecords] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RuimRecords"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 3

    const-string v0, "record load complete"

    .line 786
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 814
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100e9

    .line 815
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSimLanguage([B[B)V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result v0

    .line 825
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 826
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    return-void

    :cond_1
    const-string v0, "Cannot call setDisplayNumber: invalid subId"

    .line 829
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onReady()V
    .locals 2

    .line 836
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .line 759
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRecordLoaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 766
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    if-gez v0, :cond_2

    const-string v0, "recordsToLoad <0, programmer error suspected"

    .line 767
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 768
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    :cond_2
    return-void

    .line 765
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onLockedAllRecordsLoaded()V

    return-void
.end method

.method public onRefresh(Z[I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 2

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting0 mMncLength"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFullIccId:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 164
    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLockedRecordsReqReason:I

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 191
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/IccException;

    const-string v0, "setVoiceMailNumber not implemented"

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 193
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    const-string p1, "method setVoiceMailNumber is not implemented"

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 0

    const-string p1, "RuimRecords:setVoiceMessageWaiting - NOP for CDMA"

    .line 940
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RuimRecords: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " m_ota_commited"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMyMobileNumber=xxxx mMin2Min1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEFpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mEFli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCsimSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
