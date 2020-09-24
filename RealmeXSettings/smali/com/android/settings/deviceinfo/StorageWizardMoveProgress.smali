.class public Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveProgress.java"


# instance fields
.field private d:I

.field private final e:Landroid/content/pm/PackageManager$MoveCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->e:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->d:I

    return p0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, -0x8

    if-eq p1, v0, :cond_4

    const/4 v0, -0x5

    if-eq p1, v0, :cond_3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    const v1, 0x7f120b36

    if-eq p1, v0, :cond_0

    .line 1099
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1088
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f120836

    .line 1092
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f12165d

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p1, 0x7f120b49

    .line 1094
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f120dcf

    .line 1090
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->b:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d02f2

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->d:I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->a:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08085e

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->b(I)V

    const v1, 0x7f1215e0

    const/4 v2, 0x1

    .line 51
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->a(I[Ljava/lang/CharSequence;)V

    const v1, 0x7f1215de

    const/4 v3, 0x2

    .line 52
    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->b(I[Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->c()V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->d()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->e:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->e:Landroid/content/pm/PackageManager$MoveCallback;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->d:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->d:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v1

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onDestroy()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->e:Landroid/content/pm/PackageManager$MoveCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    return-void
.end method
