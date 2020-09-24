.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$b;,
        Lcom/android/settings/TrustedCredentialsSettings$c;,
        Lcom/android/settings/TrustedCredentialsSettings$a;,
        Lcom/android/settings/TrustedCredentialsSettings$d;,
        Lcom/android/settings/TrustedCredentialsSettings$e;,
        Lcom/android/settings/TrustedCredentialsSettings$f;
    }
.end annotation


# instance fields
.field public a:Landroid/os/UserManager;

.field public b:I

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/TrustedCredentialsSettings$e;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/TrustedCredentialsSettings$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/KeyguardManager;

.field private h:Landroid/widget/TabHost;

.field private i:Lcom/android/settings/TrustedCredentialsSettings$b;

.field private j:Ljava/util/function/IntConsumer;

.field private final k:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeyChainConnectionByProfileId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->c:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->f:Ljava/util/Set;

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->k:Landroid/util/SparseArray;

    .line 179
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->h:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$b;)Lcom/android/settings/TrustedCredentialsSettings$b;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->i:Lcom/android/settings/TrustedCredentialsSettings$b;

    return-object p1
.end method

.method private a(Lcom/android/settings/TrustedCredentialsSettings$f;)V
    .locals 10

    .line 301
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->h:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$f;->a(Lcom/android/settings/TrustedCredentialsSettings$f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$f;->c(Lcom/android/settings/TrustedCredentialsSettings$f;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 303
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$f;->b(Lcom/android/settings/TrustedCredentialsSettings$f;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->h:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 306
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$e;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$f;)V

    .line 307
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$e;->getGroupCount()I

    move-result v1

    .line 311
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->h:Landroid/widget/TabHost;

    iget p1, p1, Lcom/android/settings/TrustedCredentialsSettings$f;->d:I

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 312
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 315
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$e;->getGroupCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 316
    invoke-virtual {v0, v4}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    .line 317
    invoke-virtual {v0, v4}, Lcom/android/settings/TrustedCredentialsSettings$e;->b(I)Lcom/android/settings/TrustedCredentialsSettings$d;

    move-result-object v6

    const v7, 0x7f0d0377

    .line 320
    invoke-virtual {v2, v7, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 321
    invoke-virtual {v6, v7}, Lcom/android/settings/TrustedCredentialsSettings$d;->a(Landroid/widget/LinearLayout;)V

    const/4 v8, 0x1

    if-le v1, v8, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v3

    .line 323
    :goto_1
    invoke-virtual {v6, v9}, Lcom/android/settings/TrustedCredentialsSettings$d;->a(Z)V

    .line 324
    invoke-virtual {v6, v5}, Lcom/android/settings/TrustedCredentialsSettings$d;->b(Z)V

    const/4 v9, 0x2

    if-gt v1, v9, :cond_1

    goto :goto_2

    :cond_1
    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v8, v3

    .line 325
    :goto_2
    invoke-virtual {v6, v8}, Lcom/android/settings/TrustedCredentialsSettings$d;->c(Z)V

    if-eqz v5, :cond_3

    .line 327
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 329
    :cond_3
    invoke-virtual {p1, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;)V
    .locals 2

    .line 1970
    new-instance v0, Lcom/android/settings/l;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/l;-><init>(Landroid/app/Activity;Lcom/android/settings/l$a;)V

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 2068
    new-array p0, p0, [Lcom/android/settings/TrustedCredentialsSettings$c;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/TrustedCredentialsSettings$c;

    aput-object p1, v1, p0

    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/l;->a([Lcom/android/settings/TrustedCredentialsSettings$c;)Lcom/android/settings/l;

    move-result-object p0

    .line 1972
    invoke-virtual {p0}, Lcom/android/settings/l;->show()Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V
    .locals 2

    .line 2955
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$c;

    .line 2954
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settings/TrustedCredentialsSettings$c;

    .line 2956
    new-instance v0, Lcom/android/settings/l;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/l;-><init>(Landroid/app/Activity;Lcom/android/settings/l$a;)V

    .line 2957
    invoke-virtual {v0, p1}, Lcom/android/settings/l;->a([Lcom/android/settings/TrustedCredentialsSettings$c;)Lcom/android/settings/l;

    move-result-object p1

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 2958
    invoke-virtual {p1, v0}, Lcom/android/settings/l;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 2966
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->k:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;)V
    .locals 3

    .line 2283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2284
    iget-object v1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    const-string v2, "subjectPrimary"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    iget-object v1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    const-string v2, "subjectSecondary"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    iget-boolean p1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "deleted"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "20120"

    const-string/jumbo v1, "switch_trusted_credential"

    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/TrustedCredentialsSettings;)Z
    .locals 1

    .line 2950
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->b:I

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Lcom/android/settings/TrustedCredentialsSettings$f;Lcom/android/settings/TrustedCredentialsSettings$e;)Lcom/android/settings/TrustedCredentialsSettings$a;
    .locals 1

    .line 1073
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$a;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$f;Lcom/android/settings/TrustedCredentialsSettings$e;)V

    return-object v0
.end method

.method public final a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsSettings$c;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 979
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->k:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->k:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    if-nez v2, :cond_0

    .line 984
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1

    return-object v2

    .line 987
    :cond_0
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 988
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$c;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 989
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 990
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    .line 992
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7, v4}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v7

    .line 993
    invoke-static {v7}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 994
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    move-object v6, v0

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while retrieving certificate chain for root "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$c;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrustedCredentialsSettings"

    .line 998
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v6
.end method

.method protected final a(I)Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->g:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 344
    :cond_0
    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->e:I

    const/4 p1, 0x1

    .line 345
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return p1
.end method

.method public final a(ILjava/util/function/IntConsumer;)Z
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->d:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1017
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1019
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings;->j:Ljava/util/function/IntConsumer;

    :cond_1
    return p1
.end method

.method public final b(Lcom/android/settings/TrustedCredentialsSettings$c;)V
    .locals 2

    .line 1006
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsSettings$b;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;B)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsSettings$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 267
    iget p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->e:I

    .line 268
    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings;->j:Ljava/util/function/IntConsumer;

    const/16 v0, -0x2710

    .line 271
    iput v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->e:I

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->j:Ljava/util/function/IntConsumer;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 274
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings;->d:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 276
    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "user"

    .line 199
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    const-string v1, "keyguard"

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->g:Landroid/app/KeyguardManager;

    .line 202
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, -0x2710

    const-string v3, "ARG_SHOW_NEW_FOR_USER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->b:I

    .line 204
    new-instance v1, Landroid/util/ArraySet;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->d:Landroid/util/ArraySet;

    .line 205
    iput v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->e:I

    if-eqz p1, :cond_0

    const-string v1, "ConfirmingCredentialUser"

    .line 207
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->e:I

    const-string v1, "ConfirmedCredentialUsers"

    .line 209
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->d:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->j:Ljava/util/function/IntConsumer;

    .line 218
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 219
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 220
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 221
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const p1, 0x7f121718

    .line 224
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0378

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->h:Landroid/widget/TabHost;

    .line 238
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->h:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 239
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$f;->a:Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings$f;)V

    .line 241
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$f;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings$f;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->h:Landroid/widget/TabHost;

    sget-object p2, Lcom/android/settings/TrustedCredentialsSettings$f;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$f;->a(Lcom/android/settings/TrustedCredentialsSettings$f;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->h:Landroid/widget/TabHost;

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;

    .line 252
    invoke-virtual {v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->cancel(Z)Z

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 255
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->i:Lcom/android/settings/TrustedCredentialsSettings$b;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$b;->cancel(Z)Z

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->i:Lcom/android/settings/TrustedCredentialsSettings$b;

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->k:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1292
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->k:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 1294
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->k:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1296
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->k:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    return-void

    :catchall_0
    move-exception v1

    .line 1297
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 229
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->d:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "ConfirmedCredentialUsers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 232
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->e:I

    const-string v1, "ConfirmingCredentialUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
