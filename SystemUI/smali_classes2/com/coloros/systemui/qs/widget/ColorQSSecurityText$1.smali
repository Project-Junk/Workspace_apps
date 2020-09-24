.class Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;
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

    .line 381
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {v0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$200(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {v0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$200(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {v0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$300(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->setVisibility(I)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpdateDisplayState, mFooterTextContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    .line 389
    invoke-static {v1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$200(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIsVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$300(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "ColorQSSecurityText"

    .line 388
    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
