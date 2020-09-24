.class Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;
.super Landroid/telephony/data/DataService$DataServiceProvider;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/CellularDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellularDataServiceProvider"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Message;",
            "Landroid/telephony/data/DataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLooper:Landroid/os/Looper;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;I)V
    .locals 2

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/DataService$DataServiceProvider;-><init>(Landroid/telephony/data/DataService;I)V

    .line 57
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->getSlotIndex()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 72
    new-instance p2, Landroid/os/HandlerThread;

    const-class v0, Lcom/android/internal/telephony/dataconnection/CellularDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 74
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mLooper:Landroid/os/Looper;

    .line 75
    new-instance p2, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;-><init>(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/dataconnection/CellularDataService;)V

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    .line 124
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;ILcom/android/internal/telephony/dataconnection/CellularDataService$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    return-void
.end method

.method public requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/DataServiceCallback;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/data/DataProfile;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/data/DataProfile;

    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p7

    if-eqz v1, :cond_0

    .line 137
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 138
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v10, v2

    .line 141
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    return-void
.end method
