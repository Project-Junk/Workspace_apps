.class final Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->a:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->a:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->b(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->a:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->b(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
