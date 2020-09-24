.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$6;
.super Ljava/lang/Object;
.source "ColorLocationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


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

    .line 393
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$6;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 396
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$6;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->b(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Location_Scanning_Click"

    const-string v1, "locaiton_scanning_click"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method
