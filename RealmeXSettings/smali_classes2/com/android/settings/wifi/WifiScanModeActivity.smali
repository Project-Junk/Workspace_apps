.class public Lcom/android/settings/wifi/WifiScanModeActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/DialogFragment;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->a:Landroidx/fragment/app/DialogFragment;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->a(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->a:Landroidx/fragment/app/DialogFragment;

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->a:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1090
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->setResult(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 3

    .line 2083
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, -0x1

    .line 2085
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->setResult(I)V

    .line 2086
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->b:Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "app"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->b:Ljava/lang/String;

    .line 65
    :catch_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->a()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 1076
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->a:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 1078
    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->a:Landroidx/fragment/app/DialogFragment;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->b:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
