.class public final Lcom/android/settings/network/g;
.super Landroid/database/ContentObserver;
.source "SubscriptionsChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/settings/network/g$a;

.field private c:Landroid/telephony/SubscriptionManager;

.field private d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private e:Landroid/net/Uri;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/g$a;)V
    .locals 1

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 49
    iput-object p1, p0, Lcom/android/settings/network/g;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/network/g;->b:Lcom/android/settings/network/g$a;

    .line 51
    iget-object p1, p0, Lcom/android/settings/network/g;->a:Landroid/content/Context;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/g;->c:Landroid/telephony/SubscriptionManager;

    .line 52
    new-instance p1, Lcom/android/settings/network/g$1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/g$1;-><init>(Lcom/android/settings/network/g;)V

    iput-object p1, p0, Lcom/android/settings/network/g;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const-string p1, "airplane_mode_on"

    .line 58
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/g;->e:Landroid/net/Uri;

    .line 59
    new-instance p1, Lcom/android/settings/network/g$2;

    invoke-direct {p1, p0}, Lcom/android/settings/network/g$2;-><init>(Lcom/android/settings/network/g;)V

    iput-object p1, p0, Lcom/android/settings/network/g;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/network/g;)V
    .locals 0

    .line 1090
    iget-object p0, p0, Lcom/android/settings/network/g;->b:Lcom/android/settings/network/g$a;

    invoke-interface {p0}, Lcom/android/settings/network/g$a;->onSubscriptionsChanged()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/settings/network/g;->c:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/g;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/g;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/network/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/g;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/network/g;->c:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/g;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/network/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/g;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final c()Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/settings/network/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/android/settings/network/g;->e:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/android/settings/network/g;->b:Lcom/android/settings/network/g$a;

    invoke-virtual {p0}, Lcom/android/settings/network/g;->c()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/settings/network/g$a;->onAirplaneModeChanged(Z)V

    :cond_0
    return-void
.end method
