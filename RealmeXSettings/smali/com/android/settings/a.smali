.class public final Lcom/android/settings/a;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Lcom/android/settingslib/core/instrumentation/d;

.field private c:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private d:Lcom/android/settings/a$a;

.field private e:Landroid/os/Handler;

.field private f:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/a$a;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/a$1;-><init>(Lcom/android/settings/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/a;->e:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/settings/a$2;

    new-instance v1, Landroid/os/Handler;

    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/a$2;-><init>(Lcom/android/settings/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/a;->f:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/android/settings/a;->a:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/settings/a;->b:Lcom/android/settingslib/core/instrumentation/d;

    .line 79
    iput-object p3, p0, Lcom/android/settings/a;->d:Lcom/android/settings/a$a;

    .line 81
    new-instance p1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object p2, p0, Lcom/android/settings/a;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/a;->e:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/a;->c:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 82
    iget-object p1, p0, Lcom/android/settings/a;->c:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/a;->d:Lcom/android/settings/a$a;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0, p1}, Lcom/android/settings/a$a;->onAirplaneModeChanged(Z)V

    .line 108
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 109
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    iget-object p1, p0, Lcom/android/settings/a;->a:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/settings/a;->c:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 88
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/a;->f:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const-string v0, "ril.cdma.inecmmode"

    .line 129
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/a;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/a;->a:Landroid/content/Context;

    const/16 v2, 0xb1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 141
    invoke-direct {p0, p2}, Lcom/android/settings/a;->b(Z)V

    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/a;->c()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/a;->c:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/a;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method final c()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/a;->d:Lcom/android/settings/a$a;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/android/settings/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v1

    .line 123
    invoke-interface {v0, v1}, Lcom/android/settings/a$a;->onAirplaneModeChanged(Z)V

    :cond_0
    return-void
.end method
