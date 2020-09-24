.class public Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/datausage/c$a;
.implements Lcom/android/settings/widget/g$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final c:Landroid/content/IntentFilter;


# instance fields
.field final a:Lcom/android/settings/datausage/c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/android/settings/widget/g;

.field private final f:Landroid/net/ConnectivityManager;

.field private final g:Landroid/net/wifi/WifiManager;

.field private final h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->c:Landroid/content/IntentFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/g;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->b:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 113
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->h:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->d:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    .line 69
    new-instance p2, Lcom/android/settings/datausage/c;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->a:Lcom/android/settings/datausage/c;

    const-string p2, "connectivity"

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->f:Landroid/net/ConnectivityManager;

    const-string p2, "wifi"

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->g:Landroid/net/wifi/WifiManager;

    .line 73
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/g;->a(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/g;->a(Lcom/android/settings/widget/g$a;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->c()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Lcom/android/settings/widget/g;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1147
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->a(Z)V

    .line 1148
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->c()V

    return-void

    .line 1131
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {p1}, Lcom/android/settings/widget/g;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1132
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->a(Z)V

    .line 1134
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->c()V

    return-void

    .line 1128
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/g;->b(Z)V

    return-void

    .line 1143
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->a(Z)V

    .line 1144
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->c()V

    return-void

    .line 1137
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {p1}, Lcom/android/settings/widget/g;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1138
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->a(Z)V

    .line 1140
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/g;->b(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->a:Lcom/android/settings/datausage/c;

    .line 1070
    iget-object v1, v1, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/g;->b(Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method

.method public final a(IZ)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->c()V

    return-void
.end method

.method final b()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->f:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->b:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v3, Landroid/os/Handler;

    .line 110
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x1

    .line 109
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final b(IZ)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->a:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->a(Lcom/android/settings/datausage/c$a;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->b()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->h:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->a:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->b(Lcom/android/settings/datausage/c$a;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->e:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->c()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 0

    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->a()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->b()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
