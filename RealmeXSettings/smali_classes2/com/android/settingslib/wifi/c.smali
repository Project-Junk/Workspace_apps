.class public final Lcom/android/settingslib/wifi/c;
.super Ljava/lang/Object;
.source "WifiSavedConfigUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 46
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    new-instance v3, Lcom/android/settingslib/wifi/a;

    invoke-direct {v3, p0, v2}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 60
    new-instance v2, Lcom/android/settingslib/wifi/a;

    invoke-direct {v2, p0, v1}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    return-object v0
.end method
