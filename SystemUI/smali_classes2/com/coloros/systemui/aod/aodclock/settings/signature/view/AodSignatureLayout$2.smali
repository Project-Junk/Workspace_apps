.class Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$2;
.super Landroid/content/BroadcastReceiver;
.source "AodSignatureLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "Aod"

    const-string p1, "AodSignatureLayout"

    const-string p2, "wake Aod up"

    .line 235
    invoke-static {p0, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->onDreamingStarted()V

    return-void
.end method
