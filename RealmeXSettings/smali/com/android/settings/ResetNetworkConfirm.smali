.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$b;,
        Lcom/android/settings/ResetNetworkConfirm$c;,
        Lcom/android/settings/ResetNetworkConfirm$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settings/ResetNetworkConfirm$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Landroid/app/Activity;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private f:Landroid/os/HandlerThread;

.field private g:Lcom/android/settings/ResetNetworkConfirm$b;

.field private h:Lcom/android/settings/ResetNetworkConfirm$c;

.field private i:I

.field private j:Landroid/app/ProgressDialog;

.field private k:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->i:I

    .line 177
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/ResetNetworkConfirm;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/settings/ResetNetworkConfirm;->i:I

    return p0
.end method

.method static synthetic a(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->j:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/ResetNetworkConfirm;Lcolor/support/v7/app/AlertDialog;)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->k:Lcolor/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static a(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "wifip2p"

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    const/4 v2, 0x0

    .line 199
    invoke-virtual {v0, v1, p0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {v0, p0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->factoryReset(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 3

    .line 2266
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 2267
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "restore default apn"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->f:Landroid/os/HandlerThread;

    .line 2268
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const p0, 0x7f121239

    const/4 v0, 0x0

    .line 2269
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 2270
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2273
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2275
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->h:Lcom/android/settings/ResetNetworkConfirm$c;

    if-nez v0, :cond_2

    .line 2276
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$c;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/ResetNetworkConfirm$c;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->h:Lcom/android/settings/ResetNetworkConfirm$c;

    .line 2278
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->g:Lcom/android/settings/ResetNetworkConfirm$b;

    if-nez v0, :cond_3

    .line 2279
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$b;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->f:Landroid/os/HandlerThread;

    .line 2280
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->h:Lcom/android/settings/ResetNetworkConfirm$c;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/settings/ResetNetworkConfirm$b;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/Looper;Landroid/content/Context;Lcom/android/settings/ResetNetworkConfirm$c;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->g:Lcom/android/settings/ResetNetworkConfirm$b;

    .line 2282
    :cond_3
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->g:Lcom/android/settings/ResetNetworkConfirm$b;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$b;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    .line 3254
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 3255
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    .line 3256
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v1, 0x7f120d3d

    .line 3258
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3257
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->j:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static synthetic lambda$uqo63SmSGtk4E5T08g8CmkCJInQ(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x54

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 324
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, "subscription"

    .line 328
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->i:I

    const-string v0, "erase_esim"

    .line 330
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->b:Z

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->d:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 304
    iget-object p2, p0, Lcom/android/settings/ResetNetworkConfirm;->d:Landroid/app/Activity;

    .line 305
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_network_reset"

    .line 304
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p2

    .line 306
    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->d:Landroid/app/Activity;

    .line 307
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 306
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const p2, 0x7f0d01e6

    .line 308
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 310
    new-instance p1, Lcom/android/settings/enterprise/a;

    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->d:Landroid/app/Activity;

    invoke-direct {p1, p3}, Lcom/android/settings/enterprise/a;-><init>(Landroid/app/Activity;)V

    .line 311
    invoke-virtual {p1, v0, p2}, Lcom/android/settings/enterprise/a;->a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$ResetNetworkConfirm$uqo63SmSGtk4E5T08g8CmkCJInQ;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$ResetNetworkConfirm$uqo63SmSGtk4E5T08g8CmkCJInQ;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    .line 312
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    .line 314
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/settings/ResetNetworkConfirm;->d:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    const p2, 0x7f0d02a0

    .line 316
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->a:Landroid/view/View;

    .line 1289
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->a:Landroid/view/View;

    const p2, 0x7f0a027b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/ResetNetworkConfirm;->e:Landroid/view/View$OnClickListener;

    .line 1290
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1295
    iget-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->b:Z

    if-eqz p1, :cond_2

    .line 1296
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->a:Landroid/view/View;

    const p2, 0x7f0a0565

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f121244

    .line 1297
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 319
    :cond_2
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->a:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->c:Lcom/android/settings/ResetNetworkConfirm$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 339
    invoke-virtual {v0, v1}, Lcom/android/settings/ResetNetworkConfirm$a;->cancel(Z)Z

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->c:Lcom/android/settings/ResetNetworkConfirm$a;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->k:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 351
    :cond_3
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    return-void
.end method
