.class final Lcom/android/settings/wfd/WifiDisplaySettings$12;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 412
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 413
    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 414
    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    .line 415
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 416
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$12;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 417
    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result p2

    const-string v0, "wifi_display_wps_config"

    .line 416
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
