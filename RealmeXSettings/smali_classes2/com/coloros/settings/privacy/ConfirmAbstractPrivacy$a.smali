.class final Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;
.super Landroid/os/CountDownTimer;
.source "ConfirmAbstractPrivacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;IJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 357
    invoke-direct {p0, p3, p4, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 358
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;->a:Ljava/lang/ref/WeakReference;

    .line 359
    iput p2, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;->b:I

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget v1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;->b:I

    invoke-static {v0, v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;I)V

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 368
    div-long/2addr p1, v1

    long-to-int p1, p1

    if-lez p1, :cond_1

    .line 370
    iget p2, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;->b:I

    invoke-virtual {v0, p2, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    :cond_1
    return-void
.end method
