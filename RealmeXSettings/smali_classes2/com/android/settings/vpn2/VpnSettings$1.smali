.class final Lcom/android/settings/vpn2/VpnSettings$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Lcom/android/settings/widget/GearPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$1;->a:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 2

    .line 412
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_0

    .line 413
    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 414
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$1;->a:Lcom/android/settings/vpn2/VpnSettings;

    .line 1044
    iget-object p1, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;->a:Lcom/android/internal/net/VpnProfile;

    const/4 v1, 0x1

    .line 414
    invoke-static {v0, p1, v1, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->a(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    return-void

    .line 416
    :cond_0
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 417
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 418
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$1;->a:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnSettings;->a(Lcom/android/settings/vpn2/VpnSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$1;->a:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSettings;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/vpn2/AppManagementFragment;->a(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;I)V

    :cond_1
    return-void
.end method
