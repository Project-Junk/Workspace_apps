.class public abstract Lcom/android/settings/password/SaveChosenLockWorkerBase;
.super Landroidx/fragment/app/Fragment;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SaveChosenLockWorkerBase$a;,
        Lcom/android/settings/password/SaveChosenLockWorkerBase$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/android/internal/widget/LockPatternUtils;

.field protected b:Z

.field protected c:J

.field protected d:Z

.field protected e:J

.field protected f:Z

.field protected g:I

.field public h:Z

.field protected i:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

.field private j:Lcom/android/settings/password/SaveChosenLockWorkerBase$a;

.field private k:Z

.field private l:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->k:Z

    .line 162
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->l:Landroid/content/Intent;

    .line 163
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->j:Lcom/android/settings/password/SaveChosenLockWorkerBase$a;

    if-eqz p1, :cond_0

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->f:Z

    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->l:Landroid/content/Intent;

    invoke-interface {p1, v0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$a;->a(ZLandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    iput p6, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->g:I

    .line 100
    iput-boolean p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->b:Z

    .line 101
    iput-wide p4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->c:J

    .line 103
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->g:I

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->f:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->g:I

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->k:Z

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->l:Landroid/content/Intent;

    return-void
.end method

.method protected final a(Lcom/android/internal/widget/LockPatternUtils;ZZJZJI)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a:Lcom/android/internal/widget/LockPatternUtils;

    .line 121
    iput p9, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->g:I

    .line 123
    iput-boolean p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->b:Z

    .line 124
    iput-wide p4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->c:J

    .line 125
    iput-boolean p6, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->d:Z

    .line 126
    iput-wide p7, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->e:J

    .line 128
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->g:I

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->f:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 133
    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->g:I

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    .line 134
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->g:I

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->k:Z

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->l:Landroid/content/Intent;

    return-void
.end method

.method public final a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->j:Lcom/android/settings/password/SaveChosenLockWorkerBase$a;

    if-ne v0, p1, :cond_0

    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->j:Lcom/android/settings/password/SaveChosenLockWorkerBase$a;

    .line 90
    iget-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->k:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->j:Lcom/android/settings/password/SaveChosenLockWorkerBase$a;

    if-eqz p1, :cond_1

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->f:Z

    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->l:Landroid/content/Intent;

    invoke-interface {p1, v0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$a;->a(ZLandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected final b()Lcom/color/compat/internal/widget/LockPatternUtilsNative;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->i:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->i:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->i:Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->h:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a(Landroid/content/Intent;)V

    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/android/settings/password/SaveChosenLockWorkerBase$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$b;-><init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setRetainInstance(Z)V

    return-void
.end method
