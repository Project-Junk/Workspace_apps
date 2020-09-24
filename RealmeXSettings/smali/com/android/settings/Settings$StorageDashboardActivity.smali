.class public Lcom/android/settings/Settings$StorageDashboardActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageDashboardActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Intent;)V
    .locals 2

    .line 531
    const-class v0, Lcom/coloros/settings/feature/storage/ColorStorageDashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private static synthetic b(Landroid/content/Intent;)V
    .locals 2

    .line 530
    const-class v0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic lambda$Nj_PIADp7wHO4SbCxS72IdMWJRY(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/Settings$StorageDashboardActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$hwTX1mJrOc0NLx1pKVDVarDcwZY(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/Settings$StorageDashboardActivity;->a(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 519
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 527
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 528
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 529
    invoke-static {}, Lcom/coloros/settings/utils/bg$d;->b()Lcom/coloros/settings/utils/bg$d;

    move-result-object v2

    new-instance v3, Lcom/android/settings/-$$Lambda$Settings$StorageDashboardActivity$Nj_PIADp7wHO4SbCxS72IdMWJRY;

    invoke-direct {v3, v1}, Lcom/android/settings/-$$Lambda$Settings$StorageDashboardActivity$Nj_PIADp7wHO4SbCxS72IdMWJRY;-><init>(Landroid/content/Intent;)V

    .line 530
    invoke-virtual {v2, v3}, Lcom/coloros/settings/utils/bg$d;->a(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object v2

    new-instance v3, Lcom/android/settings/-$$Lambda$Settings$StorageDashboardActivity$hwTX1mJrOc0NLx1pKVDVarDcwZY;

    invoke-direct {v3, v1}, Lcom/android/settings/-$$Lambda$Settings$StorageDashboardActivity$hwTX1mJrOc0NLx1pKVDVarDcwZY;-><init>(Landroid/content/Intent;)V

    .line 531
    invoke-virtual {v2, v3}, Lcom/coloros/settings/utils/bg$d;->b(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object v2

    .line 532
    invoke-virtual {v2}, Lcom/coloros/settings/utils/bg$d;->a()V

    const-string v2, ":settings:show_fragment_args"

    .line 533
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 535
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 537
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v3, "intent"

    .line 539
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 540
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method
