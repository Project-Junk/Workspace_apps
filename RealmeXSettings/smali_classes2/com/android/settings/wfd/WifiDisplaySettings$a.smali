.class Lcom/android/settings/wfd/WifiDisplaySettings$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wfd/WifiDisplaySettings;

.field private final b:Landroid/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$a;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 671
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 673
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$a;->b:Landroid/media/MediaRouter$RouteInfo;

    .line 674
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setTitle(Ljava/lang/CharSequence;)V

    .line 675
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setSummary(Ljava/lang/CharSequence;)V

    .line 676
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setEnabled(Z)V

    .line 677
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setOrder(I)V

    .line 679
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f12197a

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setSummary(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f121979

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setSummary(I)V

    goto :goto_0

    .line 685
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setOrder(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 688
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setOrder(I)V

    .line 689
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    const p1, 0x7f12197b

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setSummary(I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f12197c

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setSummary(I)V

    .line 696
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 701
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$a;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$a;->b:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {p1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    const/4 p1, 0x1

    return p1
.end method
