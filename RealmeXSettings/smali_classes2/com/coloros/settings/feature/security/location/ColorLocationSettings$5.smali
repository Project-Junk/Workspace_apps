.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$5;
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

    .line 324
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$5;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 327
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$5;->a:Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const v1, 0x7f120c1c

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 328
    const-class v0, Lcom/coloros/settings/feature/security/location/LocationMode;

    .line 329
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x3f

    .line 330
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method
