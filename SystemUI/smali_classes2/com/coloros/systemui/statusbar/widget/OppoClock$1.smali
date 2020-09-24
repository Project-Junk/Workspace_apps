.class Lcom/coloros/systemui/statusbar/widget/OppoClock$1;
.super Ljava/lang/Object;
.source "OppoClock.java"

# interfaces
.implements Lcom/coloros/systemui/common/multiluser/IMultiUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/widget/OppoClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/OppoClock;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(I)V
    .locals 2

    .line 82
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoClock;I)V

    .line 84
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-virtual {v1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->getTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoClock$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoClock;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->access$100(Lcom/coloros/systemui/statusbar/widget/OppoClock;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoClock;Ljava/lang/CharSequence;)V

    return-void
.end method
