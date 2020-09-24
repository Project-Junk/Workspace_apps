.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AdvancedPowerUsageDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 51
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "extra_package_name"

    .line 53
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 54
    invoke-static {v4}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "extra_power_usage_percent"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "request_ignore_background_restriction"

    .line 56
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ":settings:fragment_args_key"

    const-string v5, "background_activity"

    .line 57
    invoke-virtual {v2, p1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    const-string p1, "extra_uid"

    .line 61
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 63
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Cannot find package: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "AdvancedPowerDetailActivity"

    invoke-static {v3, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_2
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const v1, 0x7f1202e7

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v2}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x14

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetailActivity;->finish()V

    return-void
.end method
