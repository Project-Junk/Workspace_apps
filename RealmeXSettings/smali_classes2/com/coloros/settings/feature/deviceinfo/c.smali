.class public final Lcom/coloros/settings/feature/deviceinfo/c;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/c$b;,
        Lcom/coloros/settings/feature/deviceinfo/c$a;
    }
.end annotation


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/settings/feature/deviceinfo/c$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Lorg/a/a/f;

.field d:Ljava/lang/String;

.field e:Lorg/a/a/b;

.field f:I

.field g:Landroid/os/Handler;

.field protected h:Lorg/a/a/g;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/settings/feature/deviceinfo/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/settings/feature/deviceinfo/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/Context;

.field private l:I

.field private m:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->a:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->i:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->j:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->f:I

    .line 92
    iput v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->l:I

    .line 301
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/c$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/c$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/c;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->g:Landroid/os/Handler;

    .line 316
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/c$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/c$2;-><init>(Lcom/coloros/settings/feature/deviceinfo/c;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->m:Landroid/content/ServiceConnection;

    .line 358
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/c$3;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/c$3;-><init>(Lcom/coloros/settings/feature/deviceinfo/c;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->h:Lorg/a/a/g;

    .line 148
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->k:Landroid/content/Context;

    .line 149
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(ILandroid/util/SparseArray;)Lcom/coloros/settings/feature/deviceinfo/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/settings/feature/deviceinfo/c$a;",
            ">;)",
            "Lcom/coloros/settings/feature/deviceinfo/c$a;"
        }
    .end annotation

    .line 210
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/deviceinfo/c$a;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/c$a;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/c$a;-><init>()V

    .line 213
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/c;)V
    .locals 2

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initFiveGServiceState size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1236
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1238
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/c;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/c;I)V
    .locals 4

    .line 2219
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/c;->b(I)Lcom/coloros/settings/feature/deviceinfo/c$a;

    move-result-object v0

    .line 3205
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->j:Landroid/util/SparseArray;

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/deviceinfo/c;->a(ILandroid/util/SparseArray;)Lcom/coloros/settings/feature/deviceinfo/c$a;

    move-result-object v1

    .line 4131
    iget v2, v0, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    iget v3, v1, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/coloros/settings/feature/deviceinfo/c$a;->b:I

    iget v3, v1, Lcom/coloros/settings/feature/deviceinfo/c$a;->b:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/coloros/settings/feature/deviceinfo/c$a;->c:I

    iget v3, v1, Lcom/coloros/settings/feature/deviceinfo/c$a;->c:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 2223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Change in state from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n\tto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FiveGServiceClient"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5125
    iget v2, v0, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    iput v2, v1, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    .line 5126
    iget v2, v0, Lcom/coloros/settings/feature/deviceinfo/c$a;->b:I

    iput v2, v1, Lcom/coloros/settings/feature/deviceinfo/c$a;->b:I

    .line 5127
    iget v2, v0, Lcom/coloros/settings/feature/deviceinfo/c$a;->c:I

    iput v2, v1, Lcom/coloros/settings/feature/deviceinfo/c$a;->c:I

    .line 2227
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/deviceinfo/c$b;

    if-eqz p0, :cond_1

    .line 2229
    invoke-interface {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/c$b;->onStateChanged(Lcom/coloros/settings/feature/deviceinfo/c$a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->m:Landroid/content/ServiceConnection;

    const-string v1, "extphone"

    .line 1045
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 1050
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.qualcomm.qti.internal.telephony"

    const-string v6, "com.qualcomm.qti.internal.telephonycom.qualcomm.qti.internal.telephony.ExtTelephonyServiceImpl"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4, v1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 179
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, " bind service "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    .line 180
    iget v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->f:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->g:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->g:Landroid/os/Handler;

    iget v3, p0, Lcom/coloros/settings/feature/deviceinfo/c;->f:I

    mul-int/lit16 v3, v3, 0x7d0

    add-int/lit16 v3, v3, 0xbb8

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 183
    iget v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->f:I

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 2

    const-string v0, "FiveGServiceClient"

    const-string v1, "unregisterListener "

    .line 164
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 166
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 167
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 168
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->h:Lorg/a/a/g;

    invoke-interface {p1, v1}, Lorg/a/a/f;->a(Lorg/a/a/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "RemoteException while unRegisterCallback"

    .line 172
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(I)Lcom/coloros/settings/feature/deviceinfo/c$a;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->i:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/deviceinfo/c;->a(ILandroid/util/SparseArray;)Lcom/coloros/settings/feature/deviceinfo/c$a;

    move-result-object p1

    return-object p1
.end method

.method final c(I)V
    .locals 4

    const-string v0, "initFiveGServiceState: Exception = "

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mNetworkService="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    if-eqz v1, :cond_0

    const-string v1, "query 5G service state "

    .line 245
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/c;->d(I)V

    .line 249
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    invoke-interface {v1, p1, v3}, Lorg/a/a/f;->i(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object v1

    const-string v3, "query5gConfigInfo result:"

    .line 250
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    invoke-interface {v1, p1, v3}, Lorg/a/a/f;->j(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    const-string v1, "queryNrIconType result:"

    .line 253
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 263
    invoke-static {v2, v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    iget p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->l:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->g:Landroid/os/Handler;

    const/16 v0, 0x401

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->g:Landroid/os/Handler;

    iget v1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->l:I

    mul-int/lit16 v1, v1, 0x7d0

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    iget p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->l:I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 255
    invoke-static {v2, v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "try to re-binder service"

    .line 256
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 257
    iput p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->l:I

    .line 258
    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->b:Z

    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    .line 260
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    .line 261
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/c;->a()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    const-string v1, "FiveGServiceClient"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    if-eqz v0, :cond_0

    const-string v0, "query queryNrSignalStrength "

    .line 275
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    invoke-interface {v0, p1, v2}, Lorg/a/a/f;->g(ILorg/a/a/b;)Lorg/a/a/m;

    move-result-object p1

    const-string v0, "queryNrSignalStrength result:"

    .line 278
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "queryNrSignalStrength"

    .line 280
    invoke-static {v1, v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Can\'t query queryNrSignalStrength "

    .line 283
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
