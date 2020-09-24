.class final Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "WifiP2pSettings"

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 301
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 302
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 303
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " deleting group "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object v0

    .line 1039
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->a:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->g(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .line 305
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object v0

    .line 2035
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->a:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v0

    .line 305
    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;)V

    .line 304
    invoke-virtual {p1, p2, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 315
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->j(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    return-void

    .line 317
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, " No selected group to delete!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 321
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " forgetting selected group "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->i(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object v0

    .line 2039
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->a:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->a:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->j(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    :cond_4
    return-void
.end method
