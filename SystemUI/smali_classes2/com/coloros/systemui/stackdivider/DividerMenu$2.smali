.class Lcom/coloros/systemui/stackdivider/DividerMenu$2;
.super Ljava/lang/Object;
.source "DividerMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/DividerMenu;->swapDockedStack()V
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

    .line 293
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenu$2;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 296
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;->getInstance()Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/stackdivider/util/ColorActivityManagerWrapper;->swapDockedAndFullscreen()V

    return-void
.end method
