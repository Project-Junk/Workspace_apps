.class Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;
.super Ljava/lang/Object;
.source "EnvelopeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/EnvelopeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserEnvelopeRecord"
.end annotation


# instance fields
.field private mCount:I

.field private mKey:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mLockScreenVisibility:I

.field private mNotificationID:I

.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;ILjava/lang/String;I)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mLock:Ljava/lang/Object;

    .line 412
    iput-object p3, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mKey:Ljava/lang/String;

    .line 413
    iput p2, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mNotificationID:I

    .line 414
    iput p4, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mLockScreenVisibility:I

    const/4 p1, 0x1

    .line 415
    iput p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mCount:I

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;)I
    .locals 0

    .line 404
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->getNotificationID()I

    move-result p0

    return p0
.end method

.method private getNotificationID()I
    .locals 0

    .line 439
    iget p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mNotificationID:I

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    iget p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mCount:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 427
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLockScreenVisibility()I
    .locals 0

    .line 443
    iget p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mLockScreenVisibility:I

    return p0
.end method

.method public increaseCount()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget v1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mCount:I

    .line 421
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setLockScreenVisibility(I)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$UserEnvelopeRecord;->mLockScreenVisibility:I

    return-void
.end method
