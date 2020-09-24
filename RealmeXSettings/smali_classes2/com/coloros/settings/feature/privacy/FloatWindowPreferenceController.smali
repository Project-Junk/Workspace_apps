.class public Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "FloatWindowPreferenceController.java"


# static fields
.field private static final KEY_FLOAT_WINDOW:Ljava/lang/String; = "key_float_window"

.field private static final TAG:Ljava/lang/String; = "FloatWindowPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->startFloatWindowManagerActivity()V

    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .line 74
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1205cb

    .line 75
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1205c8

    .line 76
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController$2;-><init>(Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;)V

    const v2, 0x7f1205c9

    .line 77
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController$1;-><init>(Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;)V

    const/high16 v2, 0x1040000

    .line 93
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private startFloatWindowManagerActivity()V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action.coloros.safecenter.FloatWindowListActivity"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.safecenter"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 54
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

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloatWindowPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->startFloatWindowManagerActivity()V

    goto :goto_1

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->showPermissionDialog()V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
