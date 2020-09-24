.class final Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWakeupPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiWakeupPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiWakeupPreferenceController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;->a:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;->a:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    iget-object p2, p1, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
