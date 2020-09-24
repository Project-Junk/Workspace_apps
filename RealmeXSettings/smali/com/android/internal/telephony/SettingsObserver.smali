.class public Lcom/android/internal/telephony/SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mUriEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SettingsObserver;->mUriEventMap:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/SettingsObserver;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/internal/telephony/SettingsObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public observe(Landroid/net/Uri;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/SettingsObserver;->mUriEventMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p2, p0, Lcom/android/internal/telephony/SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p2, p1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    const-string p1, "SettingsObserver"

    const-string v0, "Should never be reached."

    .line 66
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/android/internal/telephony/SettingsObserver;->mUriEventMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 73
    iget-object p2, p0, Lcom/android/internal/telephony/SettingsObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 75
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "No matching event to send for URI="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingsObserver"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unobserve()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
