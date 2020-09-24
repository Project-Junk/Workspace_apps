.class Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$17;
.super Landroid/database/ContentObserver;
.source "AodStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$17;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 351
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$17;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "realme_aod_signature_text"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 353
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$17;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->setSignatureText(Ljava/lang/String;)V

    return-void
.end method
