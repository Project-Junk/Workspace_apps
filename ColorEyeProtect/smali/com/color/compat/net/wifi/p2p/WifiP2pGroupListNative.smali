.class public Lcom/color/compat/net/wifi/p2p/WifiP2pGroupListNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiP2pGroupListNative"


# instance fields
.field private mWifiP2pGroupListWrapper:Lcom/color/inner/net/wifi/p2p/WifiP2pGroupListWrapper;


# direct methods
.method public constructor <init>(Lcom/color/inner/net/wifi/p2p/WifiP2pGroupListWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupListWrapper:Lcom/color/inner/net/wifi/p2p/WifiP2pGroupListWrapper;

    return-void
.end method


# virtual methods
.method public getGroupList()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/color/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupListWrapper:Lcom/color/inner/net/wifi/p2p/WifiP2pGroupListWrapper;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/color/compat/net/wifi/p2p/WifiP2pGroupListNative;->mWifiP2pGroupListWrapper:Lcom/color/inner/net/wifi/p2p/WifiP2pGroupListWrapper;

    invoke-virtual {p0}, Lcom/color/inner/net/wifi/p2p/WifiP2pGroupListWrapper;->getGroupList()Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "WifiP2pGroupListNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
