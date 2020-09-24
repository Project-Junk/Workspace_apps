.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$7VrWGvF8OUomoYvWiFrT23JOQWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$7VrWGvF8OUomoYvWiFrT23JOQWk;->f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$7VrWGvF8OUomoYvWiFrT23JOQWk;->f$0:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    check-cast p1, Lcom/android/settingslib/wifi/a;

    check-cast p2, Lcom/android/settingslib/wifi/a;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->lambda$7VrWGvF8OUomoYvWiFrT23JOQWk(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;Lcom/android/settingslib/wifi/a;Lcom/android/settingslib/wifi/a;)I

    move-result p1

    return p1
.end method
