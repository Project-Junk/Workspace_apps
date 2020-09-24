.class public abstract Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BaseBiologicalLockUsageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;
    }
.end annotation


# static fields
.field protected static final CONFIRM_PASSWORD:I = 0xa

.field protected static final CONFIRM_PASSWORD_WITH_APPS:I = 0x1

.field protected static final CONFIRM_PASSWORD_WITH_FILE:I = 0x2

.field protected static final ENCRYPT_APP_COMFIRM_PASSWORD:I = 0x8

.field protected static final ENCRYPT_FILE_COMFIRM_PASSWORD:I = 0x9

.field protected static final INTENT_FIRST_USE_APP_PROTECT:Ljava/lang/String; = "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

.field protected static final SET_NEW_PASSWORD_WITH_APPS:I = 0x3

.field protected static final SET_NEW_PASSWORD_WITH_FILE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BaseBiologicalLockUsageFragment"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field protected mBiologicalEnabled:Z

.field private mDialogPositiveClicked:Z

.field protected mIsSecure:Z

.field private mPreferenceHighlighted:Z

.field protected mPrivacyPasswordUtils:Lcom/coloros/settings/privacy/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mDialogPositiveClicked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mDialogPositiveClicked:Z

    return p1
.end method

.method private checkPasswordIfneed(Landroid/content/Context;)V
    .locals 10

    if-eqz p1, :cond_2

    .line 217
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 219
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v3

    .line 220
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v4

    const-wide/16 v0, 0x0

    if-eqz v3, :cond_0

    const-string v2, "fingerprint"

    .line 225
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 226
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v0

    :goto_0
    if-eqz v4, :cond_1

    const-string v0, "face"

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    .line 231
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v0

    :cond_1
    move-wide v8, v0

    .line 233
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/coloros/settings/feature/password/a;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZIJJ)V

    :cond_2
    return-void
.end method

.method private launchFromSearchResult()Z
    .locals 3

    .line 240
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ":settings:fragment_args_key"

    .line 242
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method protected enableFingerEncryptApp(ZLcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 130
    invoke-static {p0, p2, p1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->launchEncryptComfirmationActivity(Landroidx/fragment/app/Fragment;IZ)V

    return-void

    .line 133
    :cond_0
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1208d4

    .line 134
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121ab3

    new-instance v2, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;

    invoke-direct {v2, p0, p2}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;-><init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V

    .line 136
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f120491

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 154
    new-instance v0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$3;-><init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 p2, 0x0

    .line 163
    iput-boolean p2, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mDialogPositiveClicked:Z

    .line 164
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 167
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method protected enableFingerEncryptFile(ZLcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->isFileEncryptEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x9

    .line 174
    invoke-static {p0, p2, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->launchFileManagerIntent(Landroidx/fragment/app/Fragment;IZ)V

    return-void

    .line 178
    :cond_0
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1208d5

    .line 179
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121ab4

    new-instance v2, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;

    invoke-direct {v2, p0, p2, p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;-><init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;Landroidx/fragment/app/Fragment;)V

    .line 181
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f120491

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 193
    new-instance v0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$5;

    invoke-direct {v0, p0, p2}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$5;-><init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 p2, 0x0

    .line 202
    iput-boolean p2, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mDialogPositiveClicked:Z

    .line 203
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 206
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method protected abstract isBiologicalEnabled(Landroid/content/Context;)Z
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult requestCode = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BaseBiologicalLockUsageFragment"

    invoke-static {v0, p3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    if-eq p2, p3, :cond_0

    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "finish, CONFIRM_PASSWORD resultCode="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->finish()V

    return-void

    .line 105
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$1;-><init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    if-ne p2, p3, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->onEncryptFileConfirmPassword()V

    return-void

    :pswitch_2
    if-ne p2, p3, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->onEncryptAppConfirmPassword()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    .line 65
    new-instance p1, Lcom/coloros/settings/privacy/a/g;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mPrivacyPasswordUtils:Lcom/coloros/settings/privacy/a/g;

    .line 66
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->launchFromSearchResult()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->checkPasswordIfneed(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected abstract onEncryptAppConfirmPassword()V
.end method

.method protected abstract onEncryptFileConfirmPassword()V
.end method

.method public onResume()V
    .locals 3

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mIsSecure:Z

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->isBiologicalEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mBiologicalEnabled:Z

    .line 77
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mIsSecure:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mBiologicalEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 78
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish, mIsSecure="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mIsSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBiologicalEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mBiologicalEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseBiologicalLockUsageFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->finish()V

    return-void
.end method

.method protected pushUpTransition()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f01006b

    const v2, 0x7f010074

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
