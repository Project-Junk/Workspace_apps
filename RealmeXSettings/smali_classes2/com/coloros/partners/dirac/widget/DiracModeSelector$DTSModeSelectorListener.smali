.class Lcom/coloros/partners/dirac/widget/DiracModeSelector$DTSModeSelectorListener;
.super Ljava/lang/Object;
.source "DiracModeSelector.java"

# interfaces
.implements Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/widget/DiracModeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DTSModeSelectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelector;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/widget/DiracModeSelector;Lcom/coloros/partners/dirac/widget/DiracModeSelector;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector$DTSModeSelectorListener;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionUpdated()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector$DTSModeSelectorListener;->this$0:Lcom/coloros/partners/dirac/widget/DiracModeSelector;

    invoke-virtual {v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->invalidate()V

    return-void
.end method
