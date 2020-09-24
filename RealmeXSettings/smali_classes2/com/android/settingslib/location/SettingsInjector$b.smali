.class public final Lcom/android/settingslib/location/SettingsInjector$b;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/android/settingslib/location/a;

.field public final b:Landroidx/preference/Preference;

.field public c:J

.field final synthetic d:Lcom/android/settingslib/location/SettingsInjector;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/location/SettingsInjector;Lcom/android/settingslib/location/a;Landroidx/preference/Preference;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/android/settingslib/location/SettingsInjector$b;->d:Lcom/android/settingslib/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p2, p0, Lcom/android/settingslib/location/SettingsInjector$b;->a:Lcom/android/settingslib/location/a;

    .line 478
    iput-object p3, p0, Lcom/android/settingslib/location/SettingsInjector$b;->b:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 494
    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector$b;->d:Lcom/android/settingslib/location/SettingsInjector;

    iget-object v0, v0, Lcom/android/settingslib/location/SettingsInjector;->a:Landroid/content/Context;

    const-string v1, "activity"

    .line 495
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 496
    iget-object v1, p0, Lcom/android/settingslib/location/SettingsInjector$b;->a:Lcom/android/settingslib/location/a;

    iget-object v1, v1, Lcom/android/settingslib/location/a;->e:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v0

    const-string v1, "SettingsInjector"

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 497
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot start service as user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/location/SettingsInjector$b;->a:Lcom/android/settingslib/location/a;

    iget-object v2, v2, Lcom/android/settingslib/location/a;->e:Landroid/os/UserHandle;

    .line 499
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not running"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 503
    :cond_1
    new-instance v0, Lcom/android/settingslib/location/SettingsInjector$a;

    iget-object v2, p0, Lcom/android/settingslib/location/SettingsInjector$b;->d:Lcom/android/settingslib/location/SettingsInjector;

    .line 1072
    iget-object v2, v2, Lcom/android/settingslib/location/SettingsInjector;->c:Landroid/os/Handler;

    .line 503
    invoke-direct {v0, p0, v2}, Lcom/android/settingslib/location/SettingsInjector$a;-><init>(Lcom/android/settingslib/location/SettingsInjector$b;Landroid/os/Handler;)V

    .line 504
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 506
    iget-object v3, p0, Lcom/android/settingslib/location/SettingsInjector$b;->a:Lcom/android/settingslib/location/a;

    .line 1101
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1102
    iget-object v5, v3, Lcom/android/settingslib/location/a;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/settingslib/location/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "messenger"

    .line 507
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x3

    .line 509
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/location/SettingsInjector$b;->a:Lcom/android/settingslib/location/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": sending update intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/location/SettingsInjector$b;->c:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 514
    iput-wide v0, p0, Lcom/android/settingslib/location/SettingsInjector$b;->c:J

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector$b;->d:Lcom/android/settingslib/location/SettingsInjector;

    iget-object v0, v0, Lcom/android/settingslib/location/SettingsInjector;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/location/SettingsInjector$b;->a:Lcom/android/settingslib/location/a;

    iget-object v1, v1, Lcom/android/settingslib/location/a;->e:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public final b()J
    .locals 4

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 524
    iget-wide v2, p0, Lcom/android/settingslib/location/SettingsInjector$b;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting{setting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/location/SettingsInjector$b;->a:Lcom/android/settingslib/location/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/location/SettingsInjector$b;->b:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
