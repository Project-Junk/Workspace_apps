.class public Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "AppPermissionJumpPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPermissionJumpPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNeedTestPermissionController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->mNeedTestPermissionController:Z

    .line 43
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->mContext:Landroid/content/Context;

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->mNeedTestPermissionController:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->startPermissionManagerActivity()V

    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .line 90
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1205cb

    .line 91
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1205c8

    .line 92
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController$2;-><init>(Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;)V

    const v2, 0x7f1205c9

    .line 93
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController$1;-><init>(Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;)V

    const/high16 v2, 0x1040000

    .line 109
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private startPermissionManagerActivity()V
    .locals 2

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oppo.safe.permission.PermissionManagerActivity"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.securitypermission"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "privacy_manage_perms"

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 77
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->mNeedTestPermissionController:Z

    if-eqz v0, :cond_0

    const-string v0, "Permission manager"

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 56
    :try_start_0
    new-instance p1, Landroid/app/OppoActivityManager;

    invoke-direct {p1}, Landroid/app/OppoActivityManager;-><init>()V

    invoke-virtual {p1}, Landroid/app/OppoActivityManager;->isPermissionInterceptEnabled()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppPermissionJumpPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->startPermissionManagerActivity()V

    goto :goto_1

    .line 63
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->mNeedTestPermissionController:Z

    if-eqz p1, :cond_1

    .line 64
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_1

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/AppPermissionJumpPreferenceController;->showPermissionDialog()V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
