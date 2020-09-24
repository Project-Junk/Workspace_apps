.class final Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;
.super Lcom/coloros/settings/utils/be;
.source "OthersStorageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V
    .locals 0

    .line 847
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 2

    .line 844
    check-cast p2, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    if-eqz p2, :cond_2

    .line 1855
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    const-string v1, "OthersStorageViewActivity"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "handleMessage MSG_SHOW_DELETE_DIALOG"

    .line 1861
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    goto :goto_0

    :cond_1
    const-string p1, "handleMessage MSG_DELETE_DATA_COMPLETE"

    .line 1857
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-static {p2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
