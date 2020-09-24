.class final Lcom/android/settings/datausage/c$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/c;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/c;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/datausage/c$1;->a:Lcom/android/settings/datausage/c;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic a(II)V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/android/settings/datausage/c$1;->a:Lcom/android/settings/datausage/c;

    .line 2157
    invoke-virtual {v0}, Lcom/android/settings/datausage/c;->a()V

    .line 2158
    invoke-virtual {v0}, Lcom/android/settings/datausage/c;->b()V

    .line 2160
    iget-object v1, v0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-nez p2, :cond_0

    .line 2162
    iget-object v3, v0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 2164
    :cond_0
    iget-object v3, v0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-ne p2, v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    if-ne p2, v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    if-eq v5, v3, :cond_5

    move p2, v2

    .line 3145
    :goto_5
    iget-object v5, v0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_5

    .line 3146
    iget-object v5, v0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/c$a;

    invoke-interface {v5, p1, v3}, Lcom/android/settings/datausage/c$a;->a(IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    if-eq v1, v4, :cond_6

    .line 3151
    :goto_6
    iget-object p2, v0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_6

    .line 3152
    iget-object p2, v0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/c$a;

    invoke-interface {p2, p1, v4}, Lcom/android/settings/datausage/c$a;->b(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method private synthetic a(Z)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/settings/datausage/c$1;->a:Lcom/android/settings/datausage/c;

    const/4 v1, 0x0

    .line 1139
    :goto_0
    iget-object v2, v0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1140
    iget-object v2, v0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/c$a;

    invoke-interface {v2, p1}, Lcom/android/settings/datausage/c$a;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Qm5RE9bb5z6l1_-Q47KSkFv0IqU(Lcom/android/settings/datausage/c$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/c$1;->a(Z)V

    return-void
.end method

.method public static synthetic lambda$q80CXaprGc-DTCDEwmLF69StFDw(Lcom/android/settings/datausage/c$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/c$1;->a(II)V

    return-void
.end method


# virtual methods
.method public final onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onRestrictBackgroundChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$c$1$Qm5RE9bb5z6l1_-Q47KSkFv0IqU;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/-$$Lambda$c$1$Qm5RE9bb5z6l1_-Q47KSkFv0IqU;-><init>(Lcom/android/settings/datausage/c$1;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSubscriptionOverride(III)V
    .locals 0

    return-void
.end method

.method public final onUidPoliciesChanged(II)V
    .locals 1

    .line 189
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$c$1$q80CXaprGc-DTCDEwmLF69StFDw;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/datausage/-$$Lambda$c$1$q80CXaprGc-DTCDEwmLF69StFDw;-><init>(Lcom/android/settings/datausage/c$1;II)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUidRulesChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
