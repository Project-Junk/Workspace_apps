.class final Lcom/android/settingslib/wifi/d$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/wifi/d;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/d;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settingslib/wifi/d$2;->a:Lcom/android/settingslib/wifi/d;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/android/settingslib/wifi/d$2;->a:Lcom/android/settingslib/wifi/d;

    .line 1039
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/d;->a()V

    .line 70
    iget-object p1, p0, Lcom/android/settingslib/wifi/d$2;->a:Lcom/android/settingslib/wifi/d;

    .line 2039
    iget-object p1, p1, Lcom/android/settingslib/wifi/d;->h:Ljava/lang/Runnable;

    .line 70
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
