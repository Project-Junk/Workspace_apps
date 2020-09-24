.class Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;
.super Ljava/lang/Object;
.source "RcsThreadQueryHelper.java"


# static fields
.field private static final THREAD_ID_INDEX_IN_INSERTION_URI:I = 0x1


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mParticipantQueryHelper:Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    iput-object p2, p0, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->mParticipantQueryHelper:Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;

    return-void
.end method

.method static get1To1ThreadUri(I)Landroid/net/Uri;
    .locals 1

    .line 134
    sget-object v0, Landroid/provider/Telephony$RcsColumns$Rcs1To1ThreadColumns;->RCS_1_TO_1_THREAD_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static getAllParticipantsInThreadUri(I)Landroid/net/Uri;
    .locals 1

    .line 142
    sget-object v0, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "participant"

    .line 143
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static getGroupThreadUri(I)Landroid/net/Uri;
    .locals 1

    .line 138
    sget-object v0, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static getParticipantInThreadUri(II)Landroid/net/Uri;
    .locals 1

    .line 147
    sget-object v0, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "participant"

    .line 148
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method create1To1Thread(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "rcs_participant_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$Rcs1To1ThreadColumns;->RCS_1_TO_1_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Rcs1To1Thread creation failed"

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    return p1

    .line 106
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method createGroupThread(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "group_name"

    .line 115
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "group_icon"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 123
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "RcsGroupThread creation failed"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performThreadQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsThreadQueryResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsThreadQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$RcsColumns$RcsThreadColumns;->RCS_THREAD_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 71
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "thread_type"

    .line 72
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    move p1, v2

    :goto_1
    const-string v5, "rcs_thread_id"

    if-eqz p1, :cond_1

    .line 76
    :try_start_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 77
    new-instance v2, Lcom/android/ims/RcsTypeIdPair;

    invoke-direct {v2, v4, p1}, Lcom/android/ims/RcsTypeIdPair;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 80
    new-instance v4, Lcom/android/ims/RcsTypeIdPair;

    invoke-direct {v4, v2, p1}, Lcom/android/ims/RcsTypeIdPair;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "query_continuation_token"

    .line 87
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsQueryContinuationToken;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    move-object p1, v3

    :goto_2
    if-eqz v1, :cond_4

    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_4
    new-instance v1, Landroid/telephony/ims/RcsThreadQueryResult;

    invoke-direct {v1, p1, v0}, Landroid/telephony/ims/RcsThreadQueryResult;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_3

    .line 68
    :cond_5
    :try_start_2
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Could not perform thread query, bundle: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :goto_3
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v1, :cond_7

    if-eqz v3, :cond_6

    .line 89
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    throw p1
.end method
