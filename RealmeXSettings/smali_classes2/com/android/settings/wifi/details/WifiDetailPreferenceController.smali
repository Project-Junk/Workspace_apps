.class public Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/wifi/WifiDialog$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;
    }
.end annotation


# static fields
.field static a:Landroid/os/CountDownTimer;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final e:Z

.field private static final f:J


# instance fields
.field private A:I

.field private B:Landroid/net/wifi/WifiManager$ActionListener;

.field private C:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private D:Lcom/android/settings/widget/b;

.field private E:Landroidx/preference/Preference;

.field private F:Landroidx/preference/Preference;

.field private G:Landroidx/preference/Preference;

.field private H:Landroidx/preference/Preference;

.field private I:Landroidx/preference/Preference;

.field private J:Landroidx/preference/Preference;

.field private K:Landroidx/preference/Preference;

.field private L:Landroidx/preference/Preference;

.field private M:Landroidx/preference/Preference;

.field private N:Landroidx/preference/Preference;

.field private O:Landroidx/preference/Preference;

.field private P:Landroidx/preference/PreferenceCategory;

.field private Q:Landroidx/preference/Preference;

.field private R:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final S:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;

.field private final T:Landroid/content/IntentFilter;

.field private final U:Landroid/content/BroadcastReceiver;

.field private final V:Landroid/net/NetworkRequest;

.field private final W:Landroid/net/ConnectivityManager$NetworkCallback;

.field b:Landroidx/preference/Preference;

.field c:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

.field final d:Lcom/android/settingslib/wifi/WifiTracker$b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private g:Lcom/android/settingslib/wifi/a;

.field private final h:Landroid/net/ConnectivityManager;

.field private final i:Landroidx/preference/PreferenceFragmentCompat;

.field private final j:Landroid/os/Handler;

.field private k:Landroid/net/LinkProperties;

.field private l:Landroid/net/Network;

.field private m:Landroid/net/NetworkInfo;

.field private n:Landroid/net/NetworkCapabilities;

.field private o:I

.field private p:I

.field private q:Z

