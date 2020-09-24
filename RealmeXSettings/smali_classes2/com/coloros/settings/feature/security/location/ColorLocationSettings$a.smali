.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/security/location/ColorLocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput-object p2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;->b:Ljava/lang/String;

    .line 686
    iput-object p3, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;->c:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 692
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 693
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;->b:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v2, 0x7f1201f8

    .line 1063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 696
    const-class v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 697
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 698
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$a;->c:Landroid/os/UserHandle;

    .line 699
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/UserHandle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x3f

    .line 700
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 701
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method
