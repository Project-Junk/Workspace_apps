.class public Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "SaveLockPatternAndFinishWorker.java"


# static fields
.field private static final l:Ljava/lang/String; = "com.coloros.settings.feature.password.SaveLockPatternAndFinishWorker"


# instance fields
.field j:Z

.field k:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private n:[B

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->k:Z

    return p0
.end method

.method private synthetic d()V
    .locals 8

    const-string v0, "LockSaveAndFinishWorker"

    .line 3141
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->m:Ljava/util/List;

    .line 3142
    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 3143
    new-instance v3, Lcom/coloros/settings/privacy/a/j;

    .line 3144
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/coloros/settings/privacy/a/j;-><init>(Landroid/content/Context;)V

    .line 3145
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->b()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v4

    .line 4074
    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-wide/16 v5, 0x0

    .line 3145
    iget v7, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->g:I

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->verifyPattern([BJI)[B

    move-result-object v1

    .line 3146
    new-instance v4, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;-><init>(Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;Lcom/coloros/settings/privacy/a/j;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lcom/coloros/settings/privacy/a/j;->a([BLcom/coloros/settings/privacy/a/j$a;)V
    :try_end_0
    .catch Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestThrottledException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3164
    invoke-virtual {v1}, Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3163
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "save_rpmb_success"

    .line 133
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$SsVDUvCh_GSvJdY7Wrv-irCer2g(Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 86
    iget v0, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->g:I

    .line 88
    iget-object v1, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->m:Ljava/util/List;

    .line 89
    invoke-static {v1}, Lcom/coloros/settings/utils/ag;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v3, Lcom/coloros/settings/privacy/a/j;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/coloros/settings/privacy/a/j;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->n:[B

    iget v6, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->g:I

    invoke-static {v3, v4, v5, v6}, Lcom/coloros/settings/privacy/a/j;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;[BI)Z

    .line 93
    sget-object v3, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->l:Ljava/lang/String;

    const-string v4, "saveLockPattern_start"

    invoke-static {v3, v4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->b()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v3

    .line 1074
    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 94
    iget-object v5, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->n:[B

    invoke-virtual {v3, v4, v5, v0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->saveLockPattern([B[BI)Z

    move-result v3

    .line 96
    sget-object v4, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->l:Ljava/lang/String;

    const-string v5, "saveLockPattern_end"

    invoke-static {v4, v5}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    sput-object v2, Lcom/coloros/settings/utils/z;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v3, :cond_5

    .line 99
    iget-boolean v4, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->b:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->d:Z

    if-eqz v4, :cond_5

    .line 100
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 101
    iget-boolean v5, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->b:Z

    if-eqz v5, :cond_2

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->b()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v4

    .line 2074
    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 104
    iget-wide v6, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->c:J

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->verifyPattern([BJI)[B

    move-result-object v4
    :try_end_0
    .catch Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_1

    .line 110
    sget-object v5, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->l:Ljava/lang/String;

    const-string v6, "critical: no token returned for known good pattern"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "hw_auth_token"

    .line 113
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-object v4, v5

    .line 116
    :cond_2
    iget-boolean v5, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->d:Z

    if-eqz v5, :cond_4

    .line 119
    :try_start_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->b()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v5

    .line 3074
    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 119
    iget-wide v6, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->e:J

    invoke-virtual {v5, v1, v6, v7, v0}, Lcom/color/compat/internal/widget/LockPatternUtilsNative;->verifyPattern([BJI)[B

    move-result-object v2
    :try_end_1
    .catch Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez v2, :cond_3

    .line 125
    sget-object v0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->l:Ljava/lang/String;

    const-string v1, "critical: no faceToken returned for known good pattern"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "face_hw_auth__token"

    .line 127
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_4
    move-object v2, v4

    .line 131
    :cond_5
    new-instance v0, Lcom/coloros/settings/feature/password/-$$Lambda$SaveLockPatternAndFinishWorker$SsVDUvCh_GSvJdY7Wrv-irCer2g;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/-$$Lambda$SaveLockPatternAndFinishWorker$SsVDUvCh_GSvJdY7Wrv-irCer2g;-><init>(Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 135
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    .line 170
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->o:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/android/internal/widget/LockPatternUtils;ZLjava/util/List;[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Z",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;[BI)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p5

    .line 57
    invoke-virtual/range {v0 .. v6}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 59
    iput-object p4, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->n:[B

    .line 60
    iput-object p3, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->m:Ljava/util/List;

    .line 61
    iput p5, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->g:I

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->g:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->o:Z

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->c()V

    return-void
.end method

.method public final a(Lcom/android/internal/widget/LockPatternUtils;ZZJZJLjava/util/List;[BI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJZJ",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;[BI)V"
        }
    .end annotation

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p11

    .line 72
    invoke-virtual/range {v0 .. v9}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJZJI)V

    move-object/from16 v0, p10

    .line 75
    iput-object v0, v10, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->n:[B

    move-object/from16 v0, p9

    .line 76
    iput-object v0, v10, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->m:Ljava/util/List;

    move/from16 v0, p11

    .line 77
    iput v0, v10, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->g:I

    .line 79
    iget-object v0, v10, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, v10, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->g:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v10, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->o:Z

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->c()V

    return-void
.end method
