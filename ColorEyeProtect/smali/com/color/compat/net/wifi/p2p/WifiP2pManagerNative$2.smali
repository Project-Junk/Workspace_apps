.class Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/net/wifi/p2p/WifiP2pManagerWrapper$ActionListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;


# direct methods
.method constructor <init>(Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$2;->val$listener:Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$2;->val$listener:Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;

    invoke-interface {p0, p1}, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;->onFailure(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$2;->val$listener:Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;

    invoke-interface {p0}, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;->onSuccess()V

    return-void
.end method
