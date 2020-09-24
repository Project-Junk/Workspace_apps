.class public Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private k:[B

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 904
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 926
    iget v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->g:I

    .line 927
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->k:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;[BI)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 929
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->b:Z

    if-eqz v3, :cond_1

    .line 932
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->j:Ljava/util/List;

    iget-wide v5, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->c:J

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v2, :cond_0

    const-string v0, "ChooseLockPattern"

    const-string v3, "critical: no token returned for known good pattern"

    .line 938
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "hw_auth_token"

    .line 942
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 944
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Intent;)V
    .locals 3

    .line 949
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->l:Z

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 953
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJ",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;[BI)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p8

    .line 913
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 915
    iput-object p7, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->k:[B

    .line 916
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->j:Ljava/util/List;

    .line 917
    iput p8, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->g:I

    .line 919
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->g:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->l:Z

    .line 921
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->c()V

    return-void
.end method
