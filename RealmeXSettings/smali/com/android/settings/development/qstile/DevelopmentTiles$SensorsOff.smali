.class public Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorsOff"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/SensorPrivacyManager;

.field private c:Landroid/app/KeyguardManager;

.field private d:Lcom/android/settingslib/core/instrumentation/d;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 313
    iget-boolean v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->c:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->d:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x63e

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 318
    iput-boolean p1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->e:Z

    .line 319
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->b:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(Z)V

    return-void
.end method

.method protected final a()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->e:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 294
    invoke-super {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->onCreate()V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->a:Landroid/content/Context;

    .line 296
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->a:Landroid/content/Context;

    const-string v1, "sensor_privacy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->b:Landroid/hardware/SensorPrivacyManager;

    .line 298
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->b:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->e:Z

    .line 299
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->d:Lcom/android/settingslib/core/instrumentation/d;

    .line 301
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->a:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->c:Landroid/app/KeyguardManager;

    return-void
.end method