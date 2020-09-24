.class Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;
.super Landroid/telephony/INetworkServiceCallback$Stub;
.source "NetworkRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkRegStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Landroid/telephony/INetworkServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const-string v1, "onNetworkStateChanged"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$900(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestNetworkRegistrationInfoComplete result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$700(Lcom/android/internal/telephony/NetworkRegistrationManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 222
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 223
    new-instance p1, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p1, v1, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const-string p2, "onCompleteMessage is null"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$800(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    return-void
.end method
