.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateProgress.java"


# instance fields
.field private d:I

.field private final e:Landroid/content/pm/PackageManager$MoveCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->e:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->d:I

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->b:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d02f2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->d:I

    const p1, 0x7f08085e

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->b(I)V

    const p1, 0x7f1215d2

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->a(I[Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->b()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->c()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->d()V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->e:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->e:Landroid/content/pm/PackageManager$MoveCallback;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->d:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->d:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v1

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    return-void
.end method
