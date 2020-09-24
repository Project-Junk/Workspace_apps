.class public Lcom/android/internal/telephony/GsmCdmaCall;
.super Lcom/android/internal/telephony/Call;
.source "GsmCdmaCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public connectionDisconnected(Lcom/android/internal/telephony/GsmCdmaConnection;)Z
    .locals 5

    .line 87
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 92
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

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
    if-eqz p1, :cond_2

    .line 100
    sget-object p1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return v2

    :cond_2
    return v1
.end method

.method public detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    :cond_0
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v0

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    return-void
.end method

.method isFull()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMaxConnectionsPerCall()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onHangupLocal()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 150
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 0

    .line 120
    iget-object p1, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p2, :cond_0

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
