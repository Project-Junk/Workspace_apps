.class Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;
.super Ljava/lang/Object;
.source "RcsParticipantQueryHelper.java"


# static fields
.field static final CANONICAL_ADDRESSES_URI:Landroid/net/Uri;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 53
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

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://mms-sms/canonical-addresses"

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->CANONICAL_ADDRESSES_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static getUriForParticipant(I)Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;->RCS_PARTICIPANT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getParticipantFromId(I)Landroid/telephony/ims/RcsParticipant;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;->RCS_PARTICIPANT_URI:Landroid/net/Uri;

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "rcs_participant_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 44
    invoke-virtual {v0, v1, v3, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance p1, Landroid/telephony/ims/RcsParticipant;

    .line 52
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/telephony/ims/RcsParticipant;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v4, v0}, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-object p1

    .line 48
    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not find participant with id: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v4, p1

    .line 44
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 53
    invoke-static {v4, v0}, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw p1
.end method

.method performParticipantQuery(Landroid/os/Bundle;)Landroid/telephony/ims/RcsParticipantQueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;->RCS_PARTICIPANT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 66
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "rcs_participant_id"

    .line 68
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "query_continuation_token"

    .line 73
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsQueryContinuationToken;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 75
    invoke-static {v3, v1}, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 77
    :cond_2
    new-instance v1, Landroid/telephony/ims/RcsParticipantQueryResult;

    invoke-direct {v1, p1, v0}, Landroid/telephony/ims/RcsParticipantQueryResult;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_2

    .line 63
    :cond_3
    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Could not perform participant query, bundle: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_2
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v1, :cond_4

    .line 75
    invoke-static {v3, v1}, Lcom/android/internal/telephony/ims/RcsParticipantQueryHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw p1
.end method
