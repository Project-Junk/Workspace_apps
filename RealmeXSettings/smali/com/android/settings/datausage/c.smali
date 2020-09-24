.class public final Lcom/android/settings/datausage/c;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/c$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/android/settingslib/core/instrumentation/d;

.field public final c:Landroid/net/NetworkPolicyManager;

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/datausage/c$a;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/util/SparseIntArray;

.field private f:Z

.field private g:Z

.field private final h:Landroid/net/INetworkPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    .line 182
    new-instance v0, Lcom/android/settings/datausage/c$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/c$1;-><init>(Lcom/android/settings/datausage/c;)V

    iput-object v0, p0, Lcom/android/settings/datausage/c;->h:Landroid/net/INetworkPolicyListener;

    .line 49
    iput-object p1, p0, Lcom/android/settings/datausage/c;->a:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    .line 51
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/datausage/c;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 104
    iget-object v5, p0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/datausage/c;->f:Z

    return-void
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p3, :cond_1

    .line 88
    iget-object p1, p0, Lcom/android/settings/datausage/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object p3, p0, Lcom/android/settings/datausage/c;->a:Landroid/content/Context;

    const/16 v0, 0x18b

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/settings/datausage/c$a;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/c;->h:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    .line 59
    invoke-interface {p1, v0}, Lcom/android/settings/datausage/c$a;->a(Z)V

    return-void
.end method

.method public final a(I)Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/datausage/c;->a()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method final b()V
    .locals 6

    .line 129
    iget-boolean v0, p0, Lcom/android/settings/datausage/c;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 133
    iget-object v5, p0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/datausage/c;->g:Z

    return-void
.end method

.method public final b(Lcom/android/settings/datausage/c$a;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/android/settings/datausage/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    iget-object v0, p0, Lcom/android/settings/datausage/c;->h:Landroid/net/INetworkPolicyListener;

    invoke-virtual {p1, v0}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/datausage/c;->b()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/datausage/c;->e:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method
