.class final Lcom/android/settings/wfd/WifiDisplaySettings$14;
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

    .line 464
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 467
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 468
    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->h(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 469
    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    .line 470
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 471
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->g(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->h(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Lcom/android/settings/wfd/WifiDisplaySettings;II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
