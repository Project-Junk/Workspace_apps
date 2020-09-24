.class Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/net/wifi/p2p/WifiP2pManagerWrapper$PersistentGroupInfoListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;


# direct methods
.method constructor <init>(Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$1;->val$listener:Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentGroupInfoAvailable(Lcom/color/inner/net/wifi/p2p/WifiP2pGroupListWrapper;)V
    .locals 1

    iget-object p0, p0, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$1;->val$listener:Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;

    new-instance v0, Lcom/color/compat/net/wifi/p2p/WifiP2pGroupListNative;

    invoke-direct {v0, p1}, Lcom/color/compat/net/wifi/p2p/WifiP2pGroupListNative;-><init>(Lcom/color/inner/net/wifi/p2p/WifiP2pGroupListWrapper;)V

    invoke-interface {p0, v0}, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;->onPersistentGroupInfoAvailable(Lcom/color/compat/net/wifi/p2p/WifiP2pGroupListNative;)V

    return-void
.end method
