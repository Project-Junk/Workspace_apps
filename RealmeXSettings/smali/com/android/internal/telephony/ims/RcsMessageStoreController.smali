.class public Lcom/android/internal/telephony/ims/RcsMessageStoreController;
.super Landroid/telephony/ims/aidl/IRcs$Stub;
.source "RcsMessageStoreController.java"


# static fields
.field private static final RCS_SERVICE_NAME:Ljava/lang/String; = "ircs"

.field static final TAG:Ljava/lang/String; = "RcsMsgStoreController"

.field private static sInstance:Lcom/android/internal/telephony/ims/RcsMessageStoreController;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

.field private final mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

.field private final mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

.field private final mParticipantQueryHelper:Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;

.field private final mThreadQueryHelper:Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 145
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcs$Stub;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mParticipantQueryHelper:Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mParticipantQueryHelper:Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;-><init>(Landroid/content/ContentResolver;Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mThreadQueryHelper:Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    return-void
.end method

.method private addMessage(IZLandroid/content/ContentValues;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageInsertionUri(Z)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 459
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 455
    :cond_0
    new-instance p2, Landroid/os/RemoteException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Could not create message on thread, threadId: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static init(Landroid/content/Context;)Lcom/android/internal/telephony/ims/RcsMessageStoreController;
    .locals 3

    .line 131
    const-class v0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->sInstance:Lcom/android/internal/telephony/ims/RcsMessageStoreController;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/android/internal/telephony/ims/RcsMessageStoreController;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/RcsMessageStoreController;-><init>(Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->sInstance:Lcom/android/internal/telephony/ims/RcsMessageStoreController;

    const-string p0, "ircs"

    .line 134
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "ircs"

    .line 135
    sget-object v1, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->sInstance:Lcom/android/internal/telephony/ims/RcsMessageStoreController;

    invoke-static {p0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const-string p0, "RcsMsgStoreController"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init() called multiple times! sInstance = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->sInstance:Lcom/android/internal/telephony/ims/RcsMessageStoreController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    sget-object p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->sInstance:Lcom/android/internal/telephony/ims/RcsMessageStoreController;

    return-object p0

    :catchall_0
    move-exception p0

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addIncomingMessage(ILandroid/telephony/ims/RcsIncomingMessageCreationParams;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 425
    invoke-virtual {p2}, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->getArrivalTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "arrival_timestamp"

    .line 424
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    invoke-virtual {p2}, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->getSeenTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "seen_timestamp"

    .line 426
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    invoke-virtual {p2}, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->getSenderParticipantId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sender_participant"

    .line 428
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->createContentValuesForGenericMessage(Landroid/content/ContentValues;ILandroid/telephony/ims/RcsMessageCreationParams;)V

    const/4 p2, 0x1

    .line 434
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->addMessage(IZLandroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public addOutgoingMessage(ILandroid/telephony/ims/RcsOutgoingMessageCreationParams;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->createContentValuesForGenericMessage(Landroid/content/ContentValues;ILandroid/telephony/ims/RcsMessageCreationParams;)V

    const/4 p2, 0x0

    .line 446
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->addMessage(IZLandroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public addParticipantToGroupThread(II)V
    .locals 3

    .line 405
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rcs_thread_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "rcs_participant_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    iget-object p2, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->getAllParticipantsInThreadUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public createGroupThread([ILjava/lang/String;Landroid/net/Uri;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mThreadQueryHelper:Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->createGroupThread(Ljava/lang/String;Landroid/net/Uri;)I

    move-result p2

    if-lez p2, :cond_1

    if-eqz p1, :cond_0

    .line 251
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget v1, p1, v0

    .line 252
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->addParticipantToGroupThread(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2

    .line 244
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Could not create RcsGroupThread."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createGroupThreadIconChangedEvent(JIILandroid/net/Uri;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 843
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    if-nez p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    .line 844
    :cond_0
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_0
    const-string v0, "new_icon_uri"

    invoke-virtual {v6, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    const/16 v1, 0x8

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createGroupThreadEvent(IJIILandroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public createGroupThreadNameChangedEvent(JIILjava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 833
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "new_name"

    .line 834
    invoke-virtual {v6, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    const/16 v1, 0x10

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createGroupThreadEvent(IJIILandroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public createGroupThreadParticipantJoinedEvent(JIII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 854
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v0, "destination_participant"

    invoke-virtual {v6, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    const/4 v1, 0x2

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createGroupThreadEvent(IJIILandroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public createGroupThreadParticipantLeftEvent(JIII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 864
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v0, "destination_participant"

    invoke-virtual {v6, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    const/4 v1, 0x4

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createGroupThreadEvent(IJIILandroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public createParticipantAliasChangedEvent(JILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 873
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 874
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "origination_timestamp"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 875
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "source_participant"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "new_alias"

    .line 876
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    .line 879
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->getParticipantEventInsertionUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 878
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 887
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 882
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Could not create RcsParticipantAliasChangedEvent with participant id: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRcs1To1Thread(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mThreadQueryHelper:Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->create1To1Thread(I)I

    move-result p1

    return p1
.end method

.method public createRcsParticipant(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    .line 269
    invoke-static {v1, p1}, Landroid/provider/Telephony$RcsColumns$RcsCanonicalAddressHelper;->getOrCreateCanonicalAddressId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    .line 275
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "canonical_address_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "rcs_alias"

    .line 276
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;->RCS_PARTICIPANT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 287
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 289
    :catch_0
    new-instance p2, Landroid/os/RemoteException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Uri returned after creating a participant is malformed: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 283
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Error inserting new participant into RcsProvider"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Could not create or make canonical address entry"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteFileTransfer(I)V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteMessage(IZIZ)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 465
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageDeletionUri(IZIZ)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 464
    invoke-virtual {v0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteThread(II)Z
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 157
    sget-object p2, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/provider/Telephony$RcsColumns$Rcs1To1ThreadColumns;->RCS_1_TO_1_THREAD_URI:Landroid/net/Uri;

    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "rcs_thread_id=?"

    .line 156
    invoke-virtual {v0, p2, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method public get1To1ThreadFallbackThreadId(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$Rcs1To1ThreadColumns;->RCS_1_TO_1_THREAD_URI:Landroid/net/Uri;

    const-string v2, "rcs_fallback_thread_id"

    const-string v3, "rcs_thread_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getLongValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public get1To1ThreadOtherParticipantId(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->get1To1ThreadUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "rcs_participant_id"

    .line 343
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 345
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 348
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 350
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 349
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 351
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 346
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Could not get the thread recipient"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 344
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v3, :cond_2

    .line 351
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw v0
.end method

.method public getEvents(Landroid/telephony/ims/RcsEventQueryParams;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event_query_parameters"

    .line 222
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->performEventQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getEventsWithToken(Landroid/telephony/ims/RcsQueryContinuationToken;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "query_continuation_token"

    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mEventQueryHelper:Lcom/android/internal/telephony/ims/RcsEventQueryHelper;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->performEventQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getFileTransferContentType(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "content_type"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getStringValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileTransferContentUri(I)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "content_uri"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getUriValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getFileTransferFileSize(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "file_size"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getLongValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileTransferHeight(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "height"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getIntValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getFileTransferLength(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "duration"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getLongValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileTransferPreviewType(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "preview_type"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getStringValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileTransferPreviewUri(I)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "duration"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getUriValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getFileTransferSessionId(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "session_id"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getStringValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileTransferStatus(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string v2, "status"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getIntValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getFileTransferTransferOffset(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string/jumbo v2, "transfer_offset"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getLongValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileTransferWidth(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    const-string/jumbo v2, "width"

    const-string v3, "rcs_file_transfer_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getIntValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getFileTransfersAttachedToMessage(IZ)[I
    .locals 0

    const/4 p1, 0x0

    .line 654
    new-array p1, p1, [I

    return-object p1
.end method

.method public getGlobalMessageIdForMessage(IZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "rcs_message_global_id"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getStringValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGroupThreadConferenceUri(I)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    const-string v2, "conference_uri"

    const-string v3, "rcs_thread_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getUriValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getGroupThreadIcon(I)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    const-string v2, "group_icon"

    const-string v3, "rcs_thread_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getUriValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getGroupThreadName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    const-string v2, "group_name"

    const-string v3, "rcs_thread_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getStringValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGroupThreadOwner(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    const-string v2, "owner_participant"

    const-string v3, "rcs_thread_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getIntValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLatitudeForMessage(IZ)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "latitude"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getDoubleValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide p1

    return-wide p1
.end method

.method public getLongitudeForMessage(IZ)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "longitude"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getDoubleValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide p1

    return-wide p1
.end method

.method public getMessageArrivalTimestamp(IZ)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "arrival_timestamp"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getLongValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMessageOriginationTimestamp(IZ)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "origination_timestamp"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getLongValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMessageRecipients(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getDeliveryParticipantsForMessage(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getMessageSeenTimestamp(IZ)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "seen_timestamp"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getLongValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMessageSnippet(I)Landroid/telephony/ims/RcsMessageSnippet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMessageStatus(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "status"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getIntValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getMessageSubId(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "sub_id"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getIntValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getMessages(Landroid/telephony/ims/RcsMessageQueryParams;)Landroid/telephony/ims/RcsMessageQueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message_query_parameters"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->performMessageQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsMessageQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesWithToken(Landroid/telephony/ims/RcsQueryContinuationToken;)Landroid/telephony/ims/RcsMessageQueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "query_continuation_token"

    .line 214
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->performMessageQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsMessageQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public getOutgoingDeliveryDeliveredTimestamp(II)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    const-string v1, "delivered_timestamp"

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getLongValueFromDelivery(IILjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getOutgoingDeliverySeenTimestamp(II)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    const-string v1, "seen_timestamp"

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getLongValueFromDelivery(IILjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getOutgoingDeliveryStatus(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getParticipants(Landroid/telephony/ims/RcsParticipantQueryParams;)Landroid/telephony/ims/RcsParticipantQueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "participant_query_parameters"

    .line 190
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mParticipantQueryHelper:Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->performParticipantQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsParticipantQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public getParticipantsWithToken(Landroid/telephony/ims/RcsQueryContinuationToken;)Landroid/telephony/ims/RcsParticipantQueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "query_continuation_token"

    .line 198
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mParticipantQueryHelper:Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->performParticipantQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsParticipantQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public getRcsParticipantAlias(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;->RCS_PARTICIPANT_URI:Landroid/net/Uri;

    const-string v2, "rcs_alias"

    const-string v3, "rcs_participant_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getStringValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRcsParticipantCanonicalAddress(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;->RCS_PARTICIPANT_URI:Landroid/net/Uri;

    const-string v2, "address"

    const-string v3, "rcs_participant_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getStringValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRcsParticipantContactId(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRcsThreads(Landroid/telephony/ims/RcsThreadQueryParams;)Landroid/telephony/ims/RcsThreadQueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "thread_query_parameters"

    .line 174
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mThreadQueryHelper:Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->performThreadQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsThreadQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public getRcsThreadsWithToken(Landroid/telephony/ims/RcsQueryContinuationToken;)Landroid/telephony/ims/RcsThreadQueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "query_continuation_token"

    .line 182
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 183
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mThreadQueryHelper:Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->performThreadQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsThreadQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public getSenderParticipant(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsIncomingMessageColumns;->INCOMING_MESSAGE_URI:Landroid/net/Uri;

    const-string v2, "sender_participant"

    const-string v3, "rcs_message_row_id"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getIntValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getTextForMessage(IZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getMessageTableUri(Z)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "rcs_text"

    const-string v2, "rcs_message_row_id"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->getStringValueFromTableRow(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeParticipantFromGroupThread(II)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->getParticipantInThreadUri(II)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public set1To1ThreadFallbackThreadId(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->get1To1ThreadUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "rcs_fallback_thread_id"

    const-string v5, "Could not set fallback thread ID"

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setFileTransferContentType(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 712
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "content_type"

    const-string v2, "Could not set content type for file transfer"

    .line 711
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFileTransferContentUri(ILandroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 699
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "content_uri"

    const-string v2, "Could not set content URI for file transfer"

    .line 698
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public setFileTransferFileSize(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 725
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "file_size"

    const-string v5, "Could not set file size for file transfer"

    move-wide v3, p2

    .line 724
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setFileTransferHeight(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 780
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "height"

    const-string v2, "Could not set height of file transfer"

    .line 779
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setFileTransferLength(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 793
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "duration"

    const-string v5, "Could not set length of file transfer"

    move-wide v3, p2

    .line 792
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setFileTransferPreviewType(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 820
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "preview_type"

    const-string v2, "Could not set preview type of file transfer"

    .line 819
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFileTransferPreviewUri(ILandroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 807
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "preview_uri"

    const-string v2, "Could not set preview URI of file transfer"

    .line 806
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public setFileTransferSessionId(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 686
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "session_id"

    const-string v2, "Could not set session ID for file transfer"

    .line 685
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFileTransferStatus(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 754
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v1, "transfer_status"

    const-string v2, "Could not set transfer status for file transfer"

    .line 753
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setFileTransferTransferOffset(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 739
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "transfer_offset"

    const-string v5, "Could not set transfer offset for file transfer"

    move-wide v3, p2

    .line 738
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setFileTransferWidth(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 767
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferUpdateUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v1, "width"

    const-string v2, "Could not set width of file transfer"

    .line 766
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setGlobalMessageIdForMessage(IZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 518
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "rcs_message_global_id"

    const-string v1, "Could not set the global ID for message"

    .line 517
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGroupThreadConferenceUri(ILandroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->getGroupThreadUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "conference_uri"

    const-string v2, "Could not set the conference URI for group"

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public setGroupThreadIcon(ILandroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->getGroupThreadUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "group_icon"

    const-string v2, "Could not update group icon"

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public setGroupThreadName(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->getGroupThreadUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "group_name"

    const-string v2, "Could not update group name"

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGroupThreadOwner(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->getGroupThreadUri(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "owner_participant"

    const-string v2, "Could not set the group owner"

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setLatitudeForMessage(IZD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 627
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "latitude"

    const-string v5, "Could not update latitude for message"

    move-wide v3, p3

    .line 626
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method public setLongitudeForMessage(IZD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 641
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "longitude"

    const-string v5, "Could not set longitude for message"

    move-wide v3, p3

    .line 640
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method public setMessageArrivalTimestamp(IZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 533
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "arrival_timestamp"

    const-string v5, "Could not update the arrival timestamp for message"

    move-wide v3, p3

    .line 532
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setMessageOriginationTimestamp(IZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 502
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "origination_timestamp"

    const-string v5, "Could not set the origination timestamp for message"

    move-wide v3, p3

    .line 501
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setMessageSeenTimestamp(IZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 549
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "seen_timestamp"

    const-string v5, "Could not set the notified timestamp for message"

    move-wide v3, p3

    .line 548
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setMessageStatus(IZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 488
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "status"

    const-string v1, "Could not set the status for message"

    .line 487
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setMessageSubId(IZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 474
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "sub_id"

    const-string v1, "Could not set subscription ID for message"

    .line 473
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setOutgoingDeliveryDeliveredTimestamp(IIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 577
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageDeliveryUri(II)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "delivered_timestamp"

    const-string v5, "Could not update the delivered timestamp for outgoing delivery"

    move-wide v3, p3

    .line 576
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setOutgoingDeliverySeenTimestamp(IIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 593
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageDeliveryUri(II)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "seen_timestamp"

    const-string v5, "Could not update the seen timestamp for outgoing delivery"

    move-wide v3, p3

    .line 592
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setOutgoingDeliveryStatus(III)V
    .locals 0

    return-void
.end method

.method public setRcsParticipantAlias(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->getUriForParticipant(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "rcs_alias"

    const-string v2, "Could not update RCS participant alias"

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRcsParticipantContactId(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextForMessage(IZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageStoreUtil:Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 613
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageUpdateUri(IZ)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "rcs_text"

    const-string v1, "Could not set the text for message"

    .line 612
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ims/RcsMessageStoreUtil;->updateValueOfProviderUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeFileTransfer(IZLandroid/telephony/ims/RcsFileTransferCreationParams;)I
    .locals 1

    .line 671
    iget-object p2, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getContentValuesForFileTransfer(Landroid/telephony/ims/RcsFileTransferCreationParams;)Landroid/content/ContentValues;

    move-result-object p2

    .line 673
    iget-object p3, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageStoreController;->mMessageQueryHelper:Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;

    .line 674
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getFileTransferInsertionUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 673
    invoke-virtual {p3, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method
