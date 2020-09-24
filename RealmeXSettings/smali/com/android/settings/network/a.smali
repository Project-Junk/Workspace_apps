.class public final Lcom/android/settings/network/a;
.super Landroid/database/ContentObserver;
.source "MobileDataContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/settings/network/a$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static a(I)Landroid/net/Uri;
    .locals 4

    const-string v0, "mobile_data"

    .line 37
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 38
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 1

    .line 57
    invoke-static {p2}, Lcom/android/settings/network/a;->a(I)Landroid/net/Uri;

    move-result-object p2

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(Z)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/network/a;->a:Lcom/android/settings/network/a$a;

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/android/settings/network/a$a;->onMobileDataChanged()V

    :cond_0
    return-void
.end method
