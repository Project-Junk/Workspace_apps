.class Lcom/android/internal/telephony/cat/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# static fields
.field static final DTTZ_SETTING:I = 0x3

.field static final LANGUAGE_SETTING:I = 0x4

.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field private static final MAX_GSM7_DEFAULT_CHARS:I = 0xef

.field private static final MAX_UCS2_CHARS:I = 0x76

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final NON_SPECIFIC_LANGUAGE:I = 0x0

.field static final SPECIFIC_LANGUAGE:I = 0x1

.field private static sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mRequestedLanguage:Ljava/lang/String;

.field private mSavedLanguage:Ljava/lang/String;

.field private mloadIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 53
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 103
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v1, :cond_0

    .line 93
    sget-object p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 96
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    .line 98
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 1071
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 1072
    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    const/4 v1, 0x0

    .line 1083
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1085
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "alpha TLV text="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1091
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1093
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 1094
    iget-boolean p2, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1097
    :cond_2
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 1098
    new-instance p2, Lcom/android/internal/telephony/cat/BIPClientParams;

    invoke-direct {p2, p1, v0, v2}, Lcom/android/internal/telephony/cat/BIPClientParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_3

    .line 1101
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1102
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return v4

    :cond_3
    return v3
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 111
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "processCommandDetails: Failed to procees command details e="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process DisplayText"

    .line 340
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 345
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 352
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 356
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 358
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 361
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 363
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 364
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 367
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 369
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 373
    :cond_3
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v3, 0x1

    and-int/2addr p2, v3

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 374
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_5

    move p2, v3

    goto :goto_2

    :cond_5
    move p2, v2

    :goto_2
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 376
    new-instance p2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {p2, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_6

    .line 379
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 380
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 381
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 382
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 381
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return v3

    :cond_6
    return v2

    .line 353
    :cond_7
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process EventNotify"

    .line 705
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 710
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 712
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 714
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 716
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object p2

    .line 717
    iget-boolean v1, p2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 720
    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 721
    new-instance v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 724
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 725
    iput p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, p2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 726
    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return p1

    :cond_1
    return v1
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process GetInkey"

    .line 451
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 456
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 459
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 464
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 467
    iget-boolean v2, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 471
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 473
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    :cond_1
    const/4 p2, 0x1

    .line 476
    iput p2, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 477
    iput p2, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 479
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr v2, p2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, p2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 480
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    move v2, p2

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 481
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    move v2, p2

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 482
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    move v2, p2

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 483
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 485
    new-instance v2, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_6

    .line 488
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 489
    iput p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 490
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v0, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 491
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 490
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return p2

    :cond_6
    return v3

    .line 461
    :cond_7
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1
.end method

.method private processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process GetInput"

    .line 510
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 515
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 518
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 523
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 526
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 527
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 528
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 529
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 542
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 544
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 545
    iget-boolean v2, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 548
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 550
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 553
    :cond_2
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr p2, v3

    const/4 v2, 0x0

    if-nez p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 554
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_2

    :cond_4
    move p2, v2

    :goto_2
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 555
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_5

    move p2, v3

    goto :goto_3

    :cond_5
    move p2, v2

    :goto_3
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 556
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_6

    move p2, v3

    goto :goto_4

    :cond_6
    move p2, v2

    :goto_4
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 557
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_7

    move p2, v3

    goto :goto_5

    :cond_7
    move p2, v2

    :goto_5
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 561
    iget-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    if-eqz p2, :cond_8

    iget p2, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v4, 0x76

    if-le p2, v4, :cond_8

    .line 562
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "UCS2: received maxLen = "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", truncating to 118"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iput v4, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    goto :goto_6

    .line 565
    :cond_8
    iget-boolean p2, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    if-nez p2, :cond_9

    iget p2, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v4, 0xef

    if-le p2, v4, :cond_9

    .line 566
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "GSM 7Bit Default: received maxLen = "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", truncating to 239"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iput v4, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 571
    :cond_9
    :goto_6
    new-instance p2, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {p2, p1, v0}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_a

    .line 574
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 575
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 576
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 577
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 576
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return v3

    :cond_a
    return v2

    .line 531
    :catch_0
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1

    .line 534
    :cond_b
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1

    .line 520
    :cond_c
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1
.end method

.method private processLanguageNotification(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process Language Notification"

    .line 1023
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1027
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 1061
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "LN["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] Command Not Supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1040
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1042
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1047
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 1048
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p2

    .line 1049
    invoke-static {v1, p2, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1051
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    .line 1052
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1053
    :cond_1
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    .line 1055
    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    .line 1056
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Specific language notification changes the language setting to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1044
    :cond_3
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1

    .line 1029
    :cond_4
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    .line 1030
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1031
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Non-specific language notification changes the language setting back to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object p2, v2

    .line 1036
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mSavedLanguage:Ljava/lang/String;

    .line 1037
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mRequestedLanguage:Ljava/lang/String;

    move-object v2, p2

    .line 1065
    :cond_6
    :goto_1
    new-instance p2, Lcom/android/internal/telephony/cat/LanguageParams;

    invoke-direct {p2, p1, v2}, Lcom/android/internal/telephony/cat/LanguageParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 p1, 0x0

    return p1
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process LaunchBrowser"

    .line 796
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 802
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 805
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 806
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 807
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 809
    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1

    :cond_0
    move-object v1, v2

    .line 820
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 821
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 824
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 826
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v2

    .line 827
    iget-boolean p2, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 832
    :cond_1
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    .line 835
    sget-object p2, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_1

    .line 841
    :cond_2
    sget-object p2, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_1

    .line 838
    :cond_3
    sget-object p2, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 845
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    invoke-direct {v3, p1, v0, v1, p2}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    .line 848
    iput p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 849
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v0, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 850
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 849
    invoke-virtual {p2, v0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process PlayTone"

    .line 869
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 876
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 881
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 882
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v0

    .line 883
    aget-byte v0, v2, v0

    .line 884
    invoke-static {v0}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    .line 886
    :catch_0
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1

    :cond_0
    move-object v4, v1

    .line 892
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 894
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 898
    iget-object v0, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 901
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 903
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 906
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 908
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 909
    iget-boolean p2, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean p2, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    :cond_3
    move-object p2, v1

    .line 912
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v7, 0x1

    and-int/2addr v0, v7

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    move v6, v7

    goto :goto_2

    :cond_4
    move v6, v8

    .line 914
    :goto_2
    iput-boolean v8, v3, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 915
    new-instance v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p2, :cond_5

    .line 918
    iput v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 919
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, p2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 920
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 919
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return v7

    :cond_5
    return v8
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string p2, "process ProvideLocalInfo"

    .line 990
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 991
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string p2, "PLI [LANGUAGE_SETTING]"

    .line 997
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    new-instance p2, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_0

    .line 1001
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "PLI["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] Command Not Supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1002
    new-instance p2, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1003
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1

    :cond_1
    const-string p2, "PLI [DTTZ_SETTING]"

    .line 993
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    new-instance p2, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process SelectItem"

    .line 596
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/android/internal/telephony/cat/Menu;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    .line 601
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 603
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 604
    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 606
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 609
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    goto :goto_0

    .line 610
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v2, v3, :cond_10

    .line 620
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 622
    iget-object v3, v0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_f

    .line 633
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 637
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 640
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 642
    iput v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 643
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 644
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 647
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    const/4 v4, 0x2

    if-eqz p2, :cond_4

    .line 649
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 650
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;

    move-result-object v3

    .line 651
    iget-boolean p2, v3, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 654
    :cond_4
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr p2, v2

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    move p2, v2

    goto :goto_2

    :cond_5
    move p2, v5

    :goto_2
    if-eqz p2, :cond_7

    .line 656
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr p2, v4

    if-nez p2, :cond_6

    .line 657
    sget-object p2, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object p2, v0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    goto :goto_3

    .line 659
    :cond_6
    sget-object p2, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object p2, v0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 662
    :cond_7
    :goto_3
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_8

    move p2, v2

    goto :goto_4

    :cond_8
    move p2, v5

    :goto_4
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 663
    iget p2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_9

    move p2, v2

    goto :goto_5

    :cond_9
    move p2, v5

    :goto_5
    iput-boolean p2, v0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 665
    new-instance p2, Lcom/android/internal/telephony/cat/SelectItemParams;

    if-eqz v1, :cond_a

    move v6, v2

    goto :goto_6

    :cond_a
    move v6, v5

    :goto_6
    invoke-direct {p2, p1, v0, v6}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 668
    iget p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    if-eqz p1, :cond_e

    if-eq p1, v2, :cond_d

    if-eq p1, v4, :cond_b

    goto :goto_7

    .line 677
    :cond_b
    iget-object p1, v3, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    if-eqz v1, :cond_c

    .line 680
    iget-object p1, v3, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length p1, p1

    add-int/2addr p1, v2

    new-array p1, p1, [I

    .line 681
    iget p2, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    aput p2, p1, v5

    .line 682
    iget-object p2, v3, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    iget-object v0, v3, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v0, v0

    invoke-static {p2, v5, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    :cond_c
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 686
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 687
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 686
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_7

    .line 672
    :cond_d
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 673
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 674
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 673
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    :goto_7
    return v2

    :cond_e
    return v5

    .line 630
    :cond_f
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1

    .line 616
    :cond_10
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "process SetUpEventList"

    .line 746
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 750
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 751
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 752
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p2

    .line 753
    new-array v3, p2, [I

    move v4, v0

    :goto_0
    if-lez p2, :cond_1

    .line 757
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, -0x1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    const/16 v6, 0xf

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 775
    :cond_1
    new-instance p2, Lcom/android/internal/telephony/cat/SetEventListParams;

    invoke-direct {p2, p1, v3}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, " IndexOutofBoundException in processSetUpEventList"

    .line 777
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process SetUpIdleModeText"

    .line 401
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 406
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 412
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 414
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object p2

    .line 415
    iget-boolean v1, p2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 423
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 424
    :cond_2
    new-instance p1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p1

    .line 426
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    .line 429
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 430
    iput p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget p2, p2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 431
    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "process SetupCall"

    .line 938
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 943
    new-instance v1, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 945
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 950
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 951
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 953
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 955
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 956
    iget-boolean v5, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 960
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 962
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 965
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 967
    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4

    .line 968
    iget-boolean p2, v4, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean p2, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 971
    :cond_2
    new-instance p2, Lcom/android/internal/telephony/cat/CallSetupParams;

    invoke-direct {p2, p1, v1, v2}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 p1, 0x0

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    return p1

    :cond_4
    :goto_1
    const/4 p2, 0x2

    .line 974
    iput p2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 975
    new-array p2, p2, [I

    const/4 v0, -0x1

    if-eqz v3, :cond_5

    .line 977
    iget v1, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    aput v1, p2, p1

    if-eqz v4, :cond_6

    .line 978
    iget v0, v4, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    :cond_6
    const/4 p1, 0x1

    aput v0, p2, p1

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 982
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 981
    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    return p1
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result p1

    .line 317
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 297
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object p1

    return-object p1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string p1, "Optional Icon data is NULL"

    .line 251
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    iput-boolean v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    .line 253
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 260
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    return-object p1

    .line 262
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .line 269
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, p1, v0

    .line 270
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    if-nez v3, :cond_2

    .line 271
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    if-eqz v3, :cond_2

    const-string v3, "Optional Icon data is NULL while loading multi icons"

    .line 272
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    iput-boolean v1, v3, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 278
    :cond_4
    :goto_1
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    return-object p1
.end method


# virtual methods
.method public dispose()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1110
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/IconLoader;->dispose()V

    const/4 v0, 0x0

    .line 1111
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 1112
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1113
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 1114
    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v0, :cond_1

    .line 240
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    move-result v0

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_1

    .line 134
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    if-nez v1, :cond_2

    .line 142
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    .line 148
    :cond_2
    iget v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 149
    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    if-nez v2, :cond_3

    .line 153
    new-instance p1, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 154
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    .line 159
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->isLengthValid()Z

    move-result p1

    if-nez p1, :cond_4

    .line 160
    new-instance p1, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 161
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    .line 166
    :cond_4
    :try_start_0
    sget-object p1, Lcom/android/internal/telephony/cat/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_0

    .line 220
    new-instance p1, Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_1

    .line 216
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLanguageNotification(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 204
    :pswitch_3
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 201
    :pswitch_4
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 198
    :pswitch_5
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 195
    :pswitch_6
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 191
    :pswitch_7
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 183
    :pswitch_8
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 180
    :pswitch_9
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 177
    :pswitch_a
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 174
    :pswitch_b
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 171
    :pswitch_c
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 168
    :pswitch_d
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p1, :cond_5

    .line 231
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    :cond_5
    return-void

    .line 220
    :goto_1
    :try_start_1
    invoke-direct {p1, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 221
    sget-object p1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 225
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "make: caught ResultException e="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
