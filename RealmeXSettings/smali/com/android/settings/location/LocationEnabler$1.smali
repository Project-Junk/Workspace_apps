.class final Lcom/android/settings/location/LocationEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationEnabler;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/location/LocationEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationEnabler;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler$1;->a:Lcom/android/settings/location/LocationEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "LocationEnabler"

    const/4 v0, 0x3

    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Received location mode change intent: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/settings/location/LocationEnabler$1;->a:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p1}, Lcom/android/settings/location/LocationEnabler;->a()V

    return-void
.end method
