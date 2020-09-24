.class Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$2;
.super Ljava/lang/Object;
.source "ColorQSSecurityText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {v0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$400(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->setCompoundDrawablePadding(I)V

    .line 398
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$400(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    return-void
.end method
