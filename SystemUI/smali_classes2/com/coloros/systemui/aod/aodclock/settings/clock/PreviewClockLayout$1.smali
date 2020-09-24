.class Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout$1;
.super Landroid/database/ContentObserver;
.source "PreviewClockLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;Landroid/os/Handler;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 207
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->access$100(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Setting_AodPreviewClockMode"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->access$002(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;I)I

    .line 209
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;I)V

    .line 210
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/settings/clock/PreviewClockLayout;)V

    return-void
.end method
