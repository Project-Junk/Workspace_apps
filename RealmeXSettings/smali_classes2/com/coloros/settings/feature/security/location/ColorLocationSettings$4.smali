.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;
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

    .line 303
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(I)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    const/4 v1, 0x0

    .line 1126
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a(I)V

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->b(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;Z)V

    return-void
.end method

.method public static synthetic lambda$FWxGs7fShuK7nlCb1Y3jMJ6n7uQ(Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;->a(Z)V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 306
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 307
    iget-object p2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 310
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-static {p2}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->a(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/coloros/settings/feature/security/location/-$$Lambda$ColorLocationSettings$4$FWxGs7fShuK7nlCb1Y3jMJ6n7uQ;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/security/location/-$$Lambda$ColorLocationSettings$4$FWxGs7fShuK7nlCb1Y3jMJ6n7uQ;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings$4;Z)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method
