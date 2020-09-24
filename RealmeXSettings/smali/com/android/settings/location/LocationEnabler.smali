.class public Lcom/android/settings/location/LocationEnabler;
.super Ljava/lang/Object;
.source "LocationEnabler.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationEnabler$a;
    }
.end annotation


# static fields
.field static final a:Landroid/content/IntentFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final b:Landroid/content/Context;

.field final c:Landroid/os/UserManager;

.field final d:Lcom/android/settings/location/LocationEnabler$a;

.field e:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationEnabler;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$a;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/settings/location/LocationEnabler;->d:Lcom/android/settings/location/LocationEnabler$a;

    const-string/jumbo p2, "user"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->c:Landroid/os/UserManager;

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "LocationEnabler"

    const/4 v2, 0x4

    .line 103
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Location mode has been changed"

    .line 104
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->d:Lcom/android/settings/location/LocationEnabler$a;

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->b()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/settings/location/LocationEnabler$a;->a(IZ)V

    :cond_1
    return-void
.end method

.method final a(I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->b()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(I)Lcom/android/settingslib/g$a;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    const-string v1, "no_share_location"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    const-string v1, "no_config_location"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final b()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->c:Landroid/os/UserManager;

    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final c(I)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    const-string v1, "no_share_location"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/settings/location/LocationEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationEnabler$1;-><init>(Lcom/android/settings/location/LocationEnabler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationEnabler;->e:Landroid/content/BroadcastReceiver;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->e:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/location/LocationEnabler;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->a()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/settings/location/LocationEnabler;->e:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
