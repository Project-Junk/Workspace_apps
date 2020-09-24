.class final Lcom/android/settings/wifi/b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CaptivePortalNetworkCallback.java"


# instance fields
.field final a:Landroid/net/Network;

.field b:Z

.field private final c:Lcom/android/settings/wifi/ConnectedAccessPointPreference;


# direct methods
.method constructor <init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    iput-object p1, p0, Lcom/android/settings/wifi/b;->a:Landroid/net/Network;

    .line 35
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/b;->c:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/b;->a:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/b;->c:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/b;->a:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p2}, Lcom/android/settings/wifi/i;->a(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/b;->b:Z

    .line 49
    iget-object p1, p0, Lcom/android/settings/wifi/b;->c:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iget-boolean p2, p0, Lcom/android/settings/wifi/b;->b:Z

    .line 1086
    iget-boolean v0, p1, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->a:Z

    if-eq v0, p2, :cond_0

    .line 1087
    iput-boolean p2, p1, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->a:Z

    .line 1088
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->b()V

    :cond_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/b;->a:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/android/settings/wifi/b;->b:Z

    :cond_0
    return-void
.end method
