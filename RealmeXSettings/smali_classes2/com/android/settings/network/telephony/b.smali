.class public final Lcom/android/settings/network/telephony/b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/b$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/net/NetworkRequest;

.field private d:Lcom/android/settings/network/telephony/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/b$a;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/network/telephony/b;->a:Landroid/content/Context;

    .line 40
    iget-object p1, p0, Lcom/android/settings/network/telephony/b;->a:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/b;->b:Landroid/net/ConnectivityManager;

    .line 41
    iput-object p2, p0, Lcom/android/settings/network/telephony/b;->d:Lcom/android/settings/network/telephony/b$a;

    .line 42
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 p2, 0xc

    .line 43
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/b;->c:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/android/settings/network/telephony/b;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/android/settings/network/telephony/b;->d:Lcom/android/settings/network/telephony/b$a;

    invoke-interface {p1}, Lcom/android/settings/network/telephony/b$a;->b()V

    :cond_0
    return-void
.end method

.method public final onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/settings/network/telephony/b;->d:Lcom/android/settings/network/telephony/b$a;

    invoke-interface {p1}, Lcom/android/settings/network/telephony/b$a;->b()V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/android/settings/network/telephony/b;->d:Lcom/android/settings/network/telephony/b$a;

    invoke-interface {p1}, Lcom/android/settings/network/telephony/b$a;->b()V

    return-void
.end method
