.class public Lcom/android/settings/datetime/TimeChangeListenerMixin;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeListenerMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/datetime/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/f;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->b:Lcom/android/settings/datetime/f;

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->b:Lcom/android/settings/datetime/f;

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Lcom/android/settings/datetime/f;->c()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method