.class final Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "NotifyOpenNetworksPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;

.field private final b:Landroid/net/Uri;

.field private final c:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->a:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "wifi_networks_available_notification_on"

    .line 108
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->b:Landroid/net/Uri;

    .line 115
    iput-object p2, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->c:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->b:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 122
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 128
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->a:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;

    iget-object p2, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
