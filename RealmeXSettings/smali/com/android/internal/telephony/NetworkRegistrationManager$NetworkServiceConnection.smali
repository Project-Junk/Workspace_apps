.class Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;
.super Ljava/lang/Object;
.source "NetworkRegistrationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 186
    invoke-static {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is now connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p2}, Landroid/telephony/INetworkService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$402(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/telephony/INetworkService;)Landroid/telephony/INetworkService;

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/content/ComponentName;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$502(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    .line 191
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$500(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$000(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/telephony/INetworkService;->createNetworkServiceProvider(I)V

    .line 193
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$000(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V

    invoke-interface {p1, p2, v0}, Landroid/telephony/INetworkService;->registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 197
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$500(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->binderDied()V

    .line 198
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteException "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for transport "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 205
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is now disconnected."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$602(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Landroid/telephony/INetworkService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$500(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
