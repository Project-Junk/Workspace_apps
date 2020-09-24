.class Lcom/coloros/systemui/stackdivider/DividerMenu$4;
.super Ljava/lang/Object;
.source "DividerMenu.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/stackdivider/DividerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerMenu;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$4;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$4;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/DividerMenu;->access$700(Lcom/coloros/systemui/stackdivider/DividerMenu;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
