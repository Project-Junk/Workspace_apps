.class public final synthetic Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$4$ouZ6SMkmINuotB_ta-I9xwxBEuk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$4$ouZ6SMkmINuotB_ta-I9xwxBEuk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$4$ouZ6SMkmINuotB_ta-I9xwxBEuk;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$4$ouZ6SMkmINuotB_ta-I9xwxBEuk;-><init>()V

    sput-object v0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$4$ouZ6SMkmINuotB_ta-I9xwxBEuk;->INSTANCE:Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$4$ouZ6SMkmINuotB_ta-I9xwxBEuk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->lambda$onKeyguardVisibilityChanged$0(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)V

    return-void
.end method
