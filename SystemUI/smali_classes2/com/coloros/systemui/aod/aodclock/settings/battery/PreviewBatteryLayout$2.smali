.class Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;Landroid/os/Handler;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;->access$100(Lcom/coloros/systemui/aod/aodclock/settings/battery/PreviewBatteryLayout;)V

    return-void
.end method
