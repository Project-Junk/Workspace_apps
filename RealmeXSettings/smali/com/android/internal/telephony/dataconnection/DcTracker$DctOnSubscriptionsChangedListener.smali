.class Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DctOnSubscriptionsChangedListener"
.end annotation


# instance fields
.field public final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 1

    .line 396
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 397
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "SubscriptionListener.onSubscriptionInfoChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1600(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 413
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoadedOrSubIdChanged()V

    :cond_1
    return-void
.end method
