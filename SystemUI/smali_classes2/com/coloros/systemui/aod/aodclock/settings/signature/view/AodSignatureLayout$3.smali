.class Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$3;
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

    .line 328
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$3;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 331
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->performTimeUpdate()V

    return-void
.end method
