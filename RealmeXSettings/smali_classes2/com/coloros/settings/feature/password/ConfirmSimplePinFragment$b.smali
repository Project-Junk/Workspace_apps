.class final Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$b;
.super Lcom/coloros/settings/utils/be;
.source "ConfirmSimplePinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 675
    check-cast p2, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;

    .line 1682
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/utils/be;->handleMessage(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method
