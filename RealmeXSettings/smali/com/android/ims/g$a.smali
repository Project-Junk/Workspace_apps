.class final Lcom/android/ims/g$a;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/g;


# direct methods
.method private constructor <init>(Lcom/android/ims/g;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/g;B)V
    .locals 0

    .line 657
    invoke-direct {p0, p1}, Lcom/android/ims/g$a;-><init>(Lcom/android/ims/g;)V

    return-void
.end method


# virtual methods
.method public final onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->c(Lcom/android/ims/g;)Landroid/os/Registrant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->c(Lcom/android/ims/g;)Landroid/os/Registrant;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1

    .line 710
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 712
    iget-object p2, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p2}, Lcom/android/ims/g;->a(Lcom/android/ims/g;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/android/ims/g;->a(Landroid/os/Message;Ljava/lang/Object;)V

    .line 714
    iget-object p3, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p3}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 1

    .line 724
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 726
    iget-object p2, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p2}, Lcom/android/ims/g;->a(Lcom/android/ims/g;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/android/ims/g;->a(Landroid/os/Message;Ljava/lang/Object;)V

    .line 728
    iget-object p3, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p3}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1

    .line 738
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 740
    iget-object p2, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p2}, Lcom/android/ims/g;->a(Lcom/android/ims/g;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/android/ims/g;->a(Landroid/os/Message;Ljava/lang/Object;)V

    .line 742
    iget-object p3, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p3}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 1

    .line 686
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 688
    iget-object p2, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p2}, Lcom/android/ims/g;->a(Lcom/android/ims/g;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/android/ims/g;->a(Landroid/os/Message;Ljava/lang/Object;)V

    .line 690
    iget-object p3, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p3}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 696
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 698
    iget-object p2, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p2}, Lcom/android/ims/g;->a(Lcom/android/ims/g;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/android/ims/g;->a(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 700
    iget-object p3, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p3}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 673
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 675
    iget-object p2, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p2}, Lcom/android/ims/g;->a(Lcom/android/ims/g;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/android/ims/g;->a(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 677
    iget-object p3, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p3}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 1

    .line 663
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 665
    iget-object p2, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {p2}, Lcom/android/ims/g;->a(Lcom/android/ims/g;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Lcom/android/ims/g;->a(Landroid/os/Message;)V

    .line 667
    iget-object v0, p0, Lcom/android/ims/g$a;->a:Lcom/android/ims/g;

    invoke-static {v0}, Lcom/android/ims/g;->b(Lcom/android/ims/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
