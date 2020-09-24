.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
.super Lcom/android/internal/telephony/Call;
.source "ImsPhoneCall.java"


# static fields
.field public static final CONTEXT_BACKGROUND:Ljava/lang/String; = "BG"

.field public static final CONTEXT_FOREGROUND:Ljava/lang/String; = "FG"

.field public static final CONTEXT_HANDOVER:Ljava/lang/String; = "HO"

.field public static final CONTEXT_RINGING:Ljava/lang/String; = "RG"

.field public static final CONTEXT_UNKNOWN:Ljava/lang/String; = "UK"

.field private static final DBG:Z

.field private static final FORCE_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCall"

.field private static final VDBG:Z


# instance fields
.field private final mCallContext:Ljava/lang/String;

.field private mIsRingbackTonePlaying:Z

.field mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ImsPhoneCall"

    const/4 v1, 0x3

    .line 45
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    const/4 v1, 0x2

    .line 46
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    const-string v0, "UK"

    .line 67
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    return-void
.end method

.method static isLocalTone(Lcom/android/ims/a;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 313
    iget p0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 1

    .line 381
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    .line 382
    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 383
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 384
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 157
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attach : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    return-void
.end method

.method public attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 168
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attach : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    .line 169
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 173
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z
    .locals 5

    .line 185
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_1

    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 198
    sget-object p1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 199
    sget-boolean p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz p1, :cond_2

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "connectionDisconnected : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneCall"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 2

    .line 211
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detach : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 217
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    return-void
.end method

.method public dispose()V
    .locals 5

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 83
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 84
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    .line 82
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 83
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 84
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_1
    throw v2

    :catch_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_2

    .line 83
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 84
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/a;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method getHandoverConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method public getImsCall()Lcom/android/ims/a;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    return-void
.end method

.method isFull()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/a;->h()Z

    move-result v0

    return v0
.end method

.method public maybeStopRingback()V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->stopRingbackTone()V

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    :cond_0
    return-void
.end method

.method merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConferenceConnectTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 276
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectTime(J)V

    .line 277
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectTimeReal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectTimeReal(J)V

    goto :goto_0

    .line 279
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "merge: conference connect time is 0"

    .line 280
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    if-eqz v0, :cond_2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "merge("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method onHangupLocal()V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 238
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHangupLocal()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 241
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHangupLocal : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method setMute(Z)V
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 259
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->a(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMute failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneCall"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 2

    .line 358
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "switchWith : switchCall = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " withCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCall"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    const-class v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    monitor-enter v0

    .line 362
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>()V

    .line 363
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 365
    invoke-direct {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 366
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    return-void

    :catchall_0
    move-exception p1

    .line 366
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsPhoneCall "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, " ERROR_MULTIPLE "

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;)Z
    .locals 3

    .line 319
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 323
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_1

    .line 324
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->stopRingbackTone()V

    .line 326
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    goto :goto_0

    .line 327
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/a;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->startRingbackTone()V

    .line 329
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    goto :goto_0

    .line 332
    :cond_1
    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    if-eqz p2, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->stopRingbackTone()V

    .line 334
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mIsRingbackTonePlaying:Z

    .line 338
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq p3, p2, :cond_3

    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p3, p2, :cond_3

    .line 339
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    goto :goto_1

    .line 341
    :cond_3
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p3, p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 345
    :goto_1
    sget-boolean p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz p2, :cond_5

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "update : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsPhoneCall"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method
