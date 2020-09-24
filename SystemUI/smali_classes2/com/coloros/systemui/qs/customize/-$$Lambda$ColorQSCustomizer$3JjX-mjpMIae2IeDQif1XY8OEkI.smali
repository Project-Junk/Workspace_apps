.class public final synthetic Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3JjX-mjpMIae2IeDQif1XY8OEkI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3JjX-mjpMIae2IeDQif1XY8OEkI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3JjX-mjpMIae2IeDQif1XY8OEkI;

    invoke-direct {v0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3JjX-mjpMIae2IeDQif1XY8OEkI;-><init>()V

    sput-object v0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3JjX-mjpMIae2IeDQif1XY8OEkI;->INSTANCE:Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$3JjX-mjpMIae2IeDQif1XY8OEkI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->lambda$setContainer$0(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
