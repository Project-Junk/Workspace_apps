.class Lcom/coloros/systemui/qs/ColorQSBottomImpl$1;
.super Ljava/lang/Object;
.source "ColorQSBottomImpl.java"

# interfaces
.implements Lcom/coloros/systemui/qs/widget/ColorQSPageIndicator$PageIndicatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/ColorQSBottomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/ColorQSBottomImpl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/ColorQSBottomImpl;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl$1;->this$0:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowPageIndicator(Z)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl$1;->this$0:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-static {v0, p1}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->access$002(Lcom/coloros/systemui/qs/ColorQSBottomImpl;Z)Z

    .line 216
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSBottomImpl$1;->this$0:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->access$100(Lcom/coloros/systemui/qs/ColorQSBottomImpl;)V

    return-void
.end method
