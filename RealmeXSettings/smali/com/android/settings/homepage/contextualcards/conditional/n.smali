.class public final Lcom/android/settings/homepage/contextualcards/conditional/n;
.super Ljava/lang/Object;
.source "HotspotConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/n$a;
    }
.end annotation


# static fields
.field static final a:I

.field private static final b:Landroid/content/IntentFilter;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final e:Landroid/net/wifi/WifiManager;

.field private final f:Lcom/android/settings/homepage/contextualcards/conditional/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "HotspotConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/n;->a:I

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/n;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    .line 55
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->e:Landroid/net/wifi/WifiManager;

    .line 56
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/n$a;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/n$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/n;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->f:Lcom/android/settings/homepage/contextualcards/conditional/n$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/homepage/contextualcards/conditional/n;)Lcom/android/settings/homepage/contextualcards/conditional/i;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    .line 82
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_tethering"

    .line 81
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 71
    new-instance v0, Lcom/android/settings/core/f;

    invoke-direct {v0, p1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/TetherSettings;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x23

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12168e

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->f:Lcom/android/settings/homepage/contextualcards/conditional/n$a;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/n;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->f:Lcom/android/settings/homepage/contextualcards/conditional/n$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final d()J
    .locals 2

    .line 61
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/n;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 94
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/n;->a:I

    int-to-long v1, v1

    .line 1070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x17e

    .line 1075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 96
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    const v2, 0x7f1205e2

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    .line 98
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    const v3, 0x7f1205de

    .line 99
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    .line 100
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 2118
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2120
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    const-string v2, "com.android.internal.R.string.wifi_tether_configure_ssid_default"

    .line 2121
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2120
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 2123
    :cond_0
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 101
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/n;->c:Landroid/content/Context;

    const v2, 0x7f080725

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 2390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 104
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method
