.class final Lcom/android/settings/wifi/p2p/WifiP2pSettings$4$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    .line 288
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " cancel connect fail "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiP2pSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onSuccess()V
    .locals 2

    .line 285
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pSettings"

    const-string v1, " cancel connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
