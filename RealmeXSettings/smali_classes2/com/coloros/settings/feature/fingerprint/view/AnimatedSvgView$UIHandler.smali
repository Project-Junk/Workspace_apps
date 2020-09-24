.class final Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$UIHandler;
.super Lcom/coloros/settings/utils/be;
.source "AnimatedSvgView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final handleMessage(Landroid/os/Message;Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;)V
    .locals 0

    .line 84
    invoke-static {p2, p1}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;->access$000(Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;Landroid/os/Message;)V

    return-void
.end method

.method public final bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p2, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView$UIHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/settings/feature/fingerprint/view/AnimatedSvgView;)V

    return-void
.end method
