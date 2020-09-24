.class public Lcom/android/internal/telephony/OldTimeServiceHelper;
.super Ljava/lang/Object;
.source "OldTimeServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;
    }
.end annotation


# static fields
.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private mListener:Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    return-void
.end method

.method static isTimeZoneSettingInitializedStatic()Z
    .locals 2

    const-string v0, "persist.sys.timezone"

    .line 177
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static setDeviceTimeZoneStatic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "alarm"

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 187
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "time-zone"

    .line 190
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isTimeDetectionEnabled()Z
    .locals 3

    const/4 v0, 0x1

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    return v0
.end method

.method public isTimeZoneDetectionEnabled()Z
    .locals 3

    const/4 v0, 0x1

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    return v0
.end method

.method public isTimeZoneSettingInitialized()Z
    .locals 1

    .line 111
    invoke-static {}, Lcom/android/internal/telephony/OldTimeServiceHelper;->isTimeZoneSettingInitializedStatic()Z

    move-result v0

    return v0
.end method

.method public setDeviceTime(J)V
    .locals 2

    .line 154
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "time"

    .line 157
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 158
    iget-object p1, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setDeviceTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/OldTimeServiceHelper;->setDeviceTimeZoneStatic(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mListener:Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;

    if-nez v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mListener:Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    .line 78
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/OldTimeServiceHelper$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, p1}, Lcom/android/internal/telephony/OldTimeServiceHelper$1;-><init>(Lcom/android/internal/telephony/OldTimeServiceHelper;Landroid/os/Handler;Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;)V

    const/4 v3, 0x1

    .line 77
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/OldTimeServiceHelper;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone"

    .line 85
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/OldTimeServiceHelper$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4, p1}, Lcom/android/internal/telephony/OldTimeServiceHelper$2;-><init>(Lcom/android/internal/telephony/OldTimeServiceHelper;Landroid/os/Handler;Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;)V

    .line 84
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "listener already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener==null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
