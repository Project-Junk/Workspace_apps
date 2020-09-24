.class final Lcom/android/settings/wfd/WifiDisplaySettings$c;
.super Landroidx/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wfd/WifiDisplaySettings;

.field private final b:Landroid/hardware/display/WifiDisplay;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$c;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 746
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 748
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$c;->b:Landroid/hardware/display/WifiDisplay;

    .line 749
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$c;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "com.android.internal.R.string.wireless_display_route_description"

    .line 750
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$c;->setSummary(Ljava/lang/CharSequence;)V

    .line 751
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$c;->setEnabled(Z)V

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$c;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 753
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$c;->setOrder(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$c;->setOrder(I)V

    const p1, 0x7f12197b

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$c;->setSummary(I)V

    .line 758
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$c;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 763
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$c;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$c;->b:Landroid/hardware/display/WifiDisplay;

    invoke-static {p1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->b(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    const/4 p1, 0x1

    return p1
.end method
