.class Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;
.super Landroid/os/Handler;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingsObserverHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    .line 236
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-string p1, "sms_short_code_confirmation"

    .line 239
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
