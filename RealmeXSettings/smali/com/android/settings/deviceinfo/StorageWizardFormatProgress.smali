.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$b;,
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;
    }
.end annotation


# instance fields
.field private d:Z

.field private e:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->d:Z

    return p0
.end method


# virtual methods
.method public final h()V
    .locals 3

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "format_slow"

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->c:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d02f2

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setContentView(I)V

    .line 1207
    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->a()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setKeepScreenOn(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "format_private"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->d:Z

    const p1, 0x7f1215bb

    .line 60
    new-array v2, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->g()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->a(I[Ljava/lang/CharSequence;)V

    const p1, 0x7f1215ba

    .line 61
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->f()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->b(I[Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->c()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->d()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->e:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    .line 65
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->e:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    if-nez p1, :cond_1

    .line 66
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->e:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    .line 67
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->e:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->e:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 70
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->e:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    return-object v0
.end method
