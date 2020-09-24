.class public final Lcom/android/settings/applications/manageapplications/f;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field a:Lcolor/support/v7/app/AlertDialog;

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Landroid/content/pm/IPackageManager;

.field private final d:Landroid/app/INotificationManager;

.field private final e:Landroid/net/NetworkPolicyManager;

.field private final f:Landroid/app/AppOpsManager;

.field private final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/f;->g:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/f;->b:Landroid/content/pm/PackageManager;

    const-string v0, "package"

    .line 61
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/f;->c:Landroid/content/pm/IPackageManager;

    const-string v0, "notification"

    .line 63
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/f;->d:Landroid/app/INotificationManager;

    .line 64
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/f;->e:Landroid/net/NetworkPolicyManager;

    const-string v0, "appops"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/f;->f:Landroid/app/AppOpsManager;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/manageapplications/f;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/f;->b:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/applications/manageapplications/f;)Landroid/app/INotificationManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/f;->d:Landroid/app/INotificationManager;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/applications/manageapplications/f;)Landroid/content/pm/IPackageManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/f;->c:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/applications/manageapplications/f;)Landroid/app/AppOpsManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/f;->f:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/applications/manageapplications/f;)Landroid/net/NetworkPolicyManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/f;->e:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/f;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121236

    .line 90
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121235

    .line 91
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121234

    .line 92
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "resetDialog"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/f;->a()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "resetDialog"

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 108
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    if-eq p2, p1, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance p1, Lcom/android/settings/applications/manageapplications/f$1;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/f$1;-><init>(Lcom/android/settings/applications/manageapplications/f;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/f;->a:Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method
