.class public Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "ChooseLockBaseFragment.java"

# interfaces
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$a;


# static fields
.field private static a:Z = true


# instance fields
.field private b:Z

.field private c:J

.field private d:Z

.field private e:J

.field private f:I

.field private g:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

.field protected p:I

.field protected q:Lcom/android/internal/widget/LockPatternUtils;

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:[B

.field protected v:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 121
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->g:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    const-string v2, "LockBaseFragment"

    if-eqz v1, :cond_0

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    .line 122
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move/from16 v1, p2

    .line 125
    iput v1, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->f:I

    .line 126
    new-instance v3, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    invoke-direct {v3}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;-><init>()V

    iput-object v3, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->g:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    .line 127
    iget-object v3, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->g:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    invoke-virtual {v3, v0}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "startSaveAndFinish activity is null"

    .line 130
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "extra_require_password"

    .line 134
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v3, 0x0

    const-string v4, "from_fingerprint_reset"

    .line 136
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "from_email_reset"

    .line 138
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 140
    iget-object v3, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->g:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    .line 1027
    iput-boolean v4, v3, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->j:Z

    .line 1031
    iput-boolean v2, v3, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->k:Z

    .line 142
    iget-object v4, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v6, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->b:Z

    iget-wide v7, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->c:J

    iget-boolean v9, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->d:Z

    iget-wide v10, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->e:J

    .line 144
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    iget-object v13, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->u:[B

    iget v15, v0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->p:I

    move/from16 v14, p2

    .line 142
    invoke-virtual/range {v3 .. v15}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJZJ[B[BII)V

    return-void
.end method

.method public final a(ZLandroid/content/Intent;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 151
    iget p2, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->f:I

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;I)V

    .line 1161
    new-instance p2, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.SET_UNLOCK_PASSWORD"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1162
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "setOn"

    .line 1163
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    iget-boolean p2, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->r:Z

    if-eqz p2, :cond_0

    .line 154
    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->d(Landroid/app/Activity;)V

    return-void

    .line 156
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->p:I

    const-string v2, "password"

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->u:[B

    const/4 v2, 0x0

    const-string v3, "has_challenge"

    .line 58
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->b:Z

    const-string v3, "android.app.extra.PASSWORD_COMPLEXITY"

    .line 60
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->v:I

    const-wide/16 v3, 0x0

    const-string v5, "challenge"

    .line 62
    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->c:J

    const-string v5, "has_face_challenge"

    .line 63
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->d:Z

    const-string v5, "face_challenge"

    .line 65
    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->e:J

    if-eqz p1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->u:[B

    if-nez v1, :cond_0

    const-string v1, "current_password"

    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->u:[B

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, -0x1

    const-string v4, "key_ui_mode"

    .line 73
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    :cond_1
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 80
    invoke-static {v0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->t:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->g:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 107
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->g:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->u:[B

    const-string v1, "current_password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050063

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0a020e

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
