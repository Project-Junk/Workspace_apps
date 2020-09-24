.class public Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;
.super Landroidx/preference/Preference;
.source "WifiP2pPersistentGroup.java"


# instance fields
.field public a:Landroid/net/wifi/p2p/WifiP2pGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->a:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 31
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->a:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
