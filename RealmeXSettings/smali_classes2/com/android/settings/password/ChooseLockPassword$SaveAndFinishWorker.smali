.class public Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private j:[B

.field private k:[B

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1175
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

    .line 1196
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->j:[B

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->k:[B

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->l:I

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->g:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword([B[BII)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1199
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->b:Z

    if-eqz v2, :cond_1

    .line 1202
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->j:[B

    iget-wide v4, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->c:J

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->g:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword([BJI)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_0

    const-string v2, "ChooseLockPassword"

    const-string v3, "critical: no token returned for known good password."

    .line 1208
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "hw_auth_token"

    .line 1212
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-object v1, v2

    .line 1214
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/internal/widget/LockPatternUtils;ZZJ[B[BII)V
    .locals 8

    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p9

    .line 1184
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    move-object v0, p6

    .line 1186
    iput-object v0, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->j:[B

    move-object v0, p7

    .line 1187
    iput-object v0, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->k:[B

    move/from16 v0, p8

    .line 1188
    iput v0, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->l:I

    move/from16 v0, p9

    .line 1189
    iput v0, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->g:I

    .line 1191
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->c()V

    return-void
.end method
