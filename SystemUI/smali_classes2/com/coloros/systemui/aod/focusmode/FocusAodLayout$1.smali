.class Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "FocusAodLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$1;->this$0:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$1;->this$0:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    invoke-static {p1}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->access$000(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)V

    .line 223
    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$1;->this$0:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->performTimeUpdate()V

    return-void
.end method
