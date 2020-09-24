.class Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;
.super Ljava/lang/Object;
.source "DiracModeSelectorGallery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "onItemSelected, position="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " ============================== 1"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "DiracModeSelectorGallery"

    invoke-static {p5, p2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iget-object p2, p2, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x101

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {p2, p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$002(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;Landroid/widget/AdapterView;)Landroid/widget/AdapterView;

    .line 141
    invoke-static {}, Lcom/coloros/settings/utils/bh;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$700(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)I

    move-result p1

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$800(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$900(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;I)V

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {p1, p3}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$702(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;I)I

    .line 145
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {p1, p3}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$1000(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;I)Z

    .line 146
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iget-boolean p1, p1, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->mEnableItemSelect:Z

    if-nez p1, :cond_1

    return-void

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ============================== 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$2;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    iget-object p1, p1, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
