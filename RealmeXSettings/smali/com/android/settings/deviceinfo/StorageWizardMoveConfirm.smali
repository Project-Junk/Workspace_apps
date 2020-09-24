.class public Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveConfirm.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->onNavigateNext(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "StorageSettings"

    const-string p2, "Failed to confirm credentials"

    .line 118
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->b:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d02f0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setContentView(I)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->e:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->e:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->b:Landroid/os/storage/VolumeInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 65
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->e:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->a:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f08085e

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->b(I)V

    const v2, 0x7f1215dd

    const/4 v3, 0x1

    .line 72
    new-array v4, v3, [Ljava/lang/CharSequence;

    aput-object p1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->a(I[Ljava/lang/CharSequence;)V

    const v2, 0x7f1215dc

    const/4 v4, 0x2

    .line 73
    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p1, v4, v1

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->b(I[Ljava/lang/CharSequence;)V

    const p1, 0x7f120dcc

    .line 75
    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->d(I[Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->c()V

    return-void

    .line 60
    :catch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 4

    .line 82
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 84
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "User "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is currently locked; requesting unlock"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StorageSettings"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1215e1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 86
    invoke-static {p1, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 88
    new-instance v1, Lcom/android/settings/password/b;

    invoke-direct {v1, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p1, v0}, Lcom/android/settings/password/b;->a(Ljava/lang/CharSequence;I)Z

    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->e:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v0

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.content.pm.extra.MOVE_ID"

    .line 100
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    .line 101
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finishAffinity()V

    return-void
.end method