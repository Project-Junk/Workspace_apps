.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DcKeepaliveTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;
    }
.end annotation


# instance fields
.field private final mKeepalives:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;)V
    .locals 0

    .line 2659
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2670
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0

    .line 2659
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;)V

    return-void
.end method


# virtual methods
.method getHandleForSlot(I)I
    .locals 2

    const/4 v0, 0x0

    .line 2673
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2674
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;

    .line 2675
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method handleKeepaliveStarted(ILcom/android/internal/telephony/dataconnection/KeepaliveStatus;)V
    .locals 3

    .line 2695
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 2712
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid KeepaliveStatus Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5500(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    return-void

    .line 2697
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget p2, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    .line 2698
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->keepaliveStatusErrorToPacketKeepaliveError(I)I

    move-result p2

    .line 2697
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onSocketKeepaliveEvent(II)V

    return-void

    .line 2701
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onSocketKeepaliveEvent(II)V

    .line 2705
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding keepalive handle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5500(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    .line 2707
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget v1, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;

    iget p2, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method handleKeepaliveStatus(Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;)V
    .locals 6

    .line 2719
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;

    if-nez v0, :cond_0

    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Discarding keepalive event for different data connection:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    return-void

    .line 2729
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    const/4 v2, 0x0

    const-string v3, "Invalid Keepalive Status received, "

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_1

    .line 2774
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    return-void

    .line 2736
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    .line 2753
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    return-void

    .line 2750
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    const-string v0, "Invalid unsolicied Keepalive Pending Status!"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    return-void

    .line 2738
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    .line 2739
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->keepaliveStatusErrorToPacketKeepaliveError(I)I

    move-result v3

    .line 2738
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onSocketKeepaliveEvent(II)V

    .line 2740
    iput v5, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 2741
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 2744
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    const-string v1, "Pending Keepalive received active status!"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5500(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    .line 2745
    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 2746
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onSocketKeepaliveEvent(II)V

    return-void

    .line 2731
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    const-string v1, "Inactive Keepalive received status!"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5500(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    .line 2732
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    const/16 v1, -0x1f

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onSocketKeepaliveEvent(II)V

    return-void

    .line 2757
    :cond_6
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_8

    .line 2770
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    return-void

    .line 2759
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    const-string v3, "Keepalive received stopped status!"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5500(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    .line 2760
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onSocketKeepaliveEvent(II)V

    .line 2762
    iput v5, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 2763
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 2767
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    const-string v0, "Active Keepalive received invalid status!"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    return-void
.end method

.method keepaliveStatusErrorToPacketKeepaliveError(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 p1, -0x1f

    return p1

    :cond_0
    const/16 p1, -0x20

    return p1

    :cond_1
    const/16 p1, -0x1e

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
