.class public Lcom/android/settingslib/wifi/WifiTrackerFactory;
.super Ljava/lang/Object;
.source "WifiTrackerFactory.java"


# static fields
.field private static a:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settingslib/wifi/WifiTracker;
    .locals 1
    .param p2    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    sget-object v0, Lcom/android/settingslib/wifi/WifiTrackerFactory;->a:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_0

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method public static setTestingWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 33
    sput-object p0, Lcom/android/settingslib/wifi/WifiTrackerFactory;->a:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method
