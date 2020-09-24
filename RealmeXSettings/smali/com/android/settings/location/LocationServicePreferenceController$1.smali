.class final Lcom/android/settings/location/LocationServicePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationServicePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationServicePreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/location/LocationServicePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationServicePreferenceController;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController$1;->a:Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "LocationServicePrefCtrl"

    const/4 v0, 0x3

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Received settings change intent: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController$1;->a:Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-static {p1}, Lcom/android/settings/location/LocationServicePreferenceController;->a(Lcom/android/settings/location/LocationServicePreferenceController;)Lcom/android/settings/location/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/location/b;->a()V

    return-void
.end method
