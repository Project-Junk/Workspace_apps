.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$7;
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
.field final synthetic a:Lcom/android/settingslib/g$a;

.field final synthetic b:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;Lcom/android/settingslib/g$a;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$7;->b:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$7;->a:Lcom/android/settingslib/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 509
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$7;->b:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$7;->a:Lcom/android/settingslib/g$a;

    invoke-static {p1, p2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    const/4 p1, 0x0

    return p1
.end method
