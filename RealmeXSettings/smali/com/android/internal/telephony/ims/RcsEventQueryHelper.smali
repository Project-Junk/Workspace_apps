.class Lcom/android/internal/telephony/ims/RcsEventQueryHelper;
.super Ljava/lang/Object;
.source "RcsEventQueryHelper.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private createNewGroupIconChangedEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;
    .locals 8

    const-string v0, "new_icon_uri"

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v7, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;

    const-string v1, "origination_timestamp"

    .line 157
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v1, "rcs_thread_id"

    .line 158
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v1, "source_participant"

    .line 159
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v6, p1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;-><init>(JIILandroid/net/Uri;)V

    return-object v7
.end method

.method private createNewGroupNameChangedEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsGroupThreadNameChangedEventDescriptor;
    .locals 7

    .line 164
    new-instance v6, Landroid/telephony/ims/RcsGroupThreadNameChangedEventDescriptor;

    const-string v0, "origination_timestamp"

    .line 165
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "rcs_thread_id"

    .line 166
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "source_participant"

    .line 167
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "new_name"

    .line 168
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsGroupThreadNameChangedEventDescriptor;-><init>(JIILjava/lang/String;)V

    return-object v6
.end method

.method private createNewParticipantAliasChangedEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;
    .locals 5

    .line 191
    new-instance v0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;

    const-string v1, "origination_timestamp"

    .line 192
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "source_participant"

    .line 193
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "new_alias"

    .line 194
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;-><init>(JILjava/lang/String;)V

    return-object v0
.end method

.method private createNewParticipantJoinedEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsGroupThreadParticipantJoinedEventDescriptor;
    .locals 7

    .line 182
    new-instance v6, Landroid/telephony/ims/RcsGroupThreadParticipantJoinedEventDescriptor;

    const-string v0, "origination_timestamp"

    .line 183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "rcs_thread_id"

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "source_participant"

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "destination_participant"

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsGroupThreadParticipantJoinedEventDescriptor;-><init>(JIII)V

    return-object v6
.end method

.method private createNewParticipantLeftEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;
    .locals 7

    .line 173
    new-instance v6, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;

    const-string v0, "origination_timestamp"

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "rcs_thread_id"

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "source_participant"

    .line 176
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "destination_participant"

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;-><init>(JIII)V

    return-object v6
.end method

.method private getPathForEventType(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const-string p1, "name_changed_event"

    return-object p1

    .line 149
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Event type unrecognized: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "icon_changed_event"

    return-object p1

    :cond_2
    const-string p1, "participant_left_event"

    return-object p1

    :cond_3
    const-string p1, "participant_joined_event"

    return-object p1
.end method


# virtual methods
.method createGroupThreadEvent(IJIILandroid/content/ContentValues;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p6}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string v1, "event_type"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "origination_timestamp"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "source_participant"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    sget-object p2, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 123
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 122
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->getPathForEventType(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 124
    iget-object p3, p0, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_1

    return p2

    .line 132
    :cond_1
    new-instance p2, Landroid/os/RemoteException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Could not create event with type: "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on thread: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getParticipantEventInsertionUri(I)Landroid/net/Uri;
    .locals 1

    .line 68
    sget-object v0, Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;->RCS_PARTICIPANT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "alias_change_event"

    .line 69
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method performEventQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$RcsColumns$RcsUnifiedEventHelper;->RCS_EVENT_QUERY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 81
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "event_type"

    .line 82
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x10

    if-eq p1, v2, :cond_0

    const-string v2, "RcsMsgStoreController"

    const-string v4, "RcsEventQueryHelper: invalid event type: "

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createNewGroupNameChangedEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsGroupThreadNameChangedEventDescriptor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createNewGroupIconChangedEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createNewParticipantLeftEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createNewParticipantJoinedEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsGroupThreadParticipantJoinedEventDescriptor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/RcsEventQueryHelper;->createNewParticipantAliasChangedEvent(Landroid/database/Cursor;)Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v2, "query_continuation_token"

    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsQueryContinuationToken;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    move-object p1, v3

    :goto_1
    if-eqz v1, :cond_7

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_7
    new-instance v1, Landroid/telephony/ims/RcsEventQueryResultDescriptor;

    invoke-direct {v1, p1, v0}, Landroid/telephony/ims/RcsEventQueryResultDescriptor;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_2

    .line 78
    :cond_8
    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Event query failed, bundle: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :goto_2
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v1, :cond_a

    if-eqz v3, :cond_9

    .line 109
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_4
    throw p1
.end method
