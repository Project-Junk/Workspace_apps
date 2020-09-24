.class final Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorWifiIpAddressPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->b()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x258

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
