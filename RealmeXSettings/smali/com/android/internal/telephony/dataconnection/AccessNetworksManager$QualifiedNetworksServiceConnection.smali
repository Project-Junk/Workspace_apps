.class final Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;
.super Ljava/lang/Object;
.source "AccessNetworksManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QualifiedNetworksServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;-><init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 148
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {p2}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$302(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Landroid/telephony/data/IQualifiedNetworksService;)Landroid/telephony/data/IQualifiedNetworksService;

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;)V

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$402(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;)Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    .line 152
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$400(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 153
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$300(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$000(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    new-instance v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;)V

    invoke-interface {p1, p2, v0}, Landroid/telephony/data/IQualifiedNetworksService;->createNetworkAvailabilityProvider(ILandroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 156
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$400(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;->binderDied()V

    .line 157
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Remote exception. "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$200(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 163
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$300(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object p1

    invoke-interface {p1}, Landroid/telephony/data/IQualifiedNetworksService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$400(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 164
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$102(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
