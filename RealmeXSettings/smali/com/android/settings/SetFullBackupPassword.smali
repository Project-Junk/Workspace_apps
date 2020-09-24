.class public Lcom/android/settings/SetFullBackupPassword;
.super Lcom/coloros/settings/NavigateActivity;
.source "SetFullBackupPassword.java"


# instance fields
.field a:Landroid/app/backup/IBackupManager;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/Button;

.field g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/coloros/settings/NavigateActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SetFullBackupPassword$1;-><init>(Lcom/android/settings/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->g:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0d02c9

    return v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->a:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "SetFullBackupPassword"

    const-string p2, "Unable to communicate with backup manager"

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/coloros/settings/NavigateActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "backup"

    .line 89
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->a:Landroid/app/backup/IBackupManager;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SetFullBackupPassword;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->setContentView(I)V

    const p1, 0x7f0a01af

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->b:Landroid/widget/TextView;

    const p1, 0x7f0a0454

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->c:Landroid/widget/TextView;

    const p1, 0x7f0a018f

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->d:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/SetFullBackupPassword;->b()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0a00c7

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->e:Landroid/widget/Button;

    const p1, 0x7f0a00c8

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->f:Landroid/widget/Button;

    .line 104
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
