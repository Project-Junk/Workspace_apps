.class Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;
.super Lcom/android/internal/telephony/IntRangeManager;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CdmaBroadcastRangeManager"
.end annotation


# instance fields
.field private mConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;-><init>()V

    .line 996
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected addRange(IIZ)V
    .locals 3

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected finishUpdate()Z
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    .line 1029
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .line 1030
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z

    move-result v0

    return v0
.end method

.method protected startUpdate()V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->mConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
