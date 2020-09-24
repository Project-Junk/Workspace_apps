.class final Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMoveProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(IIJ)V
    .locals 0

    .line 69
    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-static {p3}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->a(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)I

    move-result p3

    if-eq p3, p1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Finished with status "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "StorageSettings"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x64

    if-eq p2, p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->a(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->finishAffinity()V

    return-void

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->a:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->a(I)V

    return-void
.end method
