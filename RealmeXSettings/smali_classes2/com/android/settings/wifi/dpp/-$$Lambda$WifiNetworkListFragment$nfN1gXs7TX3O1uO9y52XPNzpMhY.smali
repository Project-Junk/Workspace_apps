.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$nfN1gXs7TX3O1uO9y52XPNzpMhY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$nfN1gXs7TX3O1uO9y52XPNzpMhY;->f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$nfN1gXs7TX3O1uO9y52XPNzpMhY;->f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    check-cast p1, Lcom/android/settingslib/wifi/a;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->lambda$nfN1gXs7TX3O1uO9y52XPNzpMhY(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;Lcom/android/settingslib/wifi/a;)Lcom/android/settingslib/wifi/a;

    move-result-object p1

    return-object p1
.end method
