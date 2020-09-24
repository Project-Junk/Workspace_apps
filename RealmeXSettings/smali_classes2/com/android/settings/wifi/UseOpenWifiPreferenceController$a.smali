.class final Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "UseOpenWifiPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final synthetic b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V
    .locals 1

    .line 180
    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;->b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 181
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "network_recommendations_enabled"

    .line 178
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 196
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;->b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->a(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$a;->b:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->b(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
