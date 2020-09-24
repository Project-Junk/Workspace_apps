.class Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;
.super Ljava/lang/Object;
.source "RcsMessageQueryHelper.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getMessageDeliveryQueryUri(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageInsertionUri(Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "delivery"

    .line 178
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method createContentValuesForGenericMessage(Landroid/content/ContentValues;ILandroid/telephony/ims/RcsMessageCreationParams;)V
    .locals 2

    .line 112
    invoke-virtual {p3}, Landroid/telephony/ims/RcsMessageCreationParams;->getRcsMessageGlobalId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rcs_message_global_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/telephony/ims/RcsMessageCreationParams;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sub_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {p3}, Landroid/telephony/ims/RcsMessageCreationParams;->getMessageStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p3}, Landroid/telephony/ims/RcsMessageCreationParams;->getOriginationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "origination_timestamp"

    .line 115
    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "rcs_thread_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method getContentValuesForFileTransfer(Landroid/telephony/ims/RcsFileTransferCreationParams;)Landroid/content/ContentValues;
    .locals 3

    .line 183
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 185
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getRcsFileTransferSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session_id"

    .line 184
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_uri"

    .line 186
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getContentMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "file_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getTransferOffset()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "transfer_offset"

    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getFileTransferStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "transfer_status"

    .line 192
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getMediaDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getPreviewUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preview_uri"

    .line 198
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;->getPreviewMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "preview_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method getDeliveryParticipantsForMessage(I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageDeliveryQueryUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 149
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "rcs_participant_id"

    .line 150
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p1, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 152
    invoke-static {v2, v0}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, p1

    goto :goto_1

    .line 143
    :cond_2
    :try_start_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v3, "Could not query deliveries for message, messageId: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    .line 152
    invoke-static {v2, v0}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw p1
.end method

.method getFileTransferInsertionUri(I)Landroid/net/Uri;
    .locals 1

    .line 206
    sget-object v0, Landroid/provider/Telephony$RcsColumns$RcsUnifiedMessageColumns;->UNIFIED_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "file_transfer"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method getFileTransferUpdateUri(I)Landroid/net/Uri;
    .locals 1

    .line 211
    sget-object v0, Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;->FILE_TRANSFER_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method getLongValueFromDelivery(IILjava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageDeliveryUri(II)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {v2, v0}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-wide p1

    .line 167
    :cond_1
    :try_start_1
    new-instance p3, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not read delivery for message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", participant: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 164
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 173
    invoke-static {v2, v0}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw p1
.end method

.method getMessageDeletionUri(IZIZ)Landroid/net/Uri;
    .locals 1

    .line 125
    sget-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p4, :cond_0

    const-string p4, "group_thread"

    goto :goto_0

    :cond_0
    const-string p4, "p2p_thread"

    :goto_0
    invoke-virtual {v0, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 127
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 126
    invoke-virtual {p4, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    if-eqz p2, :cond_1

    const-string p2, "incoming_message"

    goto :goto_1

    :cond_1
    const-string p2, "outgoing_message"

    .line 127
    :goto_1
    invoke-virtual {p3, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method getMessageDeliveryUri(II)Landroid/net/Uri;
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageDeliveryQueryUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method getMessageInsertionUri(Z)Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_0

    .line 121
    sget-object p1, Landroid/provider/Telephony$RcsColumns$RcsIncomingMessageColumns;->INCOMING_MESSAGE_URI:Landroid/net/Uri;

    return-object p1

    :cond_0
    sget-object p1, Landroid/provider/Telephony$RcsColumns$RcsOutgoingMessageColumns;->OUTGOING_MESSAGE_URI:Landroid/net/Uri;

    return-object p1
.end method

.method getMessageUpdateUri(IZ)Landroid/net/Uri;
    .locals 0

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->getMessageInsertionUri(Z)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method performMessageQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsMessageQueryResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$RcsColumns$RcsUnifiedMessageColumns;->UNIFIED_MESSAGE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_0
    if-eqz v1, :cond_2

    .line 89
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "message_type"

    .line 90
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    move p1, v2

    :goto_1
    const-string v5, "rcs_message_row_id"

    .line 92
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 94
    new-instance v6, Lcom/android/ims/RcsTypeIdPair;

    if-eqz p1, :cond_1

    move v2, v4

    .line 95
    :cond_1
    invoke-direct {v6, v2, v5}, Lcom/android/ims/RcsTypeIdPair;-><init>(II)V

    .line 94
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "query_continuation_token"

    .line 102
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsQueryContinuationToken;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    move-object p1, v3

    :goto_2
    if-eqz v1, :cond_4

    .line 105
    invoke-static {v3, v1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 107
    :cond_4
    new-instance v1, Landroid/telephony/ims/RcsMessageQueryResult;

    invoke-direct {v1, p1, v0}, Landroid/telephony/ims/RcsMessageQueryResult;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V

    return-object v1

    .line 86
    :cond_5
    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Could not perform message query, bundle: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 84
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v1, :cond_6

    .line 105
    invoke-static {v3, v1}, Lcom/android/internal/telephony/ims/RcsMessageQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw p1
.end method
