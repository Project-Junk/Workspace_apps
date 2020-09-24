.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field private mFinished:Z

.field private mResult:I

.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;


# direct methods
.method private constructor <init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->mFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->mFinished:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;)I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->mResult:I

    return p0
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1500(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->mFinished:Z

    iput p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->mResult:I

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1500(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "BRPluginProxy"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "packageInstalled status ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
