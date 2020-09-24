.class public Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/content/IntentFilter;

.field private c:Landroid/net/wifi/p2p/WifiP2pManager;

.field private d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Landroid/content/DialogInterface$OnClickListener;

.field private g:Landroid/content/DialogInterface$OnClickListener;

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private j:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

.field private k:Ljava/lang/String;

.field private n:Landroid/widget/EditText;

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Lcom/android/settings/wifi/p2p/b;

.field private u:Lcom/android/settings/wifi/p2p/c;

.field private v:Lcom/android/settings/wifi/p2p/d;

.field private w:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private x:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private y:Ljava/lang/String;

.field private final z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiP2pSettings"

    const/4 v1, 0x3

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->r:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->s:Z

    .line 105
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->x:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 109
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->x:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p1
.end method

.method private synthetic a(Landroid/net/NetworkInfo;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_do5YHIp-2kSfCRxczq6BP5Bz50;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_do5YHIp-2kSfCRxczq6BP5Bz50;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    return-void
.end method

.method private synthetic a(Landroid/net/NetworkInfo;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->s:Z

    if-nez v0, :cond_2

    .line 351
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    sget-boolean p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "WifiP2pSettings"

    const-string v0, "Connected"

    .line 353
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->r:Z

    if-nez p1, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->e()V

    .line 359
    :cond_1
    :goto_0
    iget-boolean p1, p2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->r:Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 3

    const/4 v0, 0x0

    .line 3607
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a(Z)V

    .line 3608
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->v:Lcom/android/settings/wifi/p2p/d;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->o:Z

    .line 4055
    iget-object v2, v0, Lcom/android/settings/wifi/p2p/d;->a:Landroidx/preference/Preference;

    if-eqz v2, :cond_0

    .line 4056
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/d;->a:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 3609
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->u:Lcom/android/settings/wifi/p2p/c;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->o:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/p2p/c;->a(Z)V

    .line 3610
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->t:Lcom/android/settings/wifi/p2p/b;

    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->o:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/p2p/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 614
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p:Z

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 616
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a(Z)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    return v0
.end method

.method private d()V
    .locals 6

    .line 557
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->t:Lcom/android/settings/wifi/p2p/b;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/b;->a()V

    const/4 v0, 0x0

    .line 559
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->q:I

    .line 560
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    const-string v1, "WifiP2pSettings"

    if-eqz v0, :cond_0

    const-string v0, "List of available peers"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->x:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 562
    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-> "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->t:Lcom/android/settings/wifi/p2p/b;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/p2p/b;->a(Landroidx/preference/Preference;)V

    .line 564
    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->q:I

    goto :goto_0

    .line 566
    :cond_3
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mConnectedDevices "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->r:Z

    return p0
.end method

.method private e()V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p:Z

    if-nez v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->e()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method static synthetic h(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic i(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->j:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    return-object p0
.end method

.method static synthetic j(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->j:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    return-object v0
.end method

.method public static synthetic lambda$HkNZB7S1Sc6MnlD1uV4bwakM42Y(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public static synthetic lambda$_do5YHIp-2kSfCRxczq6BP5Bz50(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a(Landroid/net/NetworkInfo;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "WifiP2pSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v1, Lcom/android/settings/wifi/p2p/c;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/p2p/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->u:Lcom/android/settings/wifi/p2p/c;

    .line 186
    new-instance v1, Lcom/android/settings/wifi/p2p/b;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/p2p/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->t:Lcom/android/settings/wifi/p2p/b;

    .line 188
    new-instance v1, Lcom/android/settings/wifi/p2p/d;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/p2p/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->v:Lcom/android/settings/wifi/p2p/d;

    .line 189
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->u:Lcom/android/settings/wifi/p2p/c;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->t:Lcom/android/settings/wifi/p2p/b;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->v:Lcom/android/settings/wifi/p2p/d;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x242

    return p1

    :cond_1
    const/16 p1, 0x241

    return p1

    :cond_2
    const/16 p1, 0x240

    return p1

    :cond_3
    const/16 p1, 0x23f

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ad1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150147

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "wifip2p"

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 199
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v2, "WifiP2pSettings"

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    .line 200
    invoke-virtual {v1, v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    const-string v0, "Failed to set up connection with wifi p2p service"

    .line 204
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_0

    :cond_0
    const-string v0, "mWifiP2pManager is null !"

    .line 208
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "PEER_STATE"

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 213
    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "DEV_NAME"

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->y:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "GROUP_NAME"

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->k:Ljava/lang/String;

    .line 222
    :cond_4
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 258
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 277
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 297
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 329
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x2

    const v1, 0x7f120818

    const v2, 0x7f12081d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 467
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 471
    :goto_0
    iget v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->q:I

    if-le v6, v5, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f1219fb

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    iget p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->q:I

    sub-int/2addr p1, v5

    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    .line 472
    invoke-virtual {v6, v7, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v6, 0x7f1219fa

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {v0, v6, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 477
    :goto_1
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1219fc

    .line 478
    invoke-virtual {v0, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 479
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_2
    if-ne p1, v0, :cond_4

    .line 486
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 490
    :goto_2
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1219f7

    .line 491
    invoke-virtual {v0, v6}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f1219f6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {v6, v7, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 498
    new-instance p1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    .line 499
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 500
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->y:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    .line 503
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->w:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 504
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->w:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->w:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 507
    :cond_6
    :goto_3
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->y:Ljava/lang/String;

    .line 508
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1219ff

    .line 509
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    .line 510
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 518
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f1219f8

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 377
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p:Z

    if-eqz v0, :cond_0

    const v0, 0x7f121a01

    goto :goto_0

    :cond_0
    const v0, 0x7f121a00

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->o:Z

    .line 380
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f1219ff

    .line 381
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->o:Z

    .line 382
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 383
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    .line 601
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->w:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 602
    sget-boolean p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Update device info: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->w:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiP2pSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->v:Lcom/android/settings/wifi/p2p/d;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->w:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3061
    iget-object v1, p1, Lcom/android/settings/wifi/p2p/d;->a:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 3062
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3063
    iget-object p1, p1, Lcom/android/settings/wifi/p2p/d;->a:Landroidx/preference/Preference;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 3065
    :cond_1
    iget-object p1, p1, Lcom/android/settings/wifi/p2p/d;->a:Landroidx/preference/Preference;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 415
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return v1

    .line 409
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->e()V

    return v1
.end method

.method public onPause()V
    .locals 3

    .line 368
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2

    .line 594
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pSettings"

    const-string v1, "Requested peers are available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->x:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 596
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d()V

    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->u:Lcom/android/settings/wifi/p2p/c;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/c;->a()V

    .line 573
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "WifiP2pSettings"

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 574
    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " group "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_1
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->u:Lcom/android/settings/wifi/p2p/c;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/p2p/c;->a(Landroidx/preference/Preference;)V

    .line 2039
    iget-object v0, v2, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->a:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 577
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Selecting group "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3039
    iget-object v3, v2, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->a:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    .line 578
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_2
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->j:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->k:Ljava/lang/String;

    goto :goto_0

    .line 583
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->k:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 588
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " Selected group "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " disappered on next query "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 420
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_5

    .line 421
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_1

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 425
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_1

    .line 427
    :cond_1
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 428
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v3, -0x1

    const-string v4, "wifidirect.wps"

    .line 430
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 433
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 435
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 436
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 437
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 438
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 440
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    .line 457
    :cond_5
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v0, :cond_6

    .line 458
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->j:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    const/4 v0, 0x4

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 461
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x1

    .line 388
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    .line 389
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 390
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->o:Z

    if-eqz v2, :cond_0

    .line 391
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 392
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 394
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 395
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 398
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p:Z

    if-eqz p1, :cond_1

    const p1, 0x7f121a01

    .line 399
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void

    :cond_1
    const p1, 0x7f121a00

    .line 401
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 334
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->z:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->s:Z

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$HkNZB7S1Sc6MnlD1uV4bwakM42Y;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$HkNZB7S1Sc6MnlD1uV4bwakM42Y;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestNetworkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v1, "PEER_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEV_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->j:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->a:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GROUP_NAME"

    .line 552
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
