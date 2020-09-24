.class final Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment$1;
.super Ljava/lang/Object;
.source "RealmeStorageDashboardFragment.java"

# interfaces
.implements Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment$1;->a:Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment$1;->a:Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)Lcom/coloros/settings/feature/storage/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/controller/a;->a(IJ)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment$1;->a:Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->a(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)Lcom/coloros/settings/feature/storage/controller/a;

    move-result-object v0

    .line 1298
    iput-object p1, v0, Lcom/coloros/settings/feature/storage/controller/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment$1;->a:Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;->b(Lcom/coloros/settings/feature/storage/RealmeStorageDashboardFragment;)Lcom/coloros/settings/feature/storage/controller/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/controller/c;->a(Ljava/util/List;)V

    return-void
.end method
