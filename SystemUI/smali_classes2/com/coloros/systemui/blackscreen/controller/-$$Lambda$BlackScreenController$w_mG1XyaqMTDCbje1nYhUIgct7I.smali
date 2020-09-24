.class public final synthetic Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$w_mG1XyaqMTDCbje1nYhUIgct7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$w_mG1XyaqMTDCbje1nYhUIgct7I;->f$0:Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$w_mG1XyaqMTDCbje1nYhUIgct7I;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$w_mG1XyaqMTDCbje1nYhUIgct7I;->f$0:Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BlackScreenController$w_mG1XyaqMTDCbje1nYhUIgct7I;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->lambda$enableBlackScreenMode$0$BlackScreenController(Landroid/content/Context;)V

    return-void
.end method
