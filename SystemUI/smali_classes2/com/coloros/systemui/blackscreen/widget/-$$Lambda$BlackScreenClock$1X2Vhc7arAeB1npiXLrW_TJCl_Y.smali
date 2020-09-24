.class public final synthetic Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$1X2Vhc7arAeB1npiXLrW_TJCl_Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$1X2Vhc7arAeB1npiXLrW_TJCl_Y;->f$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$1X2Vhc7arAeB1npiXLrW_TJCl_Y;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$1X2Vhc7arAeB1npiXLrW_TJCl_Y;->f$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenClock$1X2Vhc7arAeB1npiXLrW_TJCl_Y;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenClock;->lambda$updateTime$1$BlackScreenClock(Ljava/lang/String;)V

    return-void
.end method
