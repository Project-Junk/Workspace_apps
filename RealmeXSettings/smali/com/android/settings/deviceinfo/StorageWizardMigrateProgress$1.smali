.class final Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMigrateProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(IIJ)V
    .locals 0

    .line 65
    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-static {p3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->a(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)I

    move-result p3

    if-eq p3, p1, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    .line 68
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 69
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Finished with status "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "StorageSettings"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, -0x64

    if-ne p2, p3, :cond_1

    .line 71
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object p2, p2, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->c:Landroid/os/storage/DiskInfo;

    if-eqz p2, :cond_2

    .line 74
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x40000000    # 2.0f

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p3, p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 79
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    const p3, 0x7f120b36

    invoke-virtual {p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->finishAffinity()V

    return-void

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->a(I)V

    return-void
.end method
