.class Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$2;
.super Ljava/lang/Object;
.source "FocusAodLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 321
    iput-object p1, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$2;->this$0:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$2;->this$0:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->updateAodDozeStateAndStart(I)V

    .line 325
    iget-object p0, p0, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout$2;->this$0:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->access$100(Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/common/AodManager;->releaseWakeLock()V

    return-void
.end method
