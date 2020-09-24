.class public final synthetic Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$_GnT5pZGilR0HSo-Ohh64lusq2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$SignatureListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$_GnT5pZGilR0HSo-Ohh64lusq2U;->f$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;

    return-void
.end method


# virtual methods
.method public final signatureChnage()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/-$$Lambda$_GnT5pZGilR0HSo-Ohh64lusq2U;->f$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/PreviewSignatureLayout;->updateSignature()V

    return-void
.end method
