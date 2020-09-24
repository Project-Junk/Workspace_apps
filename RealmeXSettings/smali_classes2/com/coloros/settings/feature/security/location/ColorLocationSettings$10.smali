.class final Lcom/coloros/settings/feature/security/location/ColorLocationSettings$10;
.super Ljava/lang/Object;
.source "ColorLocationSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/ColorLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 1

    .line 735
    new-instance v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$b;

    invoke-direct {v0, p1, p2}, Lcom/coloros/settings/feature/security/location/ColorLocationSettings$b;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V

    return-object v0
.end method
