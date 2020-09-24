.class public Lcom/android/settings/SettingsLicenseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/FragmentActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const v0, 0x7f121449

    const/4 v1, 0x1

    .line 120
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text/html"

    .line 99
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f121448

    .line 100
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "fromSettings"

    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v2, "content"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string p1, "android.intent.category.DEFAULT"

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.htmlviewer"

    .line 108
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsLicenseActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SettingsLicenseActivity"

    const-string v1, "Failed to find viewer"

    .line 114
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Ljava/io/File;

    const-string v0, "/system/etc/NOTICE.html.gz"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->a(Landroid/net/Uri;)V

    return-void

    .line 2076
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance p1, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;

    invoke-direct {p1, p0}, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Ljava/io/File;

    if-eqz p2, :cond_0

    const-string p1, "com.android.settings.files"

    .line 4081
    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 3087
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->a(Landroid/net/Uri;)V

    return-void

    :cond_0
    const-string p1, "SettingsLicenseActivity"

    const-string p2, "Failed to generate."

    .line 3089
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->a()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
