.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepaliveRecord"
.end annotation


# instance fields
.field public currentStatus:I

.field public slotId:I

.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;II)V
    .locals 0

    .line 2664
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2665
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    .line 2666
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    return-void
.end method