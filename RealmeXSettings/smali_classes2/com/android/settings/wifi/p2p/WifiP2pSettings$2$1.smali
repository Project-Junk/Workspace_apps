.class final Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    .line 247
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1219fe

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onSuccess()V
    .locals 2

    .line 244
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pSettings"

    const-string v1, " device rename success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
