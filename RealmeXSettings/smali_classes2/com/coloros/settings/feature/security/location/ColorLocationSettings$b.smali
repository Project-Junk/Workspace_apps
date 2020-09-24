.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$b;
.super Ljava/lang/Object;
.source "ColorLocationSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/ColorLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/dashboard/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V
    .locals 0

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$b;->a:Landroid/content/Context;

    .line 718
    iput-object p2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$b;->b:Lcom/android/settings/dashboard/f;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 724
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$b;->b:Lcom/android/settings/dashboard/f;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$b;->a:Landroid/content/Context;

    .line 725
    invoke-static {v0}, Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;->getLocationSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
