.class public Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "LockSaveAndFinishWorker.java"


# instance fields
.field j:Z

.field k:Z

.field private l:[B

.field private m:[B

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->n:I

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)[B
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->l:[B

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->j:Z

    return p0
.end method

.method private synthetic d()V
    .locals 7

    const-string v0, "LockSaveAndFinishWorker"

    .line 1111
    :try_start_0
    new-instance v1, Lcom/coloros/settings/privacy/a/j;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coloros/settings/privacy/a/j;-><init>(Landroid/content/Context;)V

    .line 1112
    iget-object v2, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->l:[B

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->g:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword([BJI)[B

    move-result-object v2

    .line 1113
    new-instance v3, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;

    invoke-direct {v3, p0, v1}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;-><init>(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;Lcom/coloros/settings/privacy/a/j;)V

    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/privacy/a/j;->a([BLcom/coloros/settings/privacy/a/j$a;)V
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestThrottledException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "save_rpmb_success"

    .line 104
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->k:Z

    return p0
.end method

.method public static synthetic lambda$yMbg_ERUXBHuAQpn6XrNlcCyU_M(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/coloros/settings/privacy/a/j;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/privacy/a/j;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->m:[B

    iget v3, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->g:I

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/privacy/a/j;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;[BI)Z

    const-string v0, "LockSaveAndFinishWorker"

    const-string v1, "saveLockPassword_start"

    .line 66
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->l:[B

    iget-object v3, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->m:[B

    iget v4, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->n:I

    iget v5, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->g:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword([B[BII)Z

    move-result v1

    const-string v2, "saveLockPassword_end"

    .line 68
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->b:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->d:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto :goto_2

    .line 70
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 72
    iget-boolean v4, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->b:Z

    if-eqz v4, :cond_3

    .line 75
    :try_start_0
    iget-object v4, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->l:[B

    iget-wide v6, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->c:J

    iget v8, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->g:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword([BJI)[B

    move-result-object v4
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_2

    const-string v5, "critical: no token returned for known good password."

    .line 81
    invoke-static {v0, v5}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v5, "hw_auth_token"

    .line 83
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 86
    :cond_3
    iget-boolean v4, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->d:Z

    if-eqz v4, :cond_5

    .line 89
    :try_start_1
    iget-object v4, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->l:[B

    iget-wide v6, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->e:J

    iget v8, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->g:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword([BJI)[B

    move-result-object v3
    :try_end_1
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez v3, :cond_4

    const-string v4, "critical: no faceToken returned for known good password."

    .line 95
    invoke-static {v0, v4}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "face_hw_auth__token"

    .line 97
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->l:[B

    const-string v3, "password"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 102
    :goto_2
    new-instance v0, Lcom/coloros/settings/feature/password/-$$Lambda$LockSaveAndFinishWorker$yMbg_ERUXBHuAQpn6XrNlcCyU_M;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/-$$Lambda$LockSaveAndFinishWorker$yMbg_ERUXBHuAQpn6XrNlcCyU_M;-><init>(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/internal/widget/LockPatternUtils;ZZJZJ[B[BII)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p12

    .line 49
    invoke-virtual/range {v0 .. v9}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJZJI)V

    move-object/from16 v0, p9

    .line 52
    iput-object v0, v10, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->l:[B

    move-object/from16 v0, p10

    .line 53
    iput-object v0, v10, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->m:[B

    move/from16 v0, p11

    .line 54
    iput v0, v10, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->n:I

    move/from16 v0, p12

    .line 55
    iput v0, v10, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->g:I

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->c()V

    return-void
.end method
