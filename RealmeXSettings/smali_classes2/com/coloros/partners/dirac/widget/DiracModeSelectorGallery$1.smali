.class Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;
.super Landroid/os/Handler;
.source "DiracModeSelectorGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;
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

    .line 88
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$600(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$400(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$100(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$500(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$500(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$100(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$OnItemChangeListener;->onItemSelected(ILjava/lang/String;)V

    return-void

    .line 97
    :pswitch_2
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$300(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)V

    return-void

    .line 93
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$000(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)Landroid/widget/AdapterView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery$1;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;

    invoke-static {v1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$100(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;->access$200(Lcom/coloros/partners/dirac/widget/DiracModeSelectorGallery;Landroid/widget/AdapterView;I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
