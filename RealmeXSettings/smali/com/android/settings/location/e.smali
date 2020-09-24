.class public abstract Lcom/android/settings/location/e;
.super Lcom/android/settingslib/core/a;
.source "LocationBasePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/location/LocationEnabler$a;


# instance fields
.field protected final d:Landroid/os/UserManager;

.field protected final e:Lcom/android/settings/location/LocationEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/location/e;->d:Landroid/os/UserManager;

    .line 36
    new-instance v0, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$a;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/location/e;->e:Lcom/android/settings/location/LocationEnabler;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
