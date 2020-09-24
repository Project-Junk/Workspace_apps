.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$8;
.super Landroid/content/BroadcastReceiver;
.source "ColorLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/ColorLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$8;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "ColorLocationSettings"

    const/4 v0, 0x3

    .line 563
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Received settings change intent: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$8;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->c(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Lcom/coloros/settings/feature/security/location/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/location/c;->a()V

    return-void
.end method
