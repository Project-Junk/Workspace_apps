.class public final Lcom/android/ims/g;
.super Ljava/lang/Object;
.source "ImsUt.java"

# interfaces
.implements Lcom/android/ims/ImsUtInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/g$a;
    }
.end annotation


# instance fields
.field final a:Lcom/android/ims/internal/IImsUt;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Registrant;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsUt;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    .line 88
    iput-object p1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    .line 90
    iget-object p1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    new-instance v0, Lcom/android/ims/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/g$a;-><init>(Lcom/android/ims/g;B)V

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsUt;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/ims/g;)Ljava/lang/Object;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Landroid/os/Message;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 16629
    invoke-static {p0, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 16630
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 16638
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 16639
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/ims/g;)Ljava/util/HashMap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method private static b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 613
    :cond_0
    iget-object v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 614
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040437

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 620
    new-instance v2, Lcom/android/ims/ImsException;

    iget p1, p1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-direct {v2, v0, p1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 621
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/android/ims/g;)Landroid/os/Registrant;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/ims/g;->d:Landroid/os/Registrant;

    return-object p0
.end method


# virtual methods
.method public final queryCLIP(Landroid/os/Message;)V
    .locals 5

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCLIP :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 5643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 291
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCLIP()I

    move-result v3

    if-gez v3, :cond_0

    .line 294
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 299
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 301
    :catch_0
    :try_start_3
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 304
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final queryCLIR(Landroid/os/Message;)V
    .locals 5

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCLIR :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 4643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 265
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCLIR()I

    move-result v3

    if-gez v3, :cond_0

    .line 268
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 273
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 275
    :catch_0
    :try_start_3
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 278
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final queryCOLP(Landroid/os/Message;)V
    .locals 5

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCOLP :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 7643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 343
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCOLP()I

    move-result v3

    if-gez v3, :cond_0

    .line 346
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 351
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 353
    :catch_0
    :try_start_3
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 356
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final queryCOLR(Landroid/os/Message;)V
    .locals 5

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCOLR :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 6643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 317
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCOLR()I

    move-result v3

    if-gez v3, :cond_0

    .line 320
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 325
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 327
    :catch_0
    :try_start_3
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 330
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final queryCallBarring(ILandroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/ims/g;->queryCallBarring(ILandroid/os/Message;I)V

    return-void
.end method

.method public final queryCallBarring(ILandroid/os/Message;I)V
    .locals 4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCallBarring :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 1643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p3}, Lcom/android/ims/internal/IImsUt;->queryCallBarringForServiceClass(II)I

    move-result p1

    if-gez p1, :cond_0

    .line 175
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 180
    :cond_0
    :try_start_2
    iget-object p3, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 182
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 185
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCallForward :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImsUt"

    .line 2205
    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", class=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 2643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 2210
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    const/4 v4, 0x1

    invoke-interface {v3, p1, p2, v4}, Lcom/android/ims/internal/IImsUt;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_0

    .line 2213
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p3, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 2218
    :cond_0
    :try_start_2
    iget-object p2, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2220
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p3, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2223
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final queryCallWaiting(Landroid/os/Message;)V
    .locals 5

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryCallWaiting :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 3643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 238
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsUt;->queryCallWaiting()I

    move-result v3

    if-gez v3, :cond_0

    .line 241
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 246
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 248
    :catch_0
    :try_start_3
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p1, v3}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 251
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 128
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/g;->d:Landroid/os/Registrant;

    return-void
.end method

.method public final unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/android/ims/g;->d:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    return-void
.end method

.method public final updateCLIP(ZLandroid/os/Message;)V
    .locals 4

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCLIP :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 13643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 505
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIP(Z)I

    move-result p1

    if-gez p1, :cond_0

    .line 508
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 513
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 515
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 518
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final updateCLIR(ILandroid/os/Message;)V
    .locals 4

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCLIR :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 12643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 478
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIR(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 481
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 486
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 488
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 491
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final updateCOLP(ZLandroid/os/Message;)V
    .locals 4

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCallWaiting :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 15643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 559
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLP(Z)I

    move-result p1

    if-gez p1, :cond_0

    .line 562
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 567
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 569
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 572
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final updateCOLR(ILandroid/os/Message;)V
    .locals 4

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCOLR :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 14643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 532
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLR(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 535
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 540
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 542
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p2, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 545
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 365
    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/g;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V

    return-void
.end method

.method public final updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 376
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move v2, v0

    .line 377
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateCallBarring :: Ut="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cbType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", serviceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", barrList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsUt"

    .line 8643
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 385
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateCallBarring :: Ut="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", serviceClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsUt"

    .line 9643
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_1
    iget-object v1, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v1

    const/16 v2, 0x322

    .line 392
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2, p4, p5}, Lcom/android/ims/internal/IImsUt;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_2

    .line 396
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p3, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 401
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 403
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p3, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 406
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCallForward :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImsUt"

    .line 417
    invoke-static {v1, p3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 10643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 423
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/ims/internal/IImsUt;->updateCallForward(IILjava/lang/String;II)I

    move-result p1

    if-gez p1, :cond_0

    .line 426
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p6, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 431
    :cond_0
    :try_start_2
    iget-object p2, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 433
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p6, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 436
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final updateCallWaiting(ZILandroid/os/Message;)V
    .locals 4

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCallWaiting :: Ut="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUt"

    .line 11643
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/ims/g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x322

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v3, p1, p2}, Lcom/android/ims/internal/IImsUt;->updateCallWaiting(ZI)I

    move-result p1

    if-gez p1, :cond_0

    .line 454
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p3, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 459
    :cond_0
    :try_start_2
    iget-object p2, p0, Lcom/android/ims/g;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 461
    :catch_0
    :try_start_3
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {p3, p1}, Lcom/android/ims/g;->b(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 464
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
