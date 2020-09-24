.class Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$3;
.super Landroid/database/ContentObserver;
.source "ClockFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;Landroid/os/Handler;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$3;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$3;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$600(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)V

    return-void
.end method
