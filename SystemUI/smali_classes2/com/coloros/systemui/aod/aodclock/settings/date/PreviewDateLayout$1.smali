.class Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout$1;
.super Landroid/database/ContentObserver;
.source "PreviewDateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;Landroid/os/Handler;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/date/PreviewDateLayout;)V

    return-void
.end method
