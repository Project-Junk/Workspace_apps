.class Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;
.super Lcom/android/internal/telephony/IntRangeManager;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellBroadcastRangeManager"
.end annotation


# instance fields
.field private mConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;-><init>()V

    .line 956
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected addRange(IIZ)V
    .locals 8

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected finishUpdate()Z
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    .line 989
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 990
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result v0

    return v0
.end method

.method protected startUpdate()V
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
