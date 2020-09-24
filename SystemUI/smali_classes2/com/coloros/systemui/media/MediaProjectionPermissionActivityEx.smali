.class public Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;
.super Ljava/lang/Object;
.source "MediaProjectionPermissionActivityEx.java"


# static fields
.field private static final ANOTHER_SYSTEM_SCREEN_RECORDER_PACKAGENAME:Ljava/lang/String; = "com.android.dlna.service"

.field private static final SYSTEM_SCREEN_RECORDER_PACKAGENAME:Ljava/lang/String; = "com.coloros.screenrecorder"

.field private static final TAG:Ljava/lang/String; = "MediaProjectionPermissionActivityEx"

.field private static mInstance:Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;
    .locals 1

    .line 46
    sget-object v0, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->mInstance:Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;

    invoke-direct {v0}, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;-><init>()V

    sput-object v0, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->mInstance:Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;

    .line 49
    :cond_0
    sget-object v0, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->mInstance:Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;

    return-object v0
.end method

.method private getMediaProjectionIntent(Landroid/media/projection/IMediaProjectionManager;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 70
    invoke-interface {p1, p2, p3, p0, p0}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object p0

    .line 72
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 73
    invoke-interface {p0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p2, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public checkIsSystemScreenRecord(Lcom/android/systemui/media/MediaProjectionPermissionActivity;Landroid/media/projection/IMediaProjectionManager;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.coloros.screenrecorder"

    .line 54
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.dlna.service"

    .line 55
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p2, p4, p3}, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->getMediaProjectionIntent(Landroid/media/projection/IMediaProjectionManager;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p2, "MediaProjectionPermissionActivityEx"

    const-string p3, "Error granting projection permission for system record, "

    .line 61
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return v0
.end method

.method public initDialog(Lcom/android/systemui/media/MediaProjectionPermissionActivity;Ljava/lang/CharSequence;Landroid/view/View;)Lcolor/support/v7/app/AlertDialog;
    .locals 1

    .line 83
    new-instance p0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1202ae

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 84
    invoke-virtual {p0, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p2, 0x7f110508

    .line 86
    invoke-virtual {p0, p2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p2, 0x1040000

    .line 87
    invoke-virtual {p0, p2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 88
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setDialogStyle(Lcolor/support/v7/app/AlertDialog;)V
    .locals 0

    const/4 p0, 0x0

    .line 78
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
