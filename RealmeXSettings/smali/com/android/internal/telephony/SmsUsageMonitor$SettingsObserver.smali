.class Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 223
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->mContext:Landroid/content/Context;

    .line 224
    iput-object p3, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->mEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 230
    iget-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->mEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "sms_short_code_confirmation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
