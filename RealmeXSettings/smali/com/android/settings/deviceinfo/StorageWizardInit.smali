.class public Lcom/android/settings/deviceinfo/StorageWizardInit;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardInit.java"


# instance fields
.field private d:Landroid/widget/Button;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->c:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d02f1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setContentView(I)V

    .line 46
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 47
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->e:Z

    const p1, 0x7f1215c9

    .line 49
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->g()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->a(I[Ljava/lang/CharSequence;)V

    const p1, 0x7f0a065f

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->d:Landroid/widget/Button;

    const p1, 0x7f1215c7

    .line 53
    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->c(I[Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->d()V

    .line 55
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->d:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->onNavigateExternal(Landroid/view/View;)V

    return-void

    .line 59
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->e:Z

    if-nez p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->d:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    return-void
.end method

.method public onNavigateExternal(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    const/16 v0, 0x57f

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->b:Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->b:Landroid/os/storage/VolumeInfo;

    .line 79
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 81
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->a:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/storage/StorageManager;->setVolumeInited(Ljava/lang/String;Z)V

    .line 83
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    return-void

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onNavigateInternal(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 97
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    const/16 v0, 0x580

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
