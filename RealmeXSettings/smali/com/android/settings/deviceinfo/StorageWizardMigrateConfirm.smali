.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field private d:Lcom/android/settings/deviceinfo/d;


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

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->onNavigateNext(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "StorageSettings"

    const-string p2, "Failed to confirm credentials"

    .line 160
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02f0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setContentView(I)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->e()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b:Landroid/os/storage/VolumeInfo;

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f08085e

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b(I)V

    const p1, 0x7f1215db

    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->g()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->a(I[Ljava/lang/CharSequence;)V

    const p1, 0x7f120d60

    .line 65
    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b(I[Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b()V

    .line 68
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->d:Lcom/android/settings/deviceinfo/d;

    .line 76
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->d:Lcom/android/settings/deviceinfo/d;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v3, -0x1

    const-string v1, "size_bytes"

    .line 1056
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/settings/deviceinfo/d;->a:J

    .line 77
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->d:Lcom/android/settings/deviceinfo/d;

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const p1, 0x7f1215d9

    .line 79
    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->c(I[Ljava/lang/CharSequence;)V

    const p1, 0x7f1215da

    .line 80
    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->d(I[Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "StorageSettings"

    const-string v0, "Missing either source or target volume"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finish()V

    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 2

    .line 85
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    const/16 v1, 0x585

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->c:Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_0

    .line 89
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v1, "migrate_skip"

    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 4

    .line 100
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 101
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 102
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "User "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is currently locked; requesting unlock"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "StorageSettings"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1215e1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v0

    .line 104
    invoke-static {p1, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/android/settings/password/b;

    invoke-direct {v0, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/password/b;->a(Ljava/lang/CharSequence;I)Z

    return-void

    .line 116
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v1

    const/16 v2, 0x584

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.MOVE_ID"

    .line 144
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    return-void

    :catch_0
    const p1, 0x7f12017f

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    return-void

    :catch_1
    move-exception p1

    const-string v0, "storage"

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 120
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    return-void

    .line 129
    :cond_2
    throw p1
.end method
