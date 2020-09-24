.class public Lcom/android/systemui/media/MediaProjectionPermissionActivity;
.super Landroid/app/Activity;
.source "MediaProjectionPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"

.field private static final MAX_APP_NAME_SIZE_PX:F = 500.0f

.field private static final TAG:Ljava/lang/String; = "MediaProjectionPermissionActivity"


# instance fields
.field private mDialog:Lcolor/support/v7/app/AlertDialog;

.field private mPackageName:Ljava/lang/String;

.field private mService:Landroid/media/projection/IMediaProjectionManager;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMediaProjectionIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, v0}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object p0

    .line 242
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 243
    invoke-interface {p0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p2, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 225
    :try_start_0
    iget p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "MediaProjectionPermissionActivity"

    const-string v0, "Error granting projection permission"

    .line 228
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_2

    goto :goto_2

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p2, :cond_0

    .line 232
    invoke-virtual {p2}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 235
    throw p1

    .line 231
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_2

    .line 232
    :goto_2
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "MediaProjectionPermissionActivity"

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const-string p1, "media_projection"

    .line 71
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 83
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThemeResId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getThemeResId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Statusbar"

    invoke-static {v4, v0, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiMediaprojectionUi()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-static {}, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->getInstance()Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->checkIsSystemScreenRecord(Lcom/android/systemui/media/MediaProjectionPermissionActivity;Landroid/media/projection/IMediaProjectionManager;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 99
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/media/projection/IMediaProjectionManager;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 100
    iget p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 110
    :cond_2
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 117
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiMediaprojectionUi()Z

    move-result v3

    if-nez v3, :cond_3

    const/high16 v3, 0x42280000    # 42.0f

    .line 118
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 124
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/systemui/util/Utils;->isHeadlessRemoteDisplayProvider(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    const p1, 0x7f110509

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f11050a

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 128
    :cond_4
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    .line 137
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 138
    invoke-static {v6}, Ljava/lang/Character;->getType(I)I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_6

    const/16 v8, 0xf

    if-eq v7, v8, :cond_6

    const/16 v8, 0xe

    if-ne v7, v8, :cond_5

    goto :goto_1

    .line 145
    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_0

    .line 142
    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    :cond_8
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 152
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v0, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f11050b

    .line 156
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 161
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    .line 161
    invoke-virtual {v1, v3, v0, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    const v0, 0x7f11050c

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    :goto_2
    const v1, 0x7f0d0135

    const/4 v2, 0x0

    .line 168
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0207

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiMediaprojectionUi()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 185
    invoke-static {}, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->getInstance()Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1}, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->initDialog(Lcom/android/systemui/media/MediaProjectionPermissionActivity;Ljava/lang/CharSequence;Landroid/view/View;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    goto :goto_3

    .line 187
    :cond_a
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110508

    .line 190
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 191
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    .line 197
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->create()V

    .line 198
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v4}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 200
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/high16 v0, 0x80000

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 205
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiMediaprojectionUi()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 206
    invoke-static {}, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->getInstance()Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/media/MediaProjectionPermissionActivityEx;->setDialogStyle(Lcolor/support/v7/app/AlertDialog;)V

    .line 210
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void

    :catch_0
    move-exception p1

    const-string v1, "Error checking projection permissions"

    .line 105
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void

    :catch_1
    move-exception p1

    const-string v1, "unable to look up package name"

    .line 85
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 216
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
