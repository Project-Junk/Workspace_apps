.class public final synthetic Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/ColorBrightnessController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;->f$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    iput-object p2, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;->f$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    iget-object v1, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/coloros/systemui/qs/-$$Lambda$ColorBrightnessController$kJh8KHwTTGA33iQKof25CKATeE8;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->lambda$onChanged$0$ColorBrightnessController(Ljava/lang/String;I)V

    return-void
.end method
