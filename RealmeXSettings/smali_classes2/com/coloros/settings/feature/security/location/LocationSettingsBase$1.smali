.class final Lcom/coloros/settings/feature/security/location/LocationSettingsBase$1;
.super Landroid/database/ContentObserver;
.source "LocationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/LocationSettingsBase;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/location/LocationSettingsBase;Landroid/os/Handler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase$1;->a:Lcom/coloros/settings/feature/security/location/LocationSettingsBase;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase$1;->a:Lcom/coloros/settings/feature/security/location/LocationSettingsBase;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a()V

    return-void
.end method
