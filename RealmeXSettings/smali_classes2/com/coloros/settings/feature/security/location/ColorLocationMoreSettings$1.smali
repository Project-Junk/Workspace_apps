.class final Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorLocationMoreSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings$1;->a:Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 114
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Received settings change intent: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenResolutionFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings$1;->a:Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->a(Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;)Lcom/coloros/settings/feature/security/location/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/location/c;->a()V

    return-void
.end method
