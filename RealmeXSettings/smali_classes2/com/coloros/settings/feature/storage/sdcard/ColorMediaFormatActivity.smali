.class public Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ColorMediaFormatActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Landroid/content/Intent;
    .locals 3

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.exfat.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-class v1, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 56
    :cond_0
    const-class v1, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const-string p0, "android.os.storage.extra.STORAGE_VOLUME"

    .line 58
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string p1, "SD_TYPE"

    .line 59
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "start_from_settings"

    .line 60
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f12134e

    .line 41
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatActivity;->setTitle(I)V

    const p1, 0x7f0d009a

    .line 42
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a02ab

    new-instance v1, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;

    invoke-direct {v1}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;-><init>()V

    .line 46
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
