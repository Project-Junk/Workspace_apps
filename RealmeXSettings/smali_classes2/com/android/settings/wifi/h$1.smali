.class final Lcom/android/settings/wifi/h$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSummaryUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/h;-><init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/h;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/h;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/wifi/h$1;->a:Lcom/android/settings/wifi/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_TO_DATA"

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/h$1;->a:Lcom/android/settings/wifi/h;

    const-string v2, "wifi_to_data"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/wifi/h;->a(Lcom/android/settings/wifi/h;Z)Z

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->p(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/android/settings/wifi/h$1;->a:Lcom/android/settings/wifi/h;

    invoke-static {p1}, Lcom/android/settings/wifi/h;->a(Lcom/android/settings/wifi/h;)Lcom/android/settingslib/wifi/d;

    move-result-object p1

    const/4 v0, 0x1

    .line 1152
    invoke-virtual {p1, p2, v0}, Lcom/android/settingslib/wifi/d;->a(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/h$1;->a:Lcom/android/settings/wifi/h;

    invoke-static {p1}, Lcom/android/settings/wifi/h;->a(Lcom/android/settings/wifi/h;)Lcom/android/settingslib/wifi/d;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcom/android/settingslib/wifi/d;->a(Landroid/content/Intent;Z)V

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/h$1;->a:Lcom/android/settings/wifi/h;

    invoke-static {p1}, Lcom/android/settings/wifi/h;->b(Lcom/android/settings/wifi/h;)V

    return-void
.end method
