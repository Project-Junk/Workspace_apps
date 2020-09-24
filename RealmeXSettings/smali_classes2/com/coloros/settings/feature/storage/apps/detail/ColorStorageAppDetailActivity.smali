.class public Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailActivity;
.super Lcom/android/settings/SubSettings;
.source "ColorStorageAppDetailActivity.java"


# instance fields
.field private a:Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailActivity;->a:Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    const-class v1, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailActivity;->a()V

    .line 81
    invoke-super {p0}, Lcom/android/settings/SubSettings;->onBackPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ColorStorageAppDetailActivity"

    const-string v1, "onDestroy"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailActivity;->a()V

    .line 88
    invoke-super {p0}, Lcom/android/settings/SubSettings;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailActivity;->a()V

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorStorageAppDetailActivity;->finish()V

    .line 75
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
