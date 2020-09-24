.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->c:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d02f0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setContentView(I)V

    const p1, 0x7f1215e4    # 1.9418095E38f

    const/4 v0, 0x1

    .line 36
    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->g()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->a(I[Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->e()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "migrate_skip"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1215e6

    .line 41
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->f()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->b(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1215e7

    const/4 v1, 0x2

    .line 44
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->f()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->g()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->b(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f1215e5

    .line 48
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->f()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->b(I[Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f120855

    .line 52
    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->d(I[Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->c()V

    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finishAffinity()V

    return-void
.end method
