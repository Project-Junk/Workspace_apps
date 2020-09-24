.class public Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative;
.super Ljava/lang/Object;
.source "WifiP2pManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;,
        Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiP2pManagerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$2;

    invoke-direct {v0, p3}, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$2;-><init>(Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$ActionListenerNative;)V

    .line 95
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/color/inner/net/wifi/p2p/WifiP2pManagerWrapper;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILcom/color/inner/net/wifi/p2p/WifiP2pManagerWrapper$ActionListenerWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiP2pManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 44
    :try_start_0
    new-instance v0, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$1;

    invoke-direct {v0, p2}, Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$1;-><init>(Lcom/color/compat/net/wifi/p2p/WifiP2pManagerNative$PersistentGroupInfoListenerNative;)V

    .line 51
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/net/wifi/p2p/WifiP2pManagerWrapper;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/color/inner/net/wifi/p2p/WifiP2pManagerWrapper$PersistentGroupInfoListenerWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiP2pManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
