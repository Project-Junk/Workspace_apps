.class Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "PreviewBatteryLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "plugged"

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "status"

    .line 146
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "level"

    .line 147
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 148
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    invoke-static {p0, p1, v1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;III)V

    return-void
.end method