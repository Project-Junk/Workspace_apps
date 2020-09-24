.class public final synthetic Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$1$3Pj7yZCDYZN1ZxifQnB3Ipirc4Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$1$3Pj7yZCDYZN1ZxifQnB3Ipirc4Y;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$1$3Pj7yZCDYZN1ZxifQnB3Ipirc4Y;->f$0:I

    check-cast p1, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->lambda$onPageScrollStateChanged$0(ILcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)V

    return-void
.end method
