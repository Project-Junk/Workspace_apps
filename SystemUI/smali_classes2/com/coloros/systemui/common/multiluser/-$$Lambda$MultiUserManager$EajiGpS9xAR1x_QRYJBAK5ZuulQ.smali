.class public final synthetic Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserManager$EajiGpS9xAR1x_QRYJBAK5ZuulQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserManager$EajiGpS9xAR1x_QRYJBAK5ZuulQ;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserManager$EajiGpS9xAR1x_QRYJBAK5ZuulQ;->f$0:I

    check-cast p1, Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->lambda$dispatchSwitched$0(ILcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    return-void
.end method
