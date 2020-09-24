.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$9;
.super Ljava/lang/Object;
.source "ColorLocationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/ColorLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$9;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 670
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 671
    iget-object p2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$9;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-static {p2}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->e(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Landroid/os/UserManager;

    move-result-object p2

    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$9;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    .line 672
    invoke-static {v1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->d(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_share_location"

    .line 671
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 673
    iget-object p2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$9;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-static {p2}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->f(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object p2

    if-eqz p1, :cond_0

    const p1, 0x7f12163e

    goto :goto_0

    :cond_0
    const p1, 0x7f12163c

    :goto_0
    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setSummary(I)V

    const/4 p1, 0x1

    return p1
.end method
