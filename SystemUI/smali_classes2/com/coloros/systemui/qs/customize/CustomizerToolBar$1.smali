.class Lcom/coloros/systemui/qs/customize/CustomizerToolBar$1;
.super Ljava/lang/Object;
.source "CustomizerToolBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/CustomizerToolBar;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar$1;->this$0:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar$1;->this$0:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->access$000(Lcom/coloros/systemui/qs/customize/CustomizerToolBar;)Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->initAdapter()V

    .line 68
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar$1;->this$0:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-static {p1}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->access$000(Lcom/coloros/systemui/qs/customize/CustomizerToolBar;)Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->reset()V

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar$1;->this$0:Lcom/coloros/systemui/qs/customize/CustomizerToolBar;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->dismissPopupMenus()V

    return-void
.end method