.field private r:[Ljava/lang/String;

.field private s:Landroid/net/wifi/WifiConfiguration;

.field private t:Landroid/net/wifi/WifiInfo;

.field private final u:Landroid/net/wifi/WifiManager;

.field private final v:Lcom/android/settingslib/wifi/WifiTracker;

.field private final w:Lcom/android/settingslib/core/instrumentation/d;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl"

    const/4 v1, 0x3

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->e:Z

    const-wide/16 v0, 0xa

    .line 146
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->f:J

    return-void
.end method

.method private constructor <init>(Lcom/android/settingslib/wifi/a;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 322
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o:I

    .line 197
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->U:Landroid/content/BroadcastReceiver;

    .line 220
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 221
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->V:Landroid/net/NetworkRequest;

    .line 224
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->W:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 269
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->d:Lcom/android/settingslib/wifi/WifiTracker$b;

    .line 324
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 325
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h:Landroid/net/ConnectivityManager;

    .line 326
    iput-object p4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 327
    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->j:Landroid/os/Handler;

    .line 328
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f03011c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->r:[Ljava/lang/String;

    .line 1764
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 329
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    .line 330
    iput-object p7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    .line 331
    iput-object p8, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->w:Lcom/android/settingslib/core/instrumentation/d;

    .line 332
    iput-object p9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->S:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;

    .line 334
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->T:Landroid/content/IntentFilter;

    .line 335
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->T:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->T:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->T:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iput-object p6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->R:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 340
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 342
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 343
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->d:Lcom/android/settingslib/wifi/WifiTracker$b;

    iget-object p3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->R:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 342
    invoke-static {p1, p2, p3}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->a(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->v:Lcom/android/settingslib/wifi/WifiTracker;

    .line 348
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->z:Z

    .line 351
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->l()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->y:Z

    .line 352
    iput v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->A:I

    .line 353
    new-instance p1, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->B:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07077d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 612
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 613
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    if-ne v1, v0, :cond_0

    if-eq v2, v0, :cond_1

    .line 615
    :cond_0
    const-class v1, Landroid/graphics/drawable/VectorDrawable;

    .line 616
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-object p1

    :cond_2
    const/4 v1, 0x0

    .line 621
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 624
    invoke-static {p1, v0, v0}, Lcom/android/settings/m;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 627
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 630
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {p1, v1}, Lcom/android/settings/m;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method public static a(Lcom/android/settingslib/wifi/a;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/d;)Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .locals 11

    .line 306
    new-instance v10, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    new-instance v9, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;

    move-object v3, p2

    invoke-direct {v9, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;-><init>(Landroid/content/Context;)V

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/settingslib/wifi/a;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;)V

    return-object v10
.end method

.method static synthetic a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/a;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    .line 817
    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 819
    invoke-static {v0, p0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 888
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 12768
    iget-object p2, p2, Lcom/android/settingslib/wifi/a;->p:Ljava/lang/String;

    .line 888
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 890
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to remove Passpoint configuration for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 13768
    iget-object p2, p2, Lcom/android/settingslib/wifi/a;->p:Ljava/lang/String;

    .line 891
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiDetailsPrefCtrl"

    .line 890
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->w:Lcom/android/settingslib/core/instrumentation/d;

    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 894
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x89

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 893
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 895
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 13928
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$HN3RCzwhUES5BTulrWP6bcxpHXo;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$HN3RCzwhUES5BTulrWP6bcxpHXo;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 1

    .line 728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 730
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 732
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b(I)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_wifi_details_datausage_header"

    .line 6978
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->D:Lcom/android/settings/widget/b;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    const/4 v2, 0x1

    .line 455
    invoke-virtual {v1, v2}, Lcom/android/settingslib/wifi/a;->b(Z)Ljava/lang/String;

    move-result-object v1

    .line 7173
    iput-object v1, v0, Lcom/android/settings/widget/b;->c:Ljava/lang/CharSequence;

    .line 454
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 456
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->R:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 457
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method private b(I)V
    .locals 8

    .line 1004
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateConnectingState from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiDetailsPrefCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->A:I

    const v3, 0x7f1219af

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v7, :cond_3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_7

    .line 1082
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid state : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ne p1, v5, :cond_1

    const-string v1, "connected"

    .line 1052
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-static {}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->v()V

    .line 1054
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(I)V

    .line 1055
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121955

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 1057
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1056
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1058
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1060
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->e()V

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    const-string p1, "AP not in range"

    .line 1062
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-static {}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->v()V

    const p1, 0x7f1219f0

    .line 1066
    invoke-static {v0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1068
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1069
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(I)V

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_8

    const-string p1, "failed"

    .line 1071
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-static {}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->v()V

    .line 1075
    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1077
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1078
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(I)V

    goto/16 :goto_3

    :cond_3
    if-ne p1, v5, :cond_4

    const-string v1, "Turn on Wi-Fi automatically!"

    .line 1010
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(I)V

    const v1, 0x7f121a74

    .line 1012
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1015
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1017
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u()V

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_6

    const-string v0, "connecting..."

    .line 1019
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1022
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->B:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1024
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->B:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1027
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u()V

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    const-string p1, "Wi-Fi failed to enable network!"

    .line 1029
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->v()V

    .line 1033
    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1035
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1036
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(I)V

    move p1, v7

    :cond_7
    :goto_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    const-string p1, "disconnected"

    .line 1041
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(I)V

    .line 1045
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->e()V

    const/4 p1, 0x0

    .line 1047
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    goto :goto_3

    :cond_8
    :goto_2
    move v7, p1

    .line 1087
    :goto_3
    iput v7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->A:I

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .line 13983
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 13985
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    const v0, 0x7f1219af

    const/4 v1, 0x0

    .line 13986
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 13988
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 13993
    iput p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->A:I

    .line 13995
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 13996
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b(I)V

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 13999
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->e()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    return-object p0
.end method

.method private c(I)V
    .locals 4

    const v0, 0x7f080845

    const v1, 0x7f121953

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1114
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid connect button state : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDetailsPrefCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1099
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->e(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    .line 1100
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    .line 1101
    invoke-virtual {p1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    .line 1102
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->e(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void

    .line 1108
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->e(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    .line 1109
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    .line 1110
    invoke-virtual {p1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    .line 1111
    invoke-virtual {p1, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->e(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void

    .line 1094
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f121956

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->e(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    .line 1095
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 3

    .line 14935
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->w:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 14936
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x3f0

    .line 14935
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 14937
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k:Landroid/net/LinkProperties;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    .line 463
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k:Landroid/net/LinkProperties;

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 3

    .line 15859
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15860
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 15861
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 15874
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_4

    .line 15875
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 15863
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {p1, v1}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15885
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120a22

    new-instance v2, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$TPYWn05ZReQB2shk0YKp4AbzWrY;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$TPYWn05ZReQB2shk0YKp4AbzWrY;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 15886
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120491

    .line 15897
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1219b4

    .line 15898
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120a23

    .line 15899
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 15900
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 15901
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void

    .line 15869
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 16768
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->p:Ljava/lang/String;

    .line 15869
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15871
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to remove Passpoint configuration for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 17768
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->p:Ljava/lang/String;

    .line 15872
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDetailsPrefCtrl"

    .line 15871
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15878
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->w:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 15879
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x89

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    .line 15878
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 15880
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 490
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Update UI!"

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b()V

    .line 500
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o()V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h()V

    .line 505
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i()V

    .line 507
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->j()V

    .line 509
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k()V

    .line 511
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->q()V

    .line 513
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l()V

    .line 515
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->m()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->q()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method private f()Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 522
    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->x:Z

    .line 523
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g()V

    .line 525
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 526
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->d()V

    .line 527
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->m:Landroid/net/NetworkInfo;

    .line 528
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    .line 529
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->m:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v1

    or-int/2addr v1, v2

    goto :goto_1

    .line 532
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->x:Z

    return v2

    :cond_2
    move v1, v2

    .line 539
    :goto_1
    iget v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o:I

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/a;->c()I

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    or-int/2addr v1, v3

    .line 541
    iget-boolean v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->x:Z

    if-eq v0, v3, :cond_4

    move v2, v5

    :cond_4
    or-int v0, v1, v2

    .line 543
    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->z:Z

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v2

    if-eq v1, v2, :cond_6

    .line 544
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->z:Z

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b(I)V

    move v0, v5

    :cond_6
    return v0
.end method

.method static synthetic g(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->x:Z

    .line 555
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->v:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/a;

    .line 556
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/wifi/a;->a(Lcom/android/settingslib/wifi/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 7764
    iget-object v1, v2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 558
    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    .line 559
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->x:Z

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method private h()V
    .locals 6

    .line 573
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->c()I

    move-result v0

    .line 574
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 7990
    iget v1, v1, Lcom/android/settingslib/wifi/a;->h:I

    .line 575
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 7998
    iget-boolean v2, v2, Lcom/android/settingslib/wifi/a;->j:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 8994
    iget-boolean v2, v2, Lcom/android/settingslib/wifi/a;->i:Z

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 579
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->x:Z

    if-eqz v5, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->E:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v0, -0x1

    .line 581
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o:I

    return-void

    .line 585
    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o:I

    if-ne v3, v0, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->p:I

    if-ne v3, v1, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->q:Z

    if-ne v3, v2, :cond_2

    return-void

    .line 590
    :cond_2
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o:I

    .line 591
    iput v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->p:I

    .line 592
    iput-boolean v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->q:Z

    .line 593
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->S:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;

    iget v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o:I

    iget v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->p:I

    iget-boolean v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->q:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;->a(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->D:Lcom/android/settings/widget/b;

    if-eqz v1, :cond_3

    .line 597
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Z)Landroid/view/View;

    .line 601
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x1010429

    invoke-static {v1, v2}, Lcom/android/settings/m;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 603
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->E:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->E:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->r:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->E:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkInfo;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->m:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->H:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 641
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    const/16 v2, 0x960

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121933

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x1324

    if-lt v0, v2, :cond_2

    const/16 v2, 0x170c

    if-ge v0, v2, :cond_2

    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121934

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 657
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->H:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->H:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 650
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unexpected frequency "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiDetailsPrefCtrl"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->A:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 653
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->H:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method

.method private j()V
    .locals 6

    .line 662
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->F:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 667
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v0

    .line 668
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->F:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->F:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12174c

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    .line 670
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    .line 669
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic j(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b()V

    return-void
.end method

.method private k()V
    .locals 6

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->G:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 679
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v0

    .line 680
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->G:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->G:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f1212be

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    .line 682
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    .line 681
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic k(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->J:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 687
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->J:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->J:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 9095
    iget-object v1, v1, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    .line 688
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic l(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->y:Z

    return p0
.end method

.method public static synthetic lambda$1jsD6tT-I7opdTiGrx_Fs2-50zA(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$HN3RCzwhUES5BTulrWP6bcxpHXo(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->w()V

    return-void
.end method

.method public static synthetic lambda$PGOYHOMg5hREND8Ngi0lVOf8UDM(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$TPYWn05ZReQB2shk0YKp4AbzWrY(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$dBsERKxF4_TdCMbVv9nhmbRBEVs(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$nBIT8zczg-xnwweBNpd7YqR5tN8(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Landroid/view/View;)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 695
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->K:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->K:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 702
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->K:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic m(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 2

    .line 18566
    sget-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Exiting the WifiNetworkDetailsPage"

    .line 18567
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18569
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic n(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->A:I

    return p0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 719
    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 720
    aget-object v0, v0, v1

    return-object v0

    :cond_2
    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Can\'t get device MAC address!"

    .line 723
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic o(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method private o()V
    .locals 5

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->y:Z

    if-eqz v1, :cond_0

    const v1, 0x7f121965

    goto :goto_0

    :cond_0
    const v1, 0x7f120a22

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 741
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->r()Z

    move-result v0

    .line 742
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s()Z

    move-result v1

    .line 743
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->p()Z

    move-result v2

    .line 744
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t()Z

    move-result v3

    .line 746
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v4, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 747
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v4, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 748
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v4, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->e(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 749
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->g(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 750
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setVisible(Z)V

    return-void
.end method

.method static synthetic p(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g()V

    return-void
.end method

.method private p()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q()V
    .locals 9

    .line 763
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 775
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, "\n"

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 778
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    .line 779
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 780
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 781
    :cond_2
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_1

    .line 782
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 788
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 789
    invoke-virtual {v7}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 790
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 796
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v7, Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;->INSTANCE:Lcom/android/settings/wifi/details/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;

    .line 797
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 798
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 801
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->L:Landroidx/preference/Preference;

    invoke-static {v3, v5}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 802
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->N:Landroidx/preference/Preference;

    invoke-static {v3, v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 803
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->M:Landroidx/preference/Preference;

    invoke-static {v3, v4}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 804
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->O:Landroidx/preference/Preference;

    invoke-static {v3, v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 807
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->Q:Landroidx/preference/Preference;

    .line 808
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->P:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void

    .line 811
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->P:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void

    .line 764
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->L:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->N:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 766
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->M:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->O:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->P:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method

.method static synthetic q(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->x:Z

    return p0
.end method

.method private r()Z
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 830
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private s()Z
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n:Landroid/net/NetworkCapabilities;

    invoke-static {v0}, Lcom/android/settings/wifi/i;->a(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private t()Z
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 9764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 852
    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/a;->b(Landroid/content/Context;Lcom/android/settingslib/wifi/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private u()V
    .locals 7

    .line 1120
    sget-object v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1121
    invoke-static {}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->v()V

    .line 1124
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;

    sget-wide v3, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->f:J

    const-wide/16 v1, 0x1

    add-long v5, v3, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;JJ)V

    .line 1148
    sput-object v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private static v()V
    .locals 1

    .line 1152
    sget-object v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    return-void

    .line 1154
    :cond_0
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1155
    sput-object v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a:Landroid/os/CountDownTimer;

    return-void
.end method

.method private synthetic w()V
    .locals 8

    .line 11908
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/wifi/a;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    .line 11912
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11914
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->w:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v3, 0x0

    const/16 v4, 0x6ae

    const/16 v5, 0x63b

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 11920
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->s:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/i;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 379
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "connection_header"

    .line 2425
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 2427
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "settings_wifi_details_datausage_header"

    .line 2978
    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2428
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    const-string v0, "status_header"

    .line 2429
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b:Landroidx/preference/Preference;

    .line 2430
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 2431
    new-instance v0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 2432
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->R:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 3103
    iget-object v6, v6, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    .line 2433
    invoke-direct {v0, v1, v4, v5, v6}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    goto :goto_0

    .line 2437
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    .line 2439
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i:Landroidx/preference/PreferenceFragmentCompat;

    const v5, 0x7f0a0260

    .line 2440
    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v5

    .line 2438
    invoke-static {v1, v4, v5}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->D:Lcom/android/settings/widget/b;

    const v1, 0x7f0a0262

    .line 2442
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2444
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2446
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->D:Lcom/android/settings/widget/b;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 3163
    iput-object v1, v0, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    :goto_0
    const-string v0, "buttons"

    .line 383
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f120a22

    .line 384
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f080823

    .line 385
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$1jsD6tT-I7opdTiGrx_Fs2-50zA;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$1jsD6tT-I7opdTiGrx_Fs2-50zA;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 386
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f121a54

    .line 387
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f08083e

    .line 388
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$PGOYHOMg5hREND8Ngi0lVOf8UDM;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$PGOYHOMg5hREND8Ngi0lVOf8UDM;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 389
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f121953

    .line 390
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->e(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f080845

    .line 391
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$dBsERKxF4_TdCMbVv9nhmbRBEVs;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$dBsERKxF4_TdCMbVv9nhmbRBEVs;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 393
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->f(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 3310
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f12146c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3311
    iget-object v4, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->a:Lcom/android/settingslib/widget/ActionButtonsPreference$a;

    .line 3360
    iget-object v4, v4, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->b:Ljava/lang/CharSequence;

    .line 3311
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3312
    iget-object v4, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->a:Lcom/android/settingslib/widget/ActionButtonsPreference$a;

    .line 4360
    iput-object v1, v4, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->b:Ljava/lang/CharSequence;

    .line 3313
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    .line 395
    :cond_1
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a()Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$nBIT8zczg-xnwweBNpd7YqR5tN8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$nBIT8zczg-xnwweBNpd7YqR5tN8;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 5353
    iget-object v4, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->a:Lcom/android/settingslib/widget/ActionButtonsPreference$a;

    .line 5360
    iget-object v4, v4, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->d:Landroid/view/View$OnClickListener;

    if-eq v1, v4, :cond_2

    .line 5354
    iget-object v4, v0, Lcom/android/settingslib/widget/ActionButtonsPreference;->a:Lcom/android/settingslib/widget/ActionButtonsPreference$a;

    .line 6360
    iput-object v1, v4, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->d:Landroid/view/View$OnClickListener;

    .line 5355
    invoke-virtual {v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    .line 396
    :cond_2
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->C:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const-string v0, "signal_strength"

    .line 398
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->E:Landroidx/preference/Preference;

    const-string v0, "tx_link_speed"

    .line 399
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->F:Landroidx/preference/Preference;

    const-string v0, "rx_link_speed"

    .line 400
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->G:Landroidx/preference/Preference;

    const-string v0, "frequency"

    .line 401
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->H:Landroidx/preference/Preference;

    const-string v0, "security"

    .line 402
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->I:Landroidx/preference/Preference;

    const-string v0, "ssid"

    .line 404
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->J:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    .line 405
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->K:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    .line 406
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->L:Landroidx/preference/Preference;

    const-string v0, "gateway"

    .line 407
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->M:Landroidx/preference/Preference;

    const-string v0, "subnet_mask"

    .line 408
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->N:Landroidx/preference/Preference;

    const-string v0, "dns"

    .line 409
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->O:Landroidx/preference/Preference;

    const-string v0, "ipv6_category"

    .line 411
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->P:Landroidx/preference/PreferenceCategory;

    const-string v0, "ipv6_addresses"

    .line 412
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->Q:Landroidx/preference/Preference;

    .line 414
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1, v3}, Lcom/android/settingslib/wifi/a;->a(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SAE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    .line 6764
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 415
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 416
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->I:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121a40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 419
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->I:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/wifi/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->I:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/wifi/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l:Landroid/net/Network;

    .line 481
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k:Landroid/net/LinkProperties;

    .line 482
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n:Landroid/net/NetworkCapabilities;

    .line 483
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->m:Landroid/net/NetworkInfo;

    .line 484
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->t:Landroid/net/wifi/WifiInfo;

    .line 485
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->U:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->W:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 471
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->d()V

    .line 472
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->e()V

    .line 473
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->U:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->T:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 474
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->V:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->W:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 10092
    iget-object v0, p1, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u:Landroid/net/wifi/WifiManager;

    .line 11092
    iget-object p1, p1, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    .line 943
    invoke-virtual {p1}, Lcom/android/settings/wifi/c;->b()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method
