.class public final synthetic Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$ColorDecoratorViewPager$toJQ1tbMvRuBm6R46V_wPZCzFl4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$ColorDecoratorViewPager$toJQ1tbMvRuBm6R46V_wPZCzFl4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$ColorDecoratorViewPager$toJQ1tbMvRuBm6R46V_wPZCzFl4;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$ColorDecoratorViewPager$toJQ1tbMvRuBm6R46V_wPZCzFl4;-><init>()V

    sput-object v0, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$ColorDecoratorViewPager$toJQ1tbMvRuBm6R46V_wPZCzFl4;->INSTANCE:Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$ColorDecoratorViewPager$toJQ1tbMvRuBm6R46V_wPZCzFl4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/color/app/ColorAppInfo;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/setting/ColorDecoratorViewPager;->lambda$isMultiWindowMode$0(Lcom/color/app/ColorAppInfo;)Z

    move-result p0

    return p0
.end method
