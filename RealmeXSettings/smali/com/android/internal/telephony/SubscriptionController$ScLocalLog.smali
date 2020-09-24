.class Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;
.super Ljava/lang/Object;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScLocalLog"
.end annotation


# instance fields
.field private mLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field private mNow:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    .line 128
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    .line 129
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 146
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    rem-int/lit8 p3, v1, 0xa

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move p3, v1

    goto :goto_0

    .line 151
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized log(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 133
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    if-lez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 135
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    const-string v5, "%m-%d %H:%M:%S"

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
