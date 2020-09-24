.class final Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private a(Landroid/net/NetworkCapabilities;I)Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->f(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->f(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->f(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x10

    .line 248
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x11

    .line 249
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x18

    .line 250
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->g(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->h(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->i(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 252
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->j(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 255
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->k(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 256
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->e(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :cond_2
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->d(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 229
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->e(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :cond_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->l(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->c(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->m(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :cond_0
    return-void
.end method
