.class final Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorWifiEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;->a:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;->a:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    const/4 v0, 0x4

    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;I)V

    return-void

    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;->a:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    const-string v0, "networkInfo"

    .line 91
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    .line 92
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    .line 90
    invoke-static {p1, p2}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;->a:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    invoke-static {p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->b(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;Landroid/net/NetworkInfo$DetailedState;)V

    return-void

    :cond_1
    const-string v0, "android.net.wifi.WIFI_TO_DATA"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;->a:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    const/4 v0, 0x0

    const-string v1, "wifi_to_data"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->b(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;I)I

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;->a:Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;

    invoke-static {p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->b(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;Landroid/net/NetworkInfo$DetailedState;)V

    :cond_2
    return-void
.end method
