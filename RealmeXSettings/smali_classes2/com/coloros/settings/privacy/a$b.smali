.class final Lcom/coloros/settings/privacy/a$b;
.super Lcom/coloros/settings/utils/be;
.source "ConfirmBiometricInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/privacy/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/privacy/a;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p2, Lcom/coloros/settings/privacy/a;

    if-eqz p2, :cond_0

    .line 1112
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a;->b(I)V

    :cond_0
    return-void
.end method
