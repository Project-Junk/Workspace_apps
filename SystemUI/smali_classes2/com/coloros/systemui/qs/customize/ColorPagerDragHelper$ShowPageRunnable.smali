.class Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;
.super Ljava/lang/Object;
.source "ColorPagerDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowPageRunnable"
.end annotation


# instance fields
.field public nextPage:Z

.field public rv:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;->this$0:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$1;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;-><init>(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;->this$0:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;->nextPage:Z

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->access$100(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 293
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;->this$0:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->access$202(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;Z)Z

    return-void
.end method
