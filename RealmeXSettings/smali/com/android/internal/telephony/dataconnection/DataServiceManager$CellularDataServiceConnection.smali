.class final Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;
.super Ljava/lang/Object;
.source "DataServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CellularDataServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p2}, Landroid/telephony/data/IDataService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$502(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/telephony/data/IDataService;)Landroid/telephony/data/IDataService;

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$602(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$802(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Z)Z

    .line 171
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$600(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 172
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$500(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/telephony/data/IDataService;->createDataServiceProvider(I)V

    .line 173
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$500(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    invoke-interface {p1, p2, v0}, Landroid/telephony/data/IDataService;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 176
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$600(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;->binderDied()V

    .line 177
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Remote exception. "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$400(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$500(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object p1

    invoke-interface {p1}, Landroid/telephony/data/IDataService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$600(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 187
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$502(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/telephony/data/IDataService;)Landroid/telephony/data/IDataService;

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$802(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Z)Z

    .line 189
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$202(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
