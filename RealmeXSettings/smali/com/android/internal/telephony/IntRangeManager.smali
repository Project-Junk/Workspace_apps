.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    return-void
.end method

.method private populateAllClientRanges()V
    .locals 9

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 638
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 640
    iget-object v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 642
    iget-object v6, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 643
    iget v7, v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v6, v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v6, v8}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 625
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 627
    iget v2, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iget v1, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 12

    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_12

    .line 443
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 444
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v4, :cond_0

    .line 445
    monitor-exit p0

    return v1

    .line 446
    :cond_0
    :try_start_1
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v4, :cond_11

    .line 449
    iget-object v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 452
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 454
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 455
    iget v4, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v4, p1, :cond_2

    iget p1, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne p1, p2, :cond_2

    iget-object p1, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 458
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 460
    monitor-exit p0

    return v6

    .line 463
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    monitor-exit p0

    return v1

    .line 467
    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    const/high16 v7, -0x80000000

    move v8, v7

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_11

    .line 482
    :try_start_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 483
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v10, p1, :cond_f

    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v10, p2, :cond_f

    iget-object v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v10, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    add-int/lit8 p1, v5, -0x1

    if-ne v7, p1, :cond_6

    .line 486
    iget p1, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ne p1, v8, :cond_4

    .line 489
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 490
    monitor-exit p0

    return v6

    .line 493
    :cond_4
    :try_start_4
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 494
    iput v8, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_5

    .line 496
    monitor-exit p0

    return v6

    .line 498
    :cond_5
    :try_start_5
    invoke-virtual {v4, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 499
    iget p1, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput p1, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 500
    monitor-exit p0

    return v1

    .line 508
    :cond_6
    :try_start_6
    new-instance p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {p1, p0, v3, v7}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    if-nez v7, :cond_8

    .line 516
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget p3, p3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .line 517
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-eq p3, v0, :cond_7

    .line 519
    iput p3, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move p3, v6

    goto :goto_2

    :cond_7
    move p3, v1

    .line 522
    :goto_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget v8, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    goto :goto_3

    :cond_8
    move p3, v1

    .line 529
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v7, v6

    :goto_4
    if-ge v7, v5, :cond_c

    .line 533
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 534
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    add-int/lit8 v11, v8, 0x1

    if-le v10, v11, :cond_9

    .line 536
    iput v8, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 537
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {p1, p0, v9}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    move p3, v6

    goto :goto_5

    .line 540
    :cond_9
    iget v10, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iget v11, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ge v10, v11, :cond_a

    .line 541
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput v10, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 543
    :cond_a
    iget-object v10, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :goto_5
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v10, v8, :cond_b

    .line 546
    iget v8, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    if-ge v8, p2, :cond_d

    .line 553
    iput v8, p1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move p3, v6

    .line 555
    :cond_d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 559
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    if-eqz p3, :cond_e

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result p1

    if-nez p1, :cond_e

    .line 562
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 563
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 564
    monitor-exit p0

    return v1

    .line 567
    :cond_e
    monitor-exit p0

    return v6

    .line 570
    :cond_f
    :try_start_7
    iget v10, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v10, v8, :cond_10

    .line 571
    iget v8, v9, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 578
    :cond_12
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 11

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return v2

    .line 204
    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_20

    .line 209
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 210
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-lt p1, v5, :cond_2

    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v5, :cond_2

    .line 215
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    monitor-exit p0

    return v2

    :cond_2
    add-int/lit8 v5, p1, -0x1

    .line 217
    :try_start_2
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ne v5, v6, :cond_8

    add-int/2addr v3, v2

    const/4 v5, 0x0

    if-ge v3, v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 224
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v3, v2

    if-gt v3, p2, :cond_4

    .line 226
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v3, :cond_3

    .line 228
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_3
    move v3, p2

    goto :goto_1

    :cond_4
    move v3, p2

    move-object v0, v5

    .line 235
    :goto_1
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 236
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 237
    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    if-eqz v0, :cond_6

    .line 241
    iget p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iget p2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-ge p1, p2, :cond_5

    .line 243
    iget p1, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 245
    :cond_5
    iget-object p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object p2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :cond_6
    monitor-exit p0

    return v2

    .line 250
    :cond_7
    monitor-exit p0

    return v1

    .line 252
    :cond_8
    :try_start_3
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge p1, v5, :cond_16

    add-int/lit8 v5, p2, 0x1

    .line 256
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v5, v6, :cond_a

    .line 259
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    monitor-exit p0

    return v2

    .line 263
    :cond_9
    monitor-exit p0

    return v1

    .line 265
    :cond_a
    :try_start_4
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v6, :cond_c

    .line 268
    iget v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 269
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 270
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    monitor-exit p0

    return v2

    .line 273
    :cond_b
    monitor-exit p0

    return v1

    :cond_c
    add-int/2addr v3, v2

    move v6, v3

    :goto_2
    if-ge v6, v0, :cond_13

    .line 278
    :try_start_5
    iget-object v7, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 279
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-ge v5, v8, :cond_f

    .line 282
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 283
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 284
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 286
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v3

    :goto_3
    if-ge p1, v6, :cond_d

    .line 295
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 296
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 299
    :cond_d
    monitor-exit p0

    return v2

    .line 301
    :cond_e
    monitor-exit p0

    return v1

    .line 303
    :cond_f
    :try_start_6
    iget v8, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v8, :cond_12

    .line 307
    iget v0, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 308
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 309
    iget v0, v7, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 311
    iget-object v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v3

    :goto_4
    if-gt p1, v6, :cond_10

    .line 319
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 320
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 323
    :cond_10
    monitor-exit p0

    return v2

    .line 325
    :cond_11
    monitor-exit p0

    return v1

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 332
    :cond_13
    :try_start_7
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 333
    iput p1, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 334
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 336
    iget-object v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v3

    :goto_5
    if-ge p1, v0, :cond_14

    .line 345
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 346
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 349
    :cond_14
    monitor-exit p0

    return v2

    .line 351
    :cond_15
    monitor-exit p0

    return v1

    :cond_16
    add-int/lit8 v5, p1, 0x1

    .line 354
    :try_start_8
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt v5, v6, :cond_1f

    .line 356
    iget v5, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v5, :cond_17

    .line 359
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 360
    monitor-exit p0

    return v2

    :cond_17
    add-int/lit8 v5, v3, 0x1

    move v7, v3

    move v6, v5

    :goto_6
    if-ge v6, v0, :cond_18

    .line 366
    :try_start_9
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    add-int/lit8 v9, p2, 0x1

    .line 367
    iget v8, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    if-lt v9, v8, :cond_18

    add-int/lit8 v7, v6, 0x1

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_6

    :cond_18
    if-ne v7, v3, :cond_1a

    .line 378
    iget v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 379
    iput p2, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 380
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 381
    monitor-exit p0

    return v2

    .line 383
    :cond_19
    monitor-exit p0

    return v1

    .line 387
    :cond_1a
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 392
    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v3, :cond_1b

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    sub-int/2addr v3, v2

    goto :goto_7

    :cond_1b
    move v3, p2

    .line 395
    :goto_7
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v6, v3, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 396
    iget v1, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    if-gt p2, v1, :cond_1c

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    goto :goto_8

    :cond_1c
    move v0, p2

    .line 397
    :goto_8
    iput v0, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 399
    new-instance v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    move p1, v5

    :goto_9
    if-gt p1, v7, :cond_1d

    .line 407
    iget-object p2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 408
    iget-object p3, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 409
    iget-object p3, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 411
    :cond_1d
    monitor-exit p0

    return v2

    .line 413
    :cond_1e
    monitor-exit p0

    return v1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 421
    :cond_20
    :try_start_b
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 423
    monitor-exit p0

    return v2

    .line 425
    :cond_21
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 0

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 604
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 606
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result p1

    return p1
.end method

.method public updateRanges()Z
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 590
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method
